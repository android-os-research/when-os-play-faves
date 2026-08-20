.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
.super Ljava/lang/Object;
.source "SemWifiApContinuityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;
    }
.end annotation


# static fields
.field private static final CMD_START_ADVERTISE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MHSMcf:Client"

.field private static final TIMEOUT_SEND_MESSAGE:I = 0x1388


# instance fields
.field private isDiscoveryGoingOn:Z

.field private isServiceBinded:Z

.field private mBleWorkHandler:Landroid/os/Handler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mSmartMHSDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApBleScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetisDiscoveryGoingOn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDiscoveryManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMHSDiscoverData(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)[B
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getMHSDiscoverData()[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->registerBR()V

    return-void
.end method

.method private addMcfScanDetails(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_58

    .line 177
    :try_start_5
    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_58

    .line 181
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 184
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 185
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 186
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    .line 187
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    .line 188
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBattery:I

    .line 189
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mNetworkType:I

    .line 190
    iget-object p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iput-object p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    .line 191
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    .line 192
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iput p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    .line 193
    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    iput-boolean p0, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isDataSaverEnabled:Z

    .line 198
    :cond_56
    :goto_56
    monitor-exit v0

    return-void

    :cond_58
    :goto_58
    const-string p0, "MHSMcf:Client"

    const-string p1, "SemWifiApBleScanResult is null"

    .line 178
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    .line 198
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5 .. :try_end_63} :catchall_61

    throw p0
.end method

.method private clearMcfScanDetails()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mSmartMHSDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 137
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 1

    .line 46
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

    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApContinuityClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$McfClientHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    .line 63
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mBleWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getMHSDiscoverData()[B
    .registers 3

    .line 67
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "messagetype"

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private getWifiApBleScanResultFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .registers 23

    move-object/from16 v0, p2

    :try_start_2
    const-string v1, "version"

    .line 146
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "backhaulnetworktype"

    .line 147
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v1, "deviceName"

    .line 148
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "securetype"

    .line 149
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v1, "hiddenssid"

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v1, "batteryLevel"

    .line 151
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "wifimac"

    .line 152
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "datasaver"

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_38

    move/from16 v17, v3

    goto :goto_3a

    :cond_38
    move/from16 v17, v2

    :goto_3a
    const-string v1, "wifi6estandard"

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_44

    const/16 v2, 0x20

    :cond_44
    const-string v1, "wifi6standard"

    .line 161
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_68

    if-ne v0, v3, :cond_50

    const/16 v0, 0x10

    move v6, v0

    goto :goto_51

    :cond_50
    move v6, v2

    .line 170
    :goto_51
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-object v2, v0

    const/4 v4, 0x1

    const/4 v7, 0x2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/16 v15, -0x32

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v9, "Galaxy"

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v19}, Lcom/samsung/android/wifi/SemWifiApBleScanResult;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIZZZ)V

    return-object v0

    :catch_68
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMcfScanDetail()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_7

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->mWifiApBleScanResults:Ljava/util/List;

    return-object p0

    :catchall_7
    move-exception p0

    .line 129
    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public onReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MHSMcf:Client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getWifiApBleScanResultFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->addMcfScanDetails(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    return-void
.end method

.method public registerBR()V
    .registers 1

    return-void
.end method

.method public setServiceBinded(Z)V
    .registers 3

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    if-nez p1, :cond_f

    const-string p1, "MHSMcf:Client"

    const-string v0, "setServiceBinded,false,stopClientAdvertisement"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->stopDiscovery()I

    goto :goto_12

    .line 54
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->getHandler()Landroid/os/Handler;

    :goto_12
    return-void
.end method

.method public startDiscovery()I
    .registers 7

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    if-eqz v0, :cond_6

    const/4 p0, -0x2

    return p0

    .line 210
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isServiceBinded:Z

    const/4 v1, -0x3

    const-string v2, "MHSMcf:Client"

    if-nez v0, :cond_13

    const-string p0, "startDiscovery isServiceBinded false"

    .line 211
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 215
    :cond_13
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    if-nez v0, :cond_28

    const-string p0, "startDiscovery discoveryManager == null"

    .line 217
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_28
    const/4 v3, 0x1

    .line 220
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    .line 221
    new-instance v4, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;)V

    invoke-interface {v0, v4}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z

    move-result v0

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDiscovery return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 232
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    return v2

    .line 235
    :cond_4e
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    return v1
.end method

.method public stopDiscovery()I
    .registers 3

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->clearMcfScanDetails()V

    .line 241
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    .line 242
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    if-nez v1, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 v1, 0x0

    .line 245
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->isDiscoveryGoingOn:Z

    const-string p0, "MHSMcf:Client"

    if-nez v0, :cond_23

    const-string v0, "stopDiscovery discoveryManager == null"

    .line 247
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 250
    :cond_23
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->stopDiscovery()Z

    const-string v0, "stopDiscovery discoveryManager"

    .line 251
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
