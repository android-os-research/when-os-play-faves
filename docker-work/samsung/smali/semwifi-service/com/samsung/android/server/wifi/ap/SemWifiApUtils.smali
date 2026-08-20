.class public Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;
.super Ljava/lang/Object;
.source "SemWifiApUtils.java"


# static fields
.field private static CONFIG_ERROR_PASSWORD_1:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static CONFIG_ERROR_PASSWORD_2:Ljava/lang/String; = "USER#DEFINED#PWD#"

.field private static final ONE_UI_4_1_1:I = 0x1fdc4

.field private static final ONE_UI_5_0:I = 0x222e0

.field private static final ONE_UI_5_1:I = 0x22344

.field private static final ONE_UI_5_1_1:I = 0x224d4

.field private static TAG:Ljava/lang/String; = "SemWifiApUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    const-string v0, "connectivity"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "smart_tethering_familyid"

    .line 261
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_24

    .line 263
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 264
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move-object v2, p0

    :cond_24
    :goto_24
    return-object v2
.end method

.method public static getOneUiVersion()I
    .registers 2

    const-string v0, "ro.build.version.sep"

    const-string v1, "0"

    .line 319
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "account"

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 175
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 176
    array-length v0, p0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    .line 177
    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSamsungAccountCount(Landroid/content/Context;)I
    .registers 2

    const-string v0, "account"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 183
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 185
    array-length p0, p0

    return p0
.end method

.method public static getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 2

    const-string v0, "sem_wifi"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method public static getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string v0, "phone"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 306
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_15

    .line 313
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .registers 2

    const-string v0, "wifi"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static isActiveNetworkHasInternet(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "connectivity"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 116
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 118
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "ActiveNetwork is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 121
    :cond_17
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_25

    .line 123
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "networkCapabilities is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    const/16 v0, 0x10

    .line 126
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 127
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/16 v3, 0xc

    .line 128
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez v0, :cond_3b

    if-eqz v2, :cond_3c

    if-eqz p0, :cond_3c

    :cond_3b
    const/4 v1, 0x1

    .line 130
    :cond_3c
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check if device has Active Network Internet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  hasNetCapabilityValidated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  hasTransportCellular: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  hasNetCapabilityInternet: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isActiveNetworkisCellular(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "connectivity"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 97
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 99
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "ActiveNetwork is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_17
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_25

    .line 104
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "networkCapabilities is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 107
    :cond_25
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/16 v2, 0xc

    .line 108
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz v0, :cond_34

    if-eqz p0, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 3

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isAutoHotspotSetOn(Landroid/content/Context;)Z
    .registers 4

    .line 205
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_smart_tethering_settings"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move v1, v0

    .line 207
    :cond_15
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting(DB) AutoHotspot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 210
    :cond_2c
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "AutoHotspot Not Supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isAutoHotspotSupported(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static isCarrierNEWCO()Z
    .registers 2

    .line 200
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    const-string v1, "NEWCO"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierTMO()Z
    .registers 2

    .line 195
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    const-string v1, "TMO"

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDefaultPassphraseSet(Landroid/content/Context;)Z
    .registers 3

    .line 162
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 164
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->CONFIG_ERROR_PASSWORD_1:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->CONFIG_ERROR_PASSWORD_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 166
    :cond_1a
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_29

    .line 167
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, " Default password is set"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public static isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "smart_tethering_family_sharing_service_registered"

    .line 245
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 246
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting(DB) FamilySharing Service Registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isFamilySharingSetOn(Landroid/content/Context;)Z
    .registers 4

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    .line 287
    :cond_f
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting(DB) FamilySharing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isGroupSharingAppDisabled(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.samsung.android.mobileservice"

    .line 221
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_11

    .line 223
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v1, "Group Sharing App is Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return p0
.end method

.method public static isNearByDeviceScanningEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "isPkgEnabled(), "

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_54

    if-eqz p1, :cond_54

    const/16 v2, 0x80

    .line 233
    :try_start_d
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 235
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 236
    :cond_17
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2e

    const-string v3, "enabled"

    goto :goto_30

    :cond_2e
    const-string v3, "disabled"

    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_54

    .line 238
    :catch_3b
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return v1
.end method

.method public static isSamsungAccountLoggedOut(Landroid/content/Context;)Z
    .registers 4

    .line 189
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getSamsungAccountCount(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 190
    :goto_9
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is samsung Account logged out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSimEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 81
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const-string v0, "vendor.wifiap.simcheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    const-string v0, "phone"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_46

    const-string p0, "gsm.sim.state"

    .line 86
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 87
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "READY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    .line 88
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "Sim is not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_46
    return v1
.end method

.method public static isTetheringRestricted(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "user"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_config_tethering"

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static sendBroadcastForMDE(Landroid/content/Context;)V
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setFamilySharingDB(Landroid/content/Context;Z)V
    .registers 7

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting(DB) FamilySharing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",existing_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2c

    return-void

    .line 282
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V
    .registers 5

    .line 251
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting(DB) FamilySharing Service Registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    const-string p1, "1"

    goto :goto_1d

    :cond_1b
    const-string p1, "0"

    :goto_1d
    const-string v0, "smart_tethering_family_sharing_service_registered"

    .line 256
    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNearByDeviceScanningEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nearby_scanning_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_1a

    .line 153
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "Failed to enable NearBy Device Scanning"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 156
    :cond_1a
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->TAG:Ljava/lang/String;

    const-string v0, "Success to enable NearBy Device Scanning"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_13

    .line 294
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method
