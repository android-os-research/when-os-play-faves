.class public Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;
.super Ljava/lang/Object;
.source "SemWifiConfigurationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    .line 99
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 100
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 101
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 102
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForWpa3Enterprise192BitNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 103
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public static isConfigForOweNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x6

    .line 54
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForPasspoint(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/16 v0, 0xb

    .line 90
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0xc

    .line 91
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isConfigForPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForSaeNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x4

    .line 47
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForWapiCertNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForWapiPskNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x7

    .line 33
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForWepNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForWpa3Enterprise192BitNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/4 v0, 0x5

    .line 76
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method public static isConfigForWpa3EnterpriseNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    const/16 v0, 0x9

    .line 69
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    return p0
.end method
