.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
.super Ljava/lang/Object;
.source "SemWifiApContinuityClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;,
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;
    }
.end annotation


# static fields
.field private static final GENERATE_CONNECT_WIFI:I = 0xa

.field private static final ST_GATT_CONNECTING:I = 0x1

.field private static final ST_WIFI_CONNECTED:I = 0x3

.field private static final ST_WIFI_CONNECTING:I = 0x2

.field private static final ST_WIFI_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MHSMcf:ClientSession"


# instance fields
.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBssid:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFreq:I

.field private mHidden:I

.field private mIntentWifiState:I

.field private mPassword:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSecurity:I

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field mSmartMHSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHidden(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mHidden:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentWifiState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mIntentWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSecurity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIntentWifiState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mIntentWifiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearVariables(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->clearVariables()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Landroid/net/ConnectivityManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSmartMHSListStatus(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateSmartMHSListStatus(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mIntentWifiState:I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private clearVariables()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 284
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private getClientRequestingData()[B
    .registers 4

    .line 115
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "version"

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "messagetype"

    const/4 v2, 0x3

    .line 118
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "clientsupportedhighband"

    const/4 v2, 0x6

    .line 119
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "wpa3personalsupport"

    .line 120
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "owesupport"

    .line 121
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "MHSMcf:ClientSession"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientRequestingData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_46

    return-object p0

    :catch_46
    move-exception p0

    .line 125
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 1

    .line 111
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    return-object p0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApContinuityClientSession"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    .line 107
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBleWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 92
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private updateSmartMHSListStatus(II)V
    .registers 8

    .line 317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 319
    iget v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    if-ne v3, p1, :cond_9

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-ne p1, v1, :cond_26

    if-ne p2, v3, :cond_26

    const-string v1, "MHSMcf:ClientSession"

    const-string v4, "Smart wifi connected"

    .line 321
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-ne p1, v3, :cond_31

    if-nez p2, :cond_31

    const-string p1, "MHSMcf:ClientSession"

    const-string v1, "Smart wifi disconnected"

    .line 324
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_31
    iput p2, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 330
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_38

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateStateIntent()V

    return-void

    :catchall_38
    move-exception p0

    .line 330
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private updateStateIntent()V
    .registers 3

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.updatemcfhotspot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .registers 14

    const-string p2, "MHSMcf:ClientSession"

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "connectToMcfMHS:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p2

    if-nez p2, :cond_25

    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -1"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 135
    :cond_25
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter p2

    .line 136
    :try_start_28
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_4c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 137
    iget p4, p4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    if-eq p4, p6, :cond_42

    const/4 p6, 0x2

    if-ne p4, p6, :cond_2e

    :cond_42
    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -2"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    .line 139
    monitor-exit p2

    return p0

    .line 142
    :cond_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_af

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getClientRequestingData()[B

    move-result-object p2

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object p3

    .line 146
    invoke-interface {p3, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->sendMessage(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter p1

    .line 150
    :try_start_62
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_68
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_89

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 151
    iget-object p7, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {p7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_68

    const/4 p2, 0x0

    .line 152
    iput-object p2, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 155
    iput p6, p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    goto :goto_8a

    :cond_89
    move p6, p4

    :goto_8a
    if-nez p6, :cond_9e

    .line 160
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    new-instance p3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p3

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_9e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateStateIntent()V

    .line 163
    monitor-exit p1

    return p4

    :catchall_a3
    move-exception p0

    monitor-exit p1
    :try_end_a5
    .catchall {:try_start_62 .. :try_end_a5} :catchall_a3

    throw p0

    :cond_a6
    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "connectToMcfMHS: failed -3"

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :catchall_af
    move-exception p0

    .line 142
    :try_start_b0
    monitor-exit p2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 292
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 293
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v0, "MHSMcf:ClientSession"

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcfConnectedStatus MAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    goto :goto_d

    .line 298
    :cond_46
    monitor-exit v1

    return v0

    :catchall_48
    move-exception p0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 307
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 308
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->clientMAC:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v0, "MHSMcf:ClientSession"

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcfConnectedStatusFromScanResult client MAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    goto :goto_d

    .line 313
    :cond_46
    monitor-exit v1

    return v0

    :catchall_48
    move-exception p0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MHSMcf:ClientSession"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    const-string p1, "ssid"

    .line 174
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSSID:Ljava/lang/String;

    const-string p1, "password"

    .line 175
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mPassword:Ljava/lang/String;

    const-string p1, "mhsfreq"

    .line 176
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mFreq:I

    const-string p1, "securetype"

    .line 177
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSecurity:I

    const-string p1, "hiddenssid"

    .line 178
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mHidden:I

    const-string p1, "mhsbssid"

    .line 179
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_57} :catch_7f

    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    monitor-enter p1

    .line 186
    :try_start_5a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_60
    :goto_60
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 187
    iget v2, v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    if-ne v2, v1, :cond_60

    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mBssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->mhs_bssid:Ljava/lang/String;

    goto :goto_60

    .line 191
    :cond_76
    monitor-exit p1
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_7c

    const/4 p1, 0x2

    .line 192
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->updateSmartMHSListStatus(II)V

    return-void

    :catchall_7c
    move-exception p0

    .line 191
    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0

    :catch_7f
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
