.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
.super Ljava/lang/Object;
.source "SemWifiApContinuityUtil.java"


# static fields
.field static final CLIENT_REQUESTED_CONF_TYPE:I = 0x3

.field public static final CONNECTED_5G:I = 0x2

.field public static final CONNECTED_LTE:I = 0x3

.field public static final CONNECTED_UNKWON:I = 0x0

.field public static final CONNECTED_WIFI:I = 0x1

.field static final JSON_KEY_CLIENT_HIGH_SUPPORTED_FREQENCY:Ljava/lang/String; = "clientsupportedhighband"

.field static final JSON_KEY_CLIENT_OWE_SUPPORT:Ljava/lang/String; = "owesupport"

.field static final JSON_KEY_CLIENT_WPA3_SUPPORT:Ljava/lang/String; = "wpa3personalsupport"

.field static final JSON_KEY_IS_SUCCESS:Ljava/lang/String; = "isSuccess"

.field static final JSON_KEY_MHS_BACKHAUL_NETWORK:Ljava/lang/String; = "backhaulnetworktype"

.field static final JSON_KEY_MHS_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field static final JSON_KEY_MHS_BSSID:Ljava/lang/String; = "mhsbssid"

.field static final JSON_KEY_MHS_DATASAVER_ENABLED:Ljava/lang/String; = "datasaver"

.field static final JSON_KEY_MHS_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field static final JSON_KEY_MHS_FREQUENCY:Ljava/lang/String; = "mhsfreq"

.field static final JSON_KEY_MHS_HIDDEN_SSID:Ljava/lang/String; = "hiddenssid"

.field static final JSON_KEY_MHS_MESSAGE_TYPE:Ljava/lang/String; = "messagetype"

.field static final JSON_KEY_MHS_PASSWORD:Ljava/lang/String; = "password"

.field static final JSON_KEY_MHS_SECURE_TYPE:Ljava/lang/String; = "securetype"

.field static final JSON_KEY_MHS_SSID:Ljava/lang/String; = "ssid"

.field static final JSON_KEY_MHS_VERSION:Ljava/lang/String; = "version"

.field static final JSON_KEY_MHS_WIFI6E_STANDARD:Ljava/lang/String; = "wifi6estandard"

.field static final JSON_KEY_MHS_WIFI6_STANDARD:Ljava/lang/String; = "wifi6standard"

.field static final JSON_KEY_MHS_WIFI_MAC:Ljava/lang/String; = "wifimac"

.field static final MHS_ADV_TYPE:I = 0x2

.field static final MHS_DISCOVERY_TYPE:I = 0x1

.field static final MHS_SENDING_CONF_TYPE:I = 0x4

.field static final SA_PACKAGE_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field public static final SECURITY_TYPE_OPEN:I = 0x0

.field public static final SECURITY_TYPE_WPA2_PSK:I = 0x1

.field public static final SECURITY_TYPE_WPA3_OWE:I = 0x5

.field public static final SECURITY_TYPE_WPA3_OWE_TRANSITION:I = 0x4

.field public static final SECURITY_TYPE_WPA3_SAE:I = 0x3

.field public static final SECURITY_TYPE_WPA3_SAE_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MHSMcf:Util"

.field public static final VERSION:I = 0x1


# instance fields
.field private isJDMDevice:Z

.field private mContext:Landroid/content/Context;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mWifiChipMAC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isJDMDevice:Z

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static boolToInt(Ljava/lang/Boolean;)I
    .registers 2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 87
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private hasAccount()Z
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 105
    array-length p0, p0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private hasSamsungAccountPackage()Z
    .registers 3

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    const/16 v1, 0x80

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBatteryLevel()I
    .registers 4

    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "level"

    const/4 v1, -0x1

    .line 215
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    .line 216
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x64

    .line 217
    div-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public getClientMACAddress()Ljava/lang/String;
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mWifiChipMAC:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->isJDMDevice:Z

    if-eqz v0, :cond_11

    .line 279
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 281
    :cond_11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_1e
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mWifiChipMAC:Ljava/lang/String;

    :cond_20
    const/16 p0, 0x9

    const-string v1, "MHSMcf:Util"

    if-nez v0, :cond_2e

    const-string v0, " getClientMACAddress is null  "

    .line 287
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "02:00:00:00:00:00"

    goto :goto_46

    .line 290
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chipset information is macAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientMACAddress is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getFreq()I
    .registers 5

    .line 241
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    const-string v0, "GET_FREQ"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hapd_freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MHSMcf:Util"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 247
    :try_start_25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, " "

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 249
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_48

    .line 250
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 251
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le v1, p0, :cond_46

    move v0, v1

    goto :goto_4e

    :cond_46
    move v0, p0

    goto :goto_4e

    .line 260
    :cond_48
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    :goto_4e
    return v0
.end method

.method public getHostNameFromSettingDeviceName()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    .line 208
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_10
    return-object p0
.end method

.method public getMHSMacFromInterface()Ljava/lang/String;
    .registers 6

    const-string v0, "MHSMcf:Util"

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_10

    return-object v2

    :cond_10
    const-string v1, "network_management"

    .line 185
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService;

    .line 187
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v4, "sem_wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 188
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object p0

    .line 190
    :try_start_2c
    invoke-virtual {v1, p0}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 192
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_42

    :cond_38
    const-string p0, "getMHSMacFromInterface ifcg is null"

    .line 194
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    if-eqz v2, :cond_5e

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMHSMacFromInterface is:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-object v2
.end method

.method public getNetworkType()B
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 146
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 147
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_6d

    if-nez v1, :cond_22

    goto :goto_6d

    .line 152
    :cond_22
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_29

    return v2

    :cond_29
    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const-string v4, "MHSMcf:Util"

    if-eqz v3, :cond_38

    const-string p0, "getNetworkType :isWiFi"

    .line 158
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 161
    :cond_38
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 162
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eqz v0, :cond_68

    const-string v0, "getNetworkType :isMobile"

    .line 164
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v1, :cond_66

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    if-eq v0, v5, :cond_66

    .line 166
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v4, :cond_5c

    goto :goto_66

    :cond_5c
    const/16 p0, 0xe

    if-eq v3, p0, :cond_64

    const/16 p0, 0x13

    if-ne v3, p0, :cond_67

    :cond_64
    move v2, v4

    goto :goto_67

    :cond_66
    :goto_66
    move v2, v5

    :cond_67
    :goto_67
    return v2

    :cond_68
    const-string p0, "getNetworkType :No Network"

    .line 175
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return v2
.end method

.method public getPassword()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_9

    .line 231
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 2

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_11

    .line 224
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecurityType()I
    .registers 5

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v0

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x1

    const-string v3, "MHSMcf:Util"

    if-eqz v0, :cond_78

    .line 300
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const-string v1, "SAE_SECURITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    .line 302
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_30

    .line 303
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    return p0

    :cond_30
    const-string p0, "failure to get getSoftApConfiguration1"

    .line 305
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_36
    const-string p0, "1"

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "MHS  enabled in WPA2"

    .line 309
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_44
    const-string p0, "3"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_53

    const-string p0, "MHS  enabled in WPA3"

    .line 312
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_53
    const-string p0, "2"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    const-string p0, "MHS  enabled in WPA3 transition"

    .line 315
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_62
    const-string p0, "4"

    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_71

    const-string p0, "MHS  enabled in OWE"

    .line 318
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    return p0

    :cond_71
    const-string p0, "MHS  enabled in OPEN"

    .line 321
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_78
    if-eqz v1, :cond_7f

    .line 327
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    return p0

    :cond_7f
    const-string p0, "failure to get getSoftApConfiguration2"

    .line 329
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    return v2
.end method

.method getWifi6ENetwork()I
    .registers 3

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 139
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->boolToInt(Ljava/lang/Boolean;)I

    move-result p0

    return p0
.end method

.method getWifi6Network()I
    .registers 3

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->boolToInt(Ljava/lang/Boolean;)I

    move-result p0

    return p0
.end method

.method public hasSamsungAccount()Z
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->hasSamsungAccountPackage()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->hasAccount()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isDataSaverEnabled()I
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mContext:Landroid/content/Context;

    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    if-eqz p0, :cond_1b

    .line 110
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "MHSMcf:Util"

    const-string v0, "DataSasver is enabled"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()I
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_e

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 273
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->boolToInt(Ljava/lang/Boolean;)I

    move-result p0

    return p0
.end method
