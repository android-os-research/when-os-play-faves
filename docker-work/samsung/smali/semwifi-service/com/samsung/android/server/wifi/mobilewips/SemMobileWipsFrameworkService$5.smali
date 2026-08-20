.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;
.super Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method public static synthetic $r8$lambda$Rled7ynp-EqldjY-zilIJe1gqC8(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->lambda$getInterfaceName$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;-><init>()V

    return-void
.end method

.method private getInterfaceName()Ljava/lang/String;
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 494
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleNetdCallback(I)Z
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsNetdEvent(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 440
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsNetdEvent(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->setNetdEventStatus(I)Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private isAndroidHotspot()Z
    .registers 8

    .line 515
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 517
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$sfgetHOTSPOT_NETWORK_MASK()[I

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_13
    if-ge v3, v2, :cond_26

    aget v4, v1, v3

    .line 518
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    if-ne v5, v4, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_26
    return v0
.end method

.method private isEnterprise()Z
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 499
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p0

    .line 500
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1f

    const-string p0, "SemMobileWipsFrameworkService"

    const-string v1, "wifiConfig is null"

    .line 502
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 505
    :cond_1f
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 506
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    .line 507
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    .line 508
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xe

    .line 509
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 511
    :cond_4c
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_54

    const/4 v0, 0x1

    :cond_54
    return v0
.end method

.method private synthetic lambda$getInterfaceName$0()Ljava/lang/String;
    .registers 1

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkWiFiAPState()Z
    .registers 4

    const-string v0, "SemMobileWipsFrameworkService"

    const/4 v1, 0x0

    .line 459
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v2, 0xb

    if-eq p0, v2, :cond_13

    const/4 p0, 0x1

    move v1, p0

    .line 460
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi AP State result = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_28

    return v1

    :catchall_28
    :try_start_28
    const-string p0, "Failed to check WiFI AP State"

    .line 462
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2d

    :catchall_2d
    return v1
.end method

.method public getScanResults()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 474
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 476
    sget-object v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 478
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 480
    sget-object v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    .line 481
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4d} :catch_4e

    goto :goto_13

    :catch_4e
    move-exception p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_52
    return-object v0
.end method

.method public invokeMethodBool(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 358
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISemMobileWipsFramework msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemMobileWipsFrameworkService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a

    const/4 v3, 0x1

    if-eq p1, v0, :cond_11e

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_10a

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_db

    const/16 v0, 0x20

    if-eq p1, v0, :cond_c7

    packed-switch p1, :pswitch_data_132

    packed-switch p1, :pswitch_data_146

    packed-switch p1, :pswitch_data_150

    goto/16 :goto_109

    .line 422
    :pswitch_3c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->checkWiFiAPState()Z

    move-result p0

    return p0

    .line 412
    :pswitch_41
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/wifi/WifiScanner;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 414
    :try_start_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/wifi/WifiScanner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner;->isScanning()Z

    move-result p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_54

    return p0

    :catch_54
    :cond_54
    return v1

    .line 403
    :pswitch_55
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 404
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableEphemeralNetwork( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto/16 :goto_109

    :cond_93
    const-string p0, "wifiInfo is null or wifiInfo.getSSID() is null"

    .line 408
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    .line 400
    :pswitch_99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/16 p1, 0x3ea

    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$msendEmptyMessageDelayed(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;II)V

    goto :goto_109

    .line 394
    :pswitch_a1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_af

    .line 395
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setWipsValue(I)I

    .line 397
    :cond_af
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/16 p1, 0x3ee

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$msendEmptyMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    goto :goto_109

    .line 385
    :pswitch_b7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->isAndroidHotspot()Z

    move-result p0

    return p0

    .line 383
    :pswitch_bc
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->isEnterprise()Z

    move-result p0

    return p0

    .line 392
    :pswitch_c1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->handleNetdCallback(I)Z

    move-result p0

    return p0

    :pswitch_c6
    return v1

    .line 369
    :cond_c7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_109

    .line 371
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$msetCurrentBss(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z

    goto :goto_109

    .line 363
    :cond_db
    :try_start_db
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->getFactoryModeName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/wifi/ISemMobileWipsService;->updateWifiChipInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_109
    :goto_109
    return v3

    .line 378
    :cond_10a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11d

    .line 379
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableBeaconInterval(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_11d

    move v1, v3

    :cond_11d
    return v1

    .line 375
    :cond_11e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_131

    .line 376
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableBeaconInterval(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_131

    move v1, v3

    :cond_131
    return v1

    :pswitch_data_132
    .packed-switch 0x2a
        :pswitch_c6
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_bc
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x33
        :pswitch_b7
        :pswitch_a1
        :pswitch_99
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x37
        :pswitch_55
        :pswitch_41
        :pswitch_3c
    .end packed-switch
.end method

.method public invokeMethodStr(I)Ljava/lang/String;
    .registers 3

    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    const/16 p0, 0x29

    if-ne p1, p0, :cond_17

    .line 451
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getSupportCharacterSet()Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public partialScanStart(Landroid/os/Message;)V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v0, p0

    .line 530
    iget-object v0, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmSemHqmManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/os/SemHqmManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
