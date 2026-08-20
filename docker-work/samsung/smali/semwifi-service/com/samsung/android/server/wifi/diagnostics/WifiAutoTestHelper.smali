.class public Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;
.super Ljava/lang/Object;
.source "WifiAutoTestHelper.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field static final NETWORK_ID:Ljava/lang/String; = "networkId"

.field static final SETUP_STATIC_IP:Ljava/lang/String; = "setupStaticIp"

.field private static final TAG:Ljava/lang/String; = "SemWifi.AutoTestHelper"


# instance fields
.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-void
.end method

.method private setupStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 7

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-gez v0, :cond_12

    neg-int v0, v0

    .line 69
    :cond_12
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "192.168.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupStaticIpConfiguration ip:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", gw:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWifi.AutoTestHelper"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Landroid/net/LinkAddress;

    .line 76
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v4, 0x18

    invoke-direct {v2, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 77
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    const-string v0, "8.8.8.8"

    .line 79
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 81
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 82
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 83
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 84
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "setupStaticIp"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "networkId"

    const/4 v1, -0x1

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_3d

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup static ip for network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemWifi.AutoTestHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;->setupStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_3d
    return-void
.end method
