.class public Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiIssueDetector.report"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendDhcpInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "iface"

    .line 533
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 536
    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getIpAddressAndNetworkPrefix(Landroid/net/LinkProperties;)Landroid/util/Pair;

    move-result-object v1

    .line 537
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "ip"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "networkPrefix"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getGatewayAddress(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gw"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getDnsAddresses(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_50

    const/4 v1, 0x0

    .line 542
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "dns1"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6a

    .line 545
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns2"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_63
    const-string v0, "WifiIssueDetector.report"

    const-string v1, "appendDhcpInfo: failed to get network prefix value"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_6a
    :goto_6a
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getDhcpLeaseDuration(Ljava/lang/String;)I

    move-result p0

    const-string v0, "leaseDuration"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method static appendLinkPropertiesInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "iface"

    .line 488
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_ae

    .line 491
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 492
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 493
    invoke-static {v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->filterIpAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_1e

    .line 494
    :cond_35
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1e

    .line 495
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ip"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    const-string v1, "networkPrefix"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    :cond_4b
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 501
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    .line 502
    invoke-static {v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->filterIpAddress(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_53

    .line 503
    :cond_6a
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_53

    .line 504
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-ne v0, v3, :cond_99

    .line 512
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dns1"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    const/4 v3, 0x2

    if-ne v0, v3, :cond_80

    .line 515
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns2"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_a5
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result p0

    const-string v0, "mtu"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_ae
    return-void
.end method

.method private static appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    .line 334
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v1, "netid"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 337
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "bssid_config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_27
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    const-string v1, "numAssoc"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configKey"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const-string v1, "configStatus"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    const-string v1, "isEphemeral"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 344
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const-string v1, "creatorUid"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const-string v1, "creatorName"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_5b
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_67

    .line 348
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const-string v1, "carrierId"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    :cond_67
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7a

    const-string v0, "isPasspoint"

    .line 352
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const-string v2, "fqdn"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_7a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    const-string v3, "configSelectionStatus"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    const-string v3, "configSelectionDisableReason"

    .line 358
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    const-string v2, "hasEverConnected"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v2, :cond_a6

    const-string v0, "useStaticIp"

    .line 363
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    :cond_a6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v0, v1, :cond_bb

    .line 367
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result p1

    const-string v0, "useProxy"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_bb
    return-void
.end method

.method static appendWifiInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 452
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v1, "iface"

    .line 454
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssid"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "bssid"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    const-string v1, "netid"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3d

    const-string p0, "isEphemeral"

    .line 460
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    :cond_3d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p0

    if-eqz p0, :cond_51

    const-string p0, "isPasspoint"

    .line 463
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p0

    const-string v2, "fqdn"

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_51
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, "isOsu"

    .line 467
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    :cond_5c
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "staMac"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method static appendWifiInfoLinkSpeedInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 429
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 432
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    const-string v1, "iface"

    .line 434
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p0

    const-string v1, "linkSpeed"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v1

    double-to-int p0, v1

    const-string v1, "txRetry"

    .line 436
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v1

    double-to-int p0, v1

    const-string v1, "txLost"

    .line 438
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v1

    double-to-int p0, v1

    const-string v1, "txSuccess"

    .line 440
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v0

    double-to-int p0, v0

    const-string v0, "rxSuccess"

    .line 442
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_47
    return-void
.end method

.method static convertNetmaskToCIDR(I)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_e

    shr-int v2, p0, v1

    if-nez v2, :cond_b

    return v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method private static filterIpAddress(Ljava/net/InetAddress;)Z
    .registers 2

    .line 524
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_15

    .line 525
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static getDhcpLeaseDuration(Ljava/lang/String;)I
    .registers 1

    .line 554
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastDhcpResults()Landroid/net/DhcpInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 556
    iget p0, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static getDnsAddresses(Landroid/net/LinkProperties;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 565
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2a

    .line 566
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 569
    :cond_2a
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 571
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_39

    return-object v0

    :cond_39
    return-object v1
.end method

.method private static getGatewayAddress(Landroid/net/LinkProperties;)Ljava/lang/String;
    .registers 3

    .line 579
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 580
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 581
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_23

    .line 582
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 585
    :cond_23
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    return-object v0
.end method

.method private static getIpAddressAndNetworkPrefix(Landroid/net/LinkProperties;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 594
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 595
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_b

    .line 596
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_b

    .line 599
    :cond_2e
    instance-of v0, v3, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3b

    .line 600
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    goto :goto_b

    .line 604
    :cond_3b
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 606
    :cond_4c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getReportDataForAssocReject(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 6

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 310
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bssid"

    .line 311
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "assocReason"

    .line 312
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_19

    .line 314
    invoke-static {v0, p3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_19
    return-object v0
.end method

.method public static getReportDataForAuthFail(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 6

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 298
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bssid"

    .line 299
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wifiManagerReason"

    .line 300
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_19

    .line 302
    invoke-static {v0, p3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_19
    return-object v0
.end method

.method public static getReportDataForBootCompleted(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "\\s+"

    .line 660
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 661
    array-length v0, p0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_62

    const/4 v0, 0x0

    .line 663
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    .line 664
    aget-object v0, p0, v0

    const-string v3, "wifiState"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 665
    aget-object v2, p0, v2

    const-string v3, "wifiScanningState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 666
    aget-object v0, p0, v0

    const-string v3, "autoWifiState"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 667
    aget-object v2, p0, v2

    const-string v3, "favoriteConfigSize"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 668
    aget-object v0, p0, v0

    const-string v3, "snsState"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    aget-object v0, p0, v2

    const-string v2, "snsAggressiveMode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    const/16 v2, 0x8

    .line 671
    aget-object v0, p0, v0

    const-string v3, "adpsState"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    aget-object v0, p0, v2

    const-string v2, "configSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 674
    aget-object p0, p0, v0

    const-string v0, "silentRoamingState"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v0, "buildNumber"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReportDataForCallingSpecificApiFrequently(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apiName"

    .line 289
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "callBy"

    .line 290
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "count"

    .line 291
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForChangeState(Ljava/lang/String;ZLjava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apiName"

    .line 223
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "state"

    .line 224
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "package_name"

    .line 225
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForChangeState(Z)Landroid/os/Bundle;
    .registers 3

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "state"

    .line 217
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForConnectTransition(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 373
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apTypeInt"

    .line 374
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 376
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendLinkPropertiesInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getReportDataForDhcpFailure(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 5

    .line 207
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForL2Connected(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p4, :cond_f

    .line 209
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result p1

    goto :goto_15

    .line 210
    :cond_f
    sget-object p1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result p1

    :goto_15
    const-string p2, "ipAssignment"

    .line 208
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x2

    const-string p2, "dhcpResult"

    .line 211
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static getReportDataForDhcpResult(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 5

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 194
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dhcpResult"

    .line 195
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1a

    .line 197
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result p2

    goto :goto_20

    .line 198
    :cond_1a
    sget-object p2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result p2

    :goto_20
    const-string v1, "ipAssignment"

    .line 196
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2b

    .line 200
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendDhcpInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2b
    return-object v0
.end method

.method public static getReportDataForDisconnectTransition(Ljava/lang/String;ZII)Landroid/os/Bundle;
    .registers 6

    .line 382
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForStateMachine(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iface"

    .line 383
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_on"

    .line 384
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adpsState"

    .line 385
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 388
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getConnectedDurationMin()I

    move-result p1

    const-string p2, "conn_duration"

    .line 387
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    const-string p1, "ipAssignment"

    .line 390
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendLinkPropertiesInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 395
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->clear()V

    :cond_3e
    return-object v0
.end method

.method public static getReportDataForEapMessage(Ljava/lang/String;IILjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 7

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 323
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "eapEvent"

    .line 324
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "status"

    .line 325
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "reasonString"

    .line 326
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1e

    .line 328
    invoke-static {v0, p4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_1e
    return-object v0
.end method

.method public static getReportDataForFwHang(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 150
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForStateMachine(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iface"

    .line 151
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_28

    const-string p0, "\\s+"

    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 154
    array-length p1, p0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1d

    const/4 p1, 0x0

    .line 155
    aget-object p1, p0, p1

    const-string v2, "hangString"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1d
    array-length p1, p0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_28

    .line 158
    aget-object p0, p0, v1

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-object v0
.end method

.method public static getReportDataForHidlDeath(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    .line 171
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForStateMachine(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iface"

    .line 172
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "reason"

    .line 173
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForInitDelay(I)Landroid/os/Bundle;
    .registers 3

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delay_seconds"

    .line 166
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForL2ConnectFail(Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 7

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 247
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bssid"

    .line 248
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "locallyGenerated"

    .line 249
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "disconnectReason"

    .line 250
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_1e

    .line 252
    invoke-static {v0, p4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_1e
    return-object v0
.end method

.method public static getReportDataForL2Connected(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 7

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 233
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "netid"

    .line 234
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bssid"

    .line 235
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "frequency"

    .line 236
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_1e

    .line 238
    invoke-static {v0, p4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_1e
    return-object v0
.end method

.method public static getReportDataForNoInternetUserChoice(ZLandroid/net/wifi/WifiConfiguration;IZZI)Landroid/os/Bundle;
    .registers 8

    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "keepConnection"

    .line 416
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "reason"

    .line 417
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "snsState"

    .line 418
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "snsAggressiveMode"

    .line 419
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "rssi"

    .line 420
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_23

    .line 422
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_23
    return-object v0
.end method

.method public static getReportDataForRoamingEnter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7

    .line 259
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForStateMachine(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iface"

    .line 260
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "roaming_type"

    .line 261
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ssid"

    .line 262
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bssid"

    .line 263
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rssi"

    .line 264
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForScanFail(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    .line 616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_8

    goto :goto_a

    :cond_8
    const-string p0, "InActive"

    :goto_a
    const-string v1, "iface"

    .line 617
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "reason"

    .line 618
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForStateMachine(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "iface"

    .line 180
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastWifiStateMachineStateName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pstate"

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getLastProceedMessageId()I

    move-result v1

    const-string v2, "pmsg"

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getPrevProceedMessageId()I

    move-result p0

    const-string v1, "ppmsg"

    .line 185
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_37
    return-object v0
.end method

.method public static getReportDataForSupplicantStartFail(I)Landroid/os/Bundle;
    .registers 3

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "count"

    .line 145
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForTryToConnect(Ljava/lang/String;Ljava/lang/String;IZIIILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;
    .registers 10

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 273
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bssid"

    .line 274
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wpaState"

    .line 275
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "frequency"

    .line 276
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "screen_on"

    .line 277
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "adpsState"

    .line 278
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "netid"

    .line 279
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p7, :cond_2d

    .line 281
    invoke-static {v0, p7}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->appendWifiConfig(Landroid/os/Bundle;Landroid/net/wifi/WifiConfiguration;)V

    :cond_2d
    return-object v0
.end method

.method public static getReportDataForUnwanted(IIIZZI)Landroid/os/Bundle;
    .registers 8

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "netid"

    .line 403
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "configSelectionDisableReason"

    .line 404
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "reason"

    .line 405
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "snsState"

    .line 406
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "snsAggressiveMode"

    .line 407
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "rssi"

    .line 408
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForW24H(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 610
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "w24h"

    .line 611
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataFromBigDataParamsOfASSO(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6

    const-string v0, "\\s+"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 106
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_54

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iface"

    .line 108
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 111
    aget-object p0, p1, p0

    const-string v1, "assocReason"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    const/4 v1, 0x4

    .line 113
    aget-object p0, p1, p0

    const-string v2, "wpaSecureType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 114
    aget-object v1, p1, v1

    const-string v2, "scanCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 115
    aget-object p0, p1, p0

    const-string v2, "scanCountSameChannel"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 116
    aget-object v1, p1, v1

    const-string v2, "frequency"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 117
    aget-object p0, p1, p0

    const-string v2, "rssi"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    aget-object p0, p1, v1

    const-string p1, "oui"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "netid"

    .line 119
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 122
    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to parse bigdata ASSO args. length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiIssueDetector.report"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReportDataFromBigDataParamsOfDISC(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;
    .registers 12

    const-string v0, "\\s+"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 54
    array-length v0, p1

    const/16 v1, 0x16

    const/16 v2, 0x19

    const/16 v3, 0x18

    if-eq v0, v1, :cond_2f

    array-length v0, p1

    if-eq v0, v3, :cond_2f

    array-length v0, p1

    if-ne v0, v2, :cond_16

    goto :goto_2f

    .line 97
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to parse bigdata DISC args. length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiIssueDetector.report"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_2f
    :goto_2f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "iface"

    .line 56
    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 58
    aget-object v4, p1, v4

    const-string v6, "wpaSecureType"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 59
    aget-object v5, p1, v5

    const-string v6, "wpaState"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 60
    aget-object v4, p1, v4

    const-string v6, "scanCount"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 61
    aget-object v5, p1, v5

    const-string v6, "scanCountSameChannel"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 62
    aget-object v4, p1, v4

    const-string v6, "disconnectReason"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    aget-object v4, p1, v5

    const-string v5, "locallyGenerated"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    const/16 v5, 0x8

    .line 65
    aget-object v4, p1, v4

    const-string v6, "oui"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 66
    aget-object v5, p1, v5

    const-string v6, "frequency"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa

    .line 67
    aget-object v4, p1, v4

    const-string v6, "bandWidth"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 68
    aget-object v5, p1, v5

    const-string v6, "rssi"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc

    .line 69
    aget-object v4, p1, v4

    const-string v6, "dataRate"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    .line 70
    aget-object v5, p1, v5

    const-string v6, "80211mode"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xe

    .line 71
    aget-object v4, p1, v4

    const-string v6, "antenna"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    .line 72
    aget-object v5, p1, v5

    const-string v6, "muMimo"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 73
    aget-object v4, p1, v4

    const-string v6, "passpoint"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    .line 74
    aget-object v5, p1, v5

    const-string v6, "snr"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x12

    .line 75
    aget-object v4, p1, v4

    const-string v6, "noise"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    .line 76
    aget-object v5, p1, v5

    const-string v6, "akm"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x14

    .line 77
    aget-object v4, p1, v4

    const-string v6, "roamingCount"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    .line 78
    aget-object v5, p1, v5

    const-string v6, "11kvSupport"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    aget-object v4, p1, v4

    const-string v5, "11kvIE"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    array-length v4, p1

    if-eq v4, v3, :cond_f5

    array-length v4, p1

    if-ne v4, v2, :cond_10f

    :cond_f5
    const/16 v4, 0x17

    .line 81
    aget-object v1, p1, v1

    const-string v5, "RoamFullScanCount"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    aget-object v1, p1, v4

    const-string v4, "RoamPartialScanCount"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    array-length v1, p1

    if-ne v1, v2, :cond_10f

    .line 84
    aget-object p1, p1, v3

    const-string v1, "adpsDisconnect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10f
    const-string p1, "apTypeInt"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "internalReason"

    .line 88
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "netid"

    .line 89
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_131

    .line 92
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getConnectedDurationMin()I

    move-result p0

    const-string p1, "conn_duration"

    .line 91
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_131
    return-object v0
.end method

.method public static getReportDataFromBigDataParamsOfONOF(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "\\s+"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 130
    array-length v0, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 132
    aget-object v1, p0, v1

    const-string v2, "wifiState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 133
    aget-object v1, p0, v1

    const-string v2, "callBy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 134
    aget-object p0, p0, v1

    const-string v1, "wifiConnected"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 138
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse bigdata ONOF args. length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiIssueDetector.report"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static startTimerDuringConnection(Ljava/lang/String;)V
    .registers 2

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 626
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->startTimerDuringConnection()V

    return-void
.end method

.method public static updateClientModeImplProcessMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 652
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 655
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->updateClientModeImplProcessMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public static updateDhcpResults(Ljava/lang/String;Landroid/net/DhcpInfo;)V
    .registers 3

    .line 637
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 640
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->updateDhcpResults(Landroid/net/DhcpInfo;)V

    return-void
.end method

.method public static updateLinkProperties(Ljava/lang/String;Landroid/net/LinkProperties;)V
    .registers 3

    .line 644
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 647
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public static updateWifiInfo(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V
    .registers 3

    .line 630
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 633
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil$ReportStore;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
