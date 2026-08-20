.class public Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.super Ljava/lang/Object;
.source "SemWifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LOGIN_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.profileProvider"

.field private static final AUTO_HOTSPOT_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/smart_tethering.accept"

.field private static CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String; = null

.field private static CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String; = null

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final DEFAULT_MAX_CLIENT:I = 0xa

.field private static final GET_SA_NAME:I = 0x1

.field public static final KEY_CURR_SSID:Ljava/lang/String; = "CURR_SSID"

.field public static final KEY_OPEN_INDEX:Ljava/lang/String; = "open_index"

.field public static final KEY_SOFTAP_MODIFIED:Ljava/lang/String; = "softap_modified"

.field public static final KEY_WPA_INDEX:Ljava/lang/String; = "wpa_index"

.field private static final LOG_DEBUG_FILE:Ljava/lang/String;

.field public static final MAX_CLIENT:I

.field private static final Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final RAND_SSID_INT_MAX:I = 0x270f

.field private static final RAND_SSID_INT_MIN:I = 0x3e8

.field private static final SETTINGS_NETWORK_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

.field private static final SETTINGS_SOFT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final SINGLE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SemWifiApConfigStore"

.field public static final WPA2_INDEX:Ljava/lang/String; = "wpa2_index"

.field public static final WPA3_INDEX:Ljava/lang/String; = "wpa3_index"

.field public static final WPA3_OWE_INDEX:Ljava/lang/String; = "wpa3_owe_index"

.field public static final WPA3_OWE_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_owe_transition_index"

.field public static final WPA3_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_transition_index"

.field private static final dummySoftapFilePath:Ljava/lang/String; = "/data/misc/wifi/dummySoftap.conf"

.field private static final errPWD:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static final errSSID:Ljava/lang/String; = "#ERROR#SSID#"

.field private static final preverrSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"


# instance fields
.field private configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

.field private isJDMDevice:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

.field private mIsShutdownIntentReceived:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMacAddress:Ljava/lang/String;

.field private mObject:Ljava/lang/Object;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final mSoftResetReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private retrySAAccount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration$Builder;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShutdownIntentReceived(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpToLogFile(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetModelName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSamsungAccountProfileName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSamsungAccountProfileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTimeStamp(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSALoggedIn(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isSALoggedIn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveDummyFile(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->removeDummyFile()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCONFIGMOBILEAPDEFAULTSSID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi_hostapd/softap_log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    .line 77
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigMobileApDefaultSSID"

    const-string v2, "Default,Mac4Digits"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigMobileApDefaultPwd"

    const-string v2, "SamsungDefault"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->SINGLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 82
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    const/4 v3, 0x0

    .line 99
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 100
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const/4 v4, 0x5

    .line 108
    iput v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->retrySAAccount:I

    .line 454
    new-instance v4, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    iput-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    iput-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 527
    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    .line 1412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",SemWifiApConfigStore constructor Enter\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    .line 194
    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-object/from16 v6, p3

    .line 195
    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 196
    new-instance v6, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    const-string v6, "wifi"

    .line 197
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 199
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI_AP_DEFAULT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_SoftAp_conf_present"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",checkifDummyFileExist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->checkifDummyFileExist()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",/data/misc/wifi/softap.conf present:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",mainline_config present: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",autohotspot_accept present:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->handleSoftApConfigMigration()V

    .line 215
    :cond_d9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_ed

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createDummyFile()V

    .line 219
    :cond_ed
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->checkifDummyFileExist()Z

    move-result v6

    const-string v8, "SemWifiApConfigStore"

    const-string v9, "\t#ERROR#SSID#\n"

    const-string v10, "#ERROR#SSID#"

    if-nez v6, :cond_19e

    .line 220
    new-instance v6, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v6}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 221
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 222
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 223
    invoke-direct {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    const-string v6, "generating new default config"

    .line 224
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",generating new default config in constructor\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWifiApConfig:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_165

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_165

    const-string v6, "SSID is not error"

    .line 228
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 229
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v1, v6}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_182

    :cond_165
    const-string v6, "SSID is error. do not save"

    .line 231
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",contructor SSID is error. do not save\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_182
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createDummyFile()V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",created dummySoftapConfig file in constructor\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d4

    .line 237
    :cond_19e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d4

    :cond_1b2
    const-string v6, "save SSID is error"

    .line 238
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const-string v6, "XXXX"

    .line 239
    invoke-direct {v0, v6, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "save new ssid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 241
    invoke-static {v1, v6}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d4
    :goto_1d4
    const-string v6, "mdc.singlesku.activated"

    const-string v11, "false"

    .line 245
    invoke-static {v6, v11}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "true"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_Tss_handled"

    const/4 v14, -0x1

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 247
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTSSActivationHandled:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " singleSkuActivated:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-ne v11, v14, :cond_21f

    if-eqz v6, :cond_216

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_29d

    .line 253
    :cond_216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_29d

    :cond_21f
    if-nez v11, :cond_29d

    if-eqz v6, :cond_29d

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "Generate default for TSS"

    .line 258
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",Generate default for TSS\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 261
    invoke-direct {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 262
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 263
    invoke-direct {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 264
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_280

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_280

    const-string v3, "TSS activated SSID is not error"

    .line 265
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 266
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v1, v3}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_29d

    .line 268
    :cond_280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",TSS activated SSID is error. do not save\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TSS activated SSID is error. do not save"

    .line 269
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 273
    :cond_29d
    :goto_29d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isCustomerChanged()Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 274
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 275
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v3, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 276
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v3

    sget v6, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 277
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "TMO"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31c

    const-string v6, "NEWCO"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31c

    .line 278
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31c

    .line 279
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31c

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    if-ne v3, v2, :cond_31c

    .line 280
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_317

    .line 282
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v11, 0x0

    const/4 v14, 0x4

    invoke-direct {v0, v14, v11, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x1

    invoke-direct {v0, v14, v11, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_31c

    .line 284
    :cond_317
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v6, v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 289
    :cond_31c
    :goto_31c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 290
    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 291
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_362

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_362

    const-string v2, "customerchanged SSID is not error"

    .line 292
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",customerchanged SSID is not error\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v1, v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_37f

    :cond_362
    const-string v2, "customerchanged SSID is error. do not save"

    .line 296
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",customerchanged SSID is error. do not save\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_37f
    :goto_37f
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v2, :cond_3fd

    .line 301
    invoke-direct {v0, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWifiApConfig SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pwd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",security:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",mWifiApConfig SSID: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_3fd
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    if-eqz v3, :cond_40b

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_40b
    const-string v3, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 309
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 310
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 311
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    new-instance v3, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "com.sec.android.settings.permission.SOFT_RESET"

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 316
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkifDummyFileExist()Z
    .registers 3

    .line 550
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/wifi/dummySoftap.conf"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " checkifDummyFileExist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApConfigStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private createDummyFile()V
    .registers 2

    .line 541
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/wifi/dummySoftap.conf"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 545
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_f
    return-void
.end method

.method private createOrChangePermission()V
    .registers 4

    .line 1461
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1464
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    .line 1466
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_15
    const/4 p0, 0x3

    :try_start_16
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/bin/sh"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "-c"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/chmod 665 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 1470
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_40} :catch_4c

    .line 1472
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 1473
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_46} :catch_47
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_4c

    goto :goto_50

    :catch_47
    move-exception p0

    .line 1475
    :try_start_48
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p0

    .line 1478
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    return-void
.end method

.method private dumpToLogFile(Ljava/lang/String;Z)V
    .registers 9

    .line 1484
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1485
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1486
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1487
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createOrChangePermission()V

    .line 1489
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4b

    const-string p1, "SemWifiApConfigStore"

    .line 1490
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not dump to log file:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not dump to log file:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1492
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_eb

    return-void

    :cond_4b
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_56

    .line 1498
    :try_start_4f
    new-instance p2, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {p2, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    goto :goto_5b

    .line 1500
    :cond_56
    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    :goto_5b
    move-object v3, p2

    .line 1502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_65

    .line 1503
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_65} :catch_70
    .catchall {:try_start_4f .. :try_end_65} :catchall_6e

    .line 1510
    :cond_65
    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_eb

    goto :goto_7c

    :catch_69
    move-exception p1

    .line 1512
    :goto_6a
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_eb

    goto :goto_7c

    :catchall_6e
    move-exception p0

    goto :goto_e0

    :catch_70
    move-exception p1

    .line 1506
    :try_start_71
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    if-eqz v3, :cond_7c

    .line 1510
    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a
    .catchall {:try_start_76 .. :try_end_79} :catchall_eb

    goto :goto_7c

    :catch_7a
    move-exception p1

    goto :goto_6a

    .line 1516
    :cond_7c
    :goto_7c
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_eb

    .line 1517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_df

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v1, 0x1000

    cmp-long p1, p1, v1

    if-lez p1, :cond_df

    .line 1518
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1519
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1520
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 1521
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1522
    array-length v1, p1

    .line 1523
    div-int/lit8 v2, v1, 0x2

    :goto_a7
    if-ltz v2, :cond_b8

    if-ge v2, v1, :cond_b8

    .line 1524
    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    .line 1525
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1527
    :cond_b8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 1528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "logdumpfile is reduced from:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",to:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    :cond_df
    return-void

    :goto_e0
    if-eqz v3, :cond_ea

    .line 1510
    :try_start_e2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_eb

    goto :goto_ea

    :catch_e6
    move-exception p1

    .line 1512
    :try_start_e7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1515
    :cond_ea
    :goto_ea
    throw p0

    :catchall_eb
    move-exception p0

    .line 1516
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_e7 .. :try_end_ed} :catchall_eb

    throw p0
.end method

.method public static generateGuestPassword()Ljava/lang/String;
    .registers 7

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1630
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x4

    if-ge v3, v4, :cond_23

    const/16 v4, 0x18

    .line 1632
    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    const-string v5, "abcdefghijkmnpqrstuvwxyz"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_23
    move v3, v2

    :goto_24
    if-ge v3, v4, :cond_38

    const/16 v5, 0x8

    .line 1635
    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    const-string v6, "23456789"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_38
    :goto_38
    const/4 v3, 0x1

    if-ge v2, v3, :cond_4d

    const/16 v3, 0xe

    .line 1638
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    const-string v4, "!@#$%^&*()/~+?"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1640
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generatePassword()Ljava/lang/String;
    .registers 6

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1616
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_21

    const/16 v4, 0x20

    .line 1618
    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    const-string v5, "23456789abcdefghijkmnpqrstuvwxyz"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1620
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;
    .registers 7

    .line 787
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v1, "softap_modified"

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getAsopSoftApConfiguration isSoftApModified:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " forceupdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWifiApConfigStore"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v2, :cond_3a

    if-nez p1, :cond_3a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 790
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",getSoftApConfiguration() API isSoftApModified:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 791
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "0"

    invoke-static {v2, v1, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 793
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v1, :cond_8e

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoftApConfiguration() isSoftApModified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 797
    :cond_8e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method private getCSCRegion()Ljava/lang/String;
    .registers 1

    .line 573
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 10

    .line 851
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 852
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_guest_password"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/4 v0, 0x1

    .line 854
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 855
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSASSID()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "#ERROR#SSID#"

    const/4 v4, 0x0

    if-eqz v2, :cond_4c

    .line 857
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",getDefaultAp, parseSecProductFeatureSsid is errSSID\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 862
    :cond_4c
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    const-string v5, "None"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5b

    .line 863
    invoke-virtual {p1, v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a5

    .line 865
    :cond_5b
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_92

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",parseSecProductFeaturePassword is null, so set error SSID\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 868
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 869
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v3, "SPRINT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/16 v2, 0xa

    const-wide/16 v6, 0x1

    .line 870
    invoke-direct {p0, v2, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a5

    .line 873
    :cond_92
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    const-string v6, "UserDefined"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    .line 874
    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a5

    .line 876
    :cond_a2
    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 880
    :cond_a5
    :goto_a5
    invoke-virtual {p1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 881
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v2

    sget v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 882
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 883
    invoke-virtual {p1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 884
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_ap_disable_random_mac"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_cb

    move p0, v0

    goto :goto_cc

    :cond_cb
    move p0, v4

    :goto_cc
    const-string v1, "SemWifiApConfigStore"

    if-eqz p0, :cond_d4

    .line 887
    :try_start_d0
    invoke-virtual {p1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_f0

    .line 889
    :cond_d4
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 890
    invoke-virtual {p1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_da} :catch_db

    goto :goto_f0

    :catch_db
    move-exception p0

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMacRandomizationSetting exception :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_f0
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 896
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v0, :cond_128

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getWifiApConfiguration mWifiApConfig SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pwd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",security:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_128
    return-object p1
.end method

.method private getIMEI(I)Ljava/lang/String;
    .registers 7

    .line 1298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1299
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getIMEI() imei : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    if-le v3, v1, :cond_22

    move v3, v1

    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-nez p1, :cond_34

    return-object v0

    :cond_34
    if-lt v1, p1, :cond_47

    .line 1307
    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    const-string p1, " getIMEI() imei : null"

    .line 1309
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const-string p0, "SemWifiApConfigStore"

    const-string p1, "Fail to get IMEI"

    .line 1310
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method private getKddiMhsPassword()Ljava/lang/String;
    .registers 6

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1350
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1352
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    :goto_12
    add-long/2addr v0, v2

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .registers 7

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1316
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, " getLastIMEI() "

    .line 1317
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-eqz v0, :cond_42

    .line 1319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getIMEI() imei : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-le v4, v1, :cond_28

    move v4, v1

    :cond_28
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-nez p1, :cond_39

    return-object v0

    :cond_39
    if-lt v1, p1, :cond_4e

    sub-int p0, v1, p1

    .line 1324
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const-string p1, " getLastIMEI() imei : null"

    .line 1326
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const-string p0, "SemWifiApConfigStore"

    const-string p1, "Fail to get IMEI"

    .line 1327
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMacAddressLast6DigitsForKOR()Ljava/lang/String;
    .registers 4

    .line 1237
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1238
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    if-eqz v1, :cond_4d

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before   JDM factory mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before   JDM random  mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    .line 1243
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    .line 1246
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getMacAddressLast6DigitsForKOR() mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-eqz v0, :cond_7e

    const-string p0, ":"

    const-string v1, "_"

    .line 1248
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_85

    add-int/lit8 v1, v0, -0x8

    .line 1251
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    const-string p0, "SemWifiApConfigStore"

    const-string v0, "MAC read fail"

    .line 1254
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMacAddressLastDigits(I)Ljava/lang/String;
    .registers 6

    .line 1259
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1260
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    const-string v2, " lastDigits = "

    if-eqz v1, :cond_5a

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before   JDM factory mac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before   JDM random  mac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1265
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    .line 1268
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MacAddressLastDigits final mac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-eqz v0, :cond_8d

    const-string p0, ":"

    const-string v1, ""

    .line 1271
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int p1, v0, p1

    .line 1273
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8d
    const-string p0, "SemWifiApConfigStore"

    const-string p1, "MAC read fail , generating random digits"

    .line 1275
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getModelName()Ljava/lang/String;
    .registers 5

    .line 1332
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1b

    const/4 v2, 0x0

    .line 1334
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAMSUNG-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1335
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .registers 4

    .line 1225
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .registers 3

    .line 1233
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1234
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .registers 3

    .line 1229
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1230
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_a

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1377
    :cond_a
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    const/4 p0, 0x0

    const-string p2, ""

    :goto_16
    if-ge p0, p1, :cond_36

    .line 1380
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x1a

    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_16

    :cond_36
    return-object p2
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_f

    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_f
    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_1a

    .line 1364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    add-long/2addr p2, v0

    .line 1365
    :cond_1a
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    const/16 p0, 0xa

    const/4 p2, 0x1

    move p3, p2

    :goto_27
    if-ge p3, p1, :cond_2e

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p3, p3, 0x1

    goto :goto_27

    .line 1369
    :cond_2e
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%%0%dd"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, p2, [Ljava/lang/Object;

    sub-int/2addr p0, p2

    .line 1370
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRandomIntForDefaultSsid()I
    .registers 2

    .line 1397
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x2328

    .line 1398
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_a

    .line 1388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1389
    :cond_a
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->longToBytes(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 1390
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    :goto_19
    if-ge p2, p1, :cond_2d

    const/16 p3, 0xa

    .line 1392
    invoke-virtual {v0, p3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p3

    const-string v1, "!@#$/^&*()"

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    .line 1394
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSASSID()Ljava/lang/String;
    .registers 8

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isSALoggedIn()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9c

    .line 113
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String;

    const-string v2, "Default,Mac4Digits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String;

    const-string v2, "Verizon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v2, "hotspot_enabled_history"

    .line 114
    invoke-static {v0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSASSID SA loggedin with out MHS usage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getSamsungAccountProfileName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9c

    const-string v4, "Galaxy"

    .line 122
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "5G"

    .line 123
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(LTE)"

    .line 124
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LTE"

    .line 125
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const v4, 0x1040f4e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x20

    if-le v1, v3, :cond_93

    .line 132
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_93
    move-object v1, v0

    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v0, "1"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_9c
    return-object v1
.end method

.method private getSamsungAccountProfileName()Ljava/lang/String;
    .registers 10

    const-string v0, "SemWifiApConfigStore"

    const-string v1, ""

    .line 1434
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "account_given_name"

    .line 1436
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 1439
    :try_start_11
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->SINGLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_37

    .line 1440
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "Success Getting SA Names"

    .line 1441
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_3c

    :cond_37
    const-string p0, "Fail Getting SA Names"

    .line 1444
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_44
    .catchall {:try_start_11 .. :try_end_3c} :catchall_42

    :goto_3c
    if-eqz v8, :cond_50

    .line 1451
    :goto_3e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_42
    move-exception p0

    goto :goto_69

    :catch_44
    move-exception p0

    :try_start_45
    const-string v2, "Query Failed!"

    .line 1447
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    if-eqz v8, :cond_50

    goto :goto_3e

    .line 1454
    :cond_50
    :goto_50
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz p0, :cond_68

    .line 1455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "givenName:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-object v1

    :goto_69
    if-eqz v8, :cond_6e

    .line 1451
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1453
    :cond_6e
    throw p0
.end method

.method private getTelephonyNumber(IZ)Ljava/lang/String;
    .registers 10

    .line 1280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1281
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 1283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getTelephonyNumber() min:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    if-le v4, v2, :cond_24

    move v5, v2

    goto :goto_25

    :cond_24
    move v5, v4

    :goto_25
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]retry:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-nez p2, :cond_4e

    if-le v4, v2, :cond_41

    move v4, v2

    .line 1285
    :cond_41
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "000000"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    return-object v1

    :cond_4e
    if-nez p1, :cond_51

    return-object v0

    :cond_51
    if-lt v2, p1, :cond_66

    sub-int p0, v2, p1

    .line 1290
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    const-string p1, " getTelephonyNumber() min:null"

    .line 1292
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const-string p0, "SemWifiApConfigStore"

    const-string p1, "Fail to get MSISDN"

    .line 1293
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-object v1
.end method

.method private getTimeStamp()Ljava/lang/String;
    .registers 3

    .line 577
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1565
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz p0, :cond_5

    return-object p1

    :cond_5
    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 1571
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x9

    if-le p0, v0, :cond_16

    .line 1572
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object p1
.end method

.method private getWifiMacAddress()Ljava/lang/String;
    .registers 3

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 531
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11

    .line 537
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMacAddress:Ljava/lang/String;

    return-object p0

    :catch_11
    move-exception p0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JDM MAC error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleSoftApConfigMigration()V
    .registers 21

    move-object/from16 v1, p0

    const-string v0, ",mMAXClient:"

    const-string v2, "authType:"

    const-string v3, "\n"

    const-string v4, ",is5GBand:"

    const-string v5, ",channel:"

    const-string v6, "band:"

    const-string v7, "wifi_ap_5G_checked"

    const-string v8, "Invalid hotspot configuration "

    const-string v9, "Error reading hotspot configuration "

    const-string v10, "Error closing hotspot configuration during read"

    const-string v11, "SemWifiApConfigStore"

    .line 320
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->Q_OS_AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_24
    const-string v15, "loadFromLegacyFile"

    .line 325
    invoke-static {v11, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",loadFromLegacyFile\n"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v1, v14, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 327
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/text/SimpleDateFormat;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_49} :catch_299
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_49} :catch_25d
    .catchall {:try_start_24 .. :try_end_49} :catchall_256

    move-object/from16 v16, v9

    :try_start_4b
    const-string v9, "MM-dd HH:mm:ss.SSS"
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4d} :catch_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4d} :catch_25d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_256

    move-object/from16 v17, v8

    :try_start_4f
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " loadFromLegacyFile\n"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    new-instance v8, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v8}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 330
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_83} :catch_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_83} :catch_252
    .catchall {:try_start_4f .. :try_end_83} :catchall_256

    .line 331
    :try_start_83
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 332
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8b} :catch_24c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_8b} :catch_246
    .catchall {:try_start_83 .. :try_end_8b} :catchall_242

    move-object/from16 v18, v12

    .line 333
    :try_start_8d
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    array-length v12, v12
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_23f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_94} :catch_23c
    .catchall {:try_start_8d .. :try_end_94} :catchall_242

    move-object/from16 v19, v10

    const/16 v10, 0x20

    if-le v12, v10, :cond_a6

    .line 334
    :try_start_9a
    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_9e} :catch_234
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9f

    goto :goto_a6

    :catchall_9f
    move-exception v0

    move-object v1, v0

    move-object v14, v9

    move-object/from16 v3, v19

    goto/16 :goto_356

    .line 336
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {v8, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 337
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 338
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b4} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_b4} :catch_234
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_22f

    const/4 v12, 0x3

    if-ne v14, v12, :cond_be

    const/16 v12, 0xe

    if-ge v10, v12, :cond_bc

    goto :goto_be

    :cond_bc
    const/4 v12, 0x1

    goto :goto_bf

    :cond_be
    :goto_be
    const/4 v12, 0x0

    :goto_bf
    const/4 v15, 0x4

    if-ne v14, v15, :cond_c6

    .line 348
    :try_start_c2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c6} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_c6} :catch_234
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_9f

    .line 350
    :cond_c6
    :try_start_c6
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v7, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d6

    const/4 v14, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v14, 0x0

    .line 351
    :goto_d7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 352
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_116} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_116} :catch_234
    .catchall {:try_start_c6 .. :try_end_116} :catchall_22f

    const/4 v4, 0x2

    const/16 v5, 0x95

    if-eqz v14, :cond_129

    .line 354
    :try_start_11b
    invoke-virtual {v8, v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 355
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14b

    :cond_129
    if-ne v10, v5, :cond_12f

    .line 358
    invoke-virtual {v8, v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_14b

    :cond_12f
    if-nez v10, :cond_136

    const/4 v6, 0x1

    .line 361
    invoke-virtual {v8, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_14b

    :cond_136
    const/4 v6, 0x1

    if-ne v12, v6, :cond_13d

    .line 364
    invoke-virtual {v8, v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_14b

    :cond_13d
    if-lt v10, v6, :cond_148

    const/16 v5, 0xb

    if-le v10, v5, :cond_144

    goto :goto_148

    .line 369
    :cond_144
    invoke-virtual {v8, v10, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_147} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11b .. :try_end_147} :catch_234
    .catchall {:try_start_11b .. :try_end_147} :catchall_9f

    goto :goto_14b

    .line 367
    :cond_148
    :goto_148
    :try_start_148
    invoke-virtual {v8, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 373
    :goto_14b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 374
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_152} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_148 .. :try_end_152} :catch_234
    .catchall {:try_start_148 .. :try_end_152} :catchall_22f

    if-nez v5, :cond_156

    .line 376
    :try_start_154
    sget v5, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_156} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_154 .. :try_end_156} :catch_234
    .catchall {:try_start_154 .. :try_end_156} :catchall_9f

    .line 378
    :cond_156
    :try_start_156
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApMaxClientToFramework(I)V

    .line 379
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 380
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 381
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 382
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 383
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_1a4} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_1a4} :catch_234
    .catchall {:try_start_156 .. :try_end_1a4} :catchall_22f

    const/4 v0, 0x4

    if-ne v6, v0, :cond_1b2

    .line 387
    :try_start_1a7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_1af
    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_1d0

    :cond_1b2
    const/16 v0, 0x19

    if-ne v6, v0, :cond_1bf

    .line 389
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v8, v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1af

    :cond_1bf
    const/16 v0, 0x1a

    if-ne v6, v0, :cond_1cb

    .line 391
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1ca} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a7 .. :try_end_1ca} :catch_234
    .catchall {:try_start_1a7 .. :try_end_1ca} :catchall_9f

    goto :goto_1af

    :cond_1cb
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 393
    :try_start_1cd
    invoke-virtual {v8, v2, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 395
    :goto_1d0
    invoke-virtual {v8, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 396
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_ap_disable_random_mac"

    invoke-static {v0, v3, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1df} :catch_22a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1cd .. :try_end_1df} :catch_226
    .catchall {:try_start_1cd .. :try_end_1df} :catchall_22f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1e4

    const/4 v0, 0x1

    goto :goto_1e5

    :cond_1e4
    move v0, v15

    :goto_1e5
    if-eqz v0, :cond_1eb

    .line 399
    :try_start_1e7
    invoke-virtual {v8, v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_205

    :cond_1eb
    const/4 v0, 0x1

    .line 401
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ef} :catch_1f0
    .catchall {:try_start_1e7 .. :try_end_1ef} :catchall_9f

    goto :goto_205

    :catch_1f0
    move-exception v0

    .line 404
    :try_start_1f1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setMacRandomizationSetting exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_205
    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v14
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_209} :catch_22a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f1 .. :try_end_209} :catch_226
    .catchall {:try_start_1f1 .. :try_end_209} :catchall_22f

    .line 418
    :try_start_209
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_20e

    goto/16 :goto_2e2

    :catch_20e
    move-exception v0

    move-object v2, v0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e2

    :catch_226
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_265

    :catch_22a
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_2a1

    :catchall_22f
    move-exception v0

    move-object/from16 v3, v19

    goto/16 :goto_354

    :catch_234
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_24a

    :catch_238
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_250

    :catch_23c
    move-exception v0

    move-object v3, v10

    goto :goto_24a

    :catch_23f
    move-exception v0

    move-object v3, v10

    goto :goto_250

    :catchall_242
    move-exception v0

    move-object v3, v10

    goto/16 :goto_354

    :catch_246
    move-exception v0

    move-object v3, v10

    move-object/from16 v18, v12

    :goto_24a
    const/4 v2, 0x0

    goto :goto_265

    :catch_24c
    move-exception v0

    move-object v3, v10

    move-object/from16 v18, v12

    :goto_250
    const/4 v2, 0x0

    goto :goto_2a1

    :catch_252
    move-exception v0

    goto :goto_260

    :catch_254
    move-exception v0

    goto :goto_29c

    :catchall_256
    move-exception v0

    move-object v3, v10

    const/4 v2, 0x0

    move-object v1, v0

    move-object v14, v2

    goto/16 :goto_356

    :catch_25d
    move-exception v0

    move-object/from16 v17, v8

    :goto_260
    move-object v3, v10

    move-object/from16 v18, v12

    const/4 v2, 0x0

    move-object v9, v2

    .line 412
    :goto_265
    :try_start_265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_28b
    .catchall {:try_start_265 .. :try_end_28b} :catchall_353

    if-eqz v9, :cond_2e1

    .line 418
    :try_start_28d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_290} :catch_291

    goto :goto_2e1

    :catch_291
    move-exception v0

    move-object v4, v0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2d4

    :catch_299
    move-exception v0

    move-object/from16 v16, v9

    :goto_29c
    move-object v3, v10

    move-object/from16 v18, v12

    const/4 v2, 0x0

    move-object v9, v2

    .line 408
    :goto_2a1
    :try_start_2a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c7
    .catchall {:try_start_2a1 .. :try_end_2c7} :catchall_353

    if-eqz v9, :cond_2e1

    .line 418
    :try_start_2c9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_2cc
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2cc} :catch_2cd

    goto :goto_2e1

    :catch_2cd
    move-exception v0

    move-object v4, v0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2d4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e1
    :goto_2e1
    move-object v14, v2

    :goto_2e2
    const-string v0, "softap_migration_q_os_to_r"

    if-eqz v14, :cond_345

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrated config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 428
    invoke-direct {v1, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 429
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->createDummyFile()V

    .line 431
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v2

    .line 432
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",deleted softap.conf result :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_352

    .line 435
    :cond_345
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_352
    return-void

    :catchall_353
    move-exception v0

    :goto_354
    move-object v1, v0

    move-object v14, v9

    :goto_356
    if-eqz v14, :cond_370

    .line 418
    :try_start_358
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_35b} :catch_35c

    goto :goto_370

    :catch_35c
    move-exception v0

    move-object v2, v0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_370
    :goto_370
    throw v1
.end method

.method private isSALoggedIn()Z
    .registers 2

    .line 1424
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 1425
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 1426
    array-length p0, p0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private isSimCheck()Z
    .registers 2

    .line 567
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz p0, :cond_14

    const-string p0, "vendor.wifiap.simcheck.disable"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method private longToBytes(J)[B
    .registers 7

    const/16 p0, 0x8

    new-array v0, p0, [B

    const/4 v1, 0x7

    :goto_5
    if-ltz v1, :cond_12

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1341
    aput-byte v2, v0, v1

    shr-long/2addr p1, p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_12
    return-object v0
.end method

.method private declared-synchronized parseSecProductFeaturePassword(Z)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    const/4 v0, 0x1

    .line 1035
    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parseSecProductFeaturePassword() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", parseSecProductFeaturePassword() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 1038
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string p1, " dongle default password "

    .line 1039
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getKddiMhsPassword()Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_64
    :try_start_64
    const-string v1, "SamsungDefault"

    .line 1042
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x4

    if-eqz v1, :cond_c7

    .line 1043
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x21

    if-lt p1, v0, :cond_9a

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pwd 15  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1046
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generatePassword()Ljava/lang/String;

    move-result-object p1
    :try_end_98
    .catchall {:try_start_64 .. :try_end_98} :catchall_22d

    monitor-exit p0

    return-object p1

    .line 1048
    :cond_9a
    :try_start_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pwd 8 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c5
    .catchall {:try_start_9a .. :try_end_c5} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_c7
    :try_start_c7
    const-string v1, "Random12Chars"

    .line 1051
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1052
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object p1
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_d7
    :try_start_d7
    const-string v1, "Random8Chars"

    .line 1053
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1054
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object p1
    :try_end_e5
    .catchall {:try_start_d7 .. :try_end_e5} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_e7
    :try_start_e7
    const-string v1, "Min10Digits"

    .line 1055
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 1056
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " telephonyNumber  retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    if-eqz v0, :cond_123

    const-string p1, ""

    .line 1059
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11b

    const-string p1, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_123

    :cond_11b
    const/16 p1, 0xa

    .line 1060
    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object p1
    :try_end_121
    .catchall {:try_start_e7 .. :try_end_121} :catchall_22d

    monitor-exit p0

    return-object p1

    .line 1063
    :cond_123
    monitor-exit p0

    return-object v0

    :cond_125
    :try_start_125
    const-string v1, "ModelWith4RandomDigits"

    .line 1064
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandom4Chars()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_146
    .catchall {:try_start_125 .. :try_end_146} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_148
    :try_start_148
    const-string v1, "IMEI5With5RandomDigits"

    .line 1066
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    const/4 p1, 0x5

    .line 1067
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16e

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_16c
    .catchall {:try_start_148 .. :try_end_16c} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_16e
    :try_start_16e
    const-string p1, "SemWifiApConfigStore"

    const-string v0, "Not generate default password : because imei is null"

    .line 1071
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_16e .. :try_end_175} :catchall_22d

    const/4 p1, 0x0

    .line 1072
    monitor-exit p0

    return-object p1

    :cond_178
    :try_start_178
    const-string v1, "IMEILast8Digits"

    .line 1073
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    const/16 p1, 0x8

    .line 1074
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object p1
    :try_end_188
    .catchall {:try_start_178 .. :try_end_188} :catchall_22d

    if-eqz p1, :cond_18c

    .line 1076
    monitor-exit p0

    return-object p1

    :cond_18c
    :try_start_18c
    const-string p1, "SemWifiApConfigStore"

    const-string v0, "Not generate default password : because imei is null"

    .line 1078
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "XXXXXXXX"

    .line 1081
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v0, :cond_1af

    const-string v0, "SemWifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catchall {:try_start_18c .. :try_end_1af} :catchall_22d

    .line 1082
    :cond_1af
    monitor-exit p0

    return-object p1

    :cond_1b1
    :try_start_1b1
    const-string v1, "VZWRandomRule"

    .line 1083
    sget-object v8, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fc

    .line 1084
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d7

    const-string v1, ""

    .line 1086
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c7
    .catchall {:try_start_1b1 .. :try_end_1c7} :catchall_22d

    if-nez v1, :cond_1d7

    .line 1088
    :try_start_1c9
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1d1
    .catch Ljava/lang/NumberFormatException; {:try_start_1c9 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_1c9 .. :try_end_1d1} :catchall_22d

    goto :goto_1db

    .line 1090
    :catch_1d2
    :try_start_1d2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    goto :goto_1db

    .line 1093
    :cond_1d7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1095
    :goto_1db
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1fa
    .catchall {:try_start_1d2 .. :try_end_1fa} :catchall_22d

    monitor-exit p0

    return-object p1

    :cond_1fc
    :try_start_1fc
    const-string v0, "UserDefined"

    .line 1096
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    if-nez p1, :cond_20c

    const-string p1, "\tUSER#DEFINED#PWD#\n"
    :try_end_20a
    .catchall {:try_start_1fc .. :try_end_20a} :catchall_22d

    .line 1098
    monitor-exit p0

    return-object p1

    .line 1100
    :cond_20c
    :try_start_20c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p1
    :try_end_212
    .catchall {:try_start_20c .. :try_end_212} :catchall_22d

    monitor-exit p0

    return-object p1

    .line 1103
    :cond_214
    :try_start_214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_22b
    .catchall {:try_start_214 .. :try_end_22b} :catchall_22d

    monitor-exit p0

    return-object p1

    :catchall_22d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTSSID:Ljava/lang/String;

    .line 904
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "Galaxy_5GMW_,IMEILast4Digits"

    .line 907
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parseSecProductFeatureSsid() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",parseSecProductFeatureSsid(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    const-string v2, ","

    .line 909
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 910
    :goto_4d
    array-length v4, v1

    const-string v5, " parseSecProductFeatureSsid() ssid:"

    if-ge v2, v4, :cond_258

    .line 911
    aget-object v4, v1, v2

    const-string v6, "Default"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, " "

    if-nez v4, :cond_214

    aget-object v4, v1, v2

    const-string v7, "AndroidHotspot"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto/16 :goto_214

    .line 919
    :cond_6a
    aget-object v4, v1, v2

    const-string v7, "ModelName"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 921
    :cond_7d
    aget-object v4, v1, v2

    const-string v7, "Random4Digits"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    if-eqz v4, :cond_93

    .line 922
    invoke-direct {p0, v9, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 923
    :cond_93
    aget-object v4, v1, v2

    const-string v10, "Mac4Digits"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 924
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a8

    .line 926
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_a8
    if-eqz p2, :cond_ab

    return-object p1

    .line 930
    :cond_ab
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 931
    :cond_b0
    aget-object v4, v1, v2

    const-string v10, "Mac3Digits"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    const/4 v4, 0x3

    .line 932
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c6

    .line 934
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_c6
    if-eqz p2, :cond_c9

    return-object p1

    .line 938
    :cond_c9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 939
    :cond_ce
    aget-object v4, v1, v2

    const-string v10, "Mac2Digits"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x2

    if-eqz v4, :cond_ec

    .line 940
    invoke-direct {p0, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLastDigits(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e4

    .line 942
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_e4
    if-eqz p2, :cond_e7

    return-object p1

    .line 946
    :cond_e7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 947
    :cond_ec
    aget-object v4, v1, v2

    const-string v11, "Min4Digits"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 948
    invoke-direct {p0, v9, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_101

    .line 950
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_101
    if-eqz p2, :cond_104

    return-object p1

    .line 954
    :cond_104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getCSCRegion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_112

    const-string v5, "KOR"

    .line 955
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11a

    :cond_112
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 956
    :cond_11a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getMacAddressLast6DigitsForKOR()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_125

    .line 958
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 961
    :cond_125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 963
    :cond_12a
    invoke-direct {p0, v9, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 966
    :cond_133
    aget-object v4, v1, v2

    const-string v7, "Min2Digits"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 967
    invoke-direct {p0, v10, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_148

    .line 969
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_148
    if-eqz p2, :cond_14b

    return-object p1

    .line 973
    :cond_14b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 974
    :cond_150
    aget-object v4, v1, v2

    const-string v7, "IMEILast2Digits"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 975
    invoke-direct {p0, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_165

    .line 977
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_165
    if-eqz p2, :cond_168

    return-object p1

    .line 981
    :cond_168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 982
    :cond_16d
    aget-object v4, v1, v2

    const-string v7, "IMEILast4Digits"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 983
    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_182

    .line 985
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    :cond_182
    if-eqz p2, :cond_185

    return-object p1

    .line 989
    :cond_185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 990
    :cond_18a
    aget-object v4, v1, v2

    const-string v7, "Space"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 991
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 992
    :cond_199
    aget-object v4, v1, v2

    const-string v6, "BrandName"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 993
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 994
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b6

    const-string v4, "brand"

    .line 995
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 997
    :cond_1b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_254

    .line 999
    :cond_1bb
    aget-object v4, v1, v2

    const-string v6, "ChameleonSSID"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20e

    .line 1000
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "SemWifiApConfigStore"

    const-string v7, "updateHotspotS"

    .line 1001
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "chameleon_ssid"

    .line 1003
    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_201

    const-string v7, "null"

    .line 1004
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e3

    goto :goto_201

    .line 1008
    :cond_1e3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_201
    :goto_201
    const-string v4, "ChameleonSSID is null -> ModelName is used."

    .line 1005
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_254

    .line 1013
    :cond_20e
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_254

    .line 913
    :cond_214
    :goto_214
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "global.device_name : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 915
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_242

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v4

    .line 918
    :cond_242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_254
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4d

    .line 1016
    :cond_258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 p1, 0x20

    if-le p0, p1, :cond_2bc

    .line 1018
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1019
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_2b1

    move p2, v3

    move v0, p2

    move v1, v0

    :goto_291
    if-gt p2, p1, :cond_2ab

    .line 1023
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, v0, v1

    .line 1024
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr p2, v0

    move v0, v2

    goto :goto_291

    :cond_2ab
    sub-int/2addr v0, v1

    .line 1027
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1028
    :cond_2b1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, p1, :cond_2bc

    .line 1029
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1032
    :cond_2bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reGenerateAndWriteConfiguration()V
    .registers 10

    const-string v0, "SemWifiApConfigStore"

    const-string v1, "Re-Generate SSID"

    .line 1182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reGenerateAndWriteConfiguration\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 1184
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_ap_guest_password"

    invoke-static {v1, v4, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    const/4 v1, 0x1

    .line 1187
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1188
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v3, "XXXX"

    .line 1189
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1190
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1191
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_disable_random_mac"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_64

    move v5, v1

    goto :goto_65

    :cond_64
    move v5, v2

    :goto_65
    const/4 v6, 0x0

    if-eqz v5, :cond_6e

    .line 1194
    :try_start_68
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_8e

    .line 1196
    :cond_6e
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1197
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_79

    goto :goto_8e

    :catch_79
    move-exception v5

    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setMacRandomizationSetting exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :goto_8e
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGMOBILEAPDEFAULTPWD:Ljava/lang/String;

    const-string v5, "None"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, v6, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_cb

    .line 1205
    :cond_9e
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c6

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1

    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_cb

    .line 1209
    :cond_c6
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1212
    :goto_cb
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1215
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#ERROR#SSID#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t#ERROR#SSID#\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    const-string v0, "regen SSID is not error"

    .line 1217
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v0, p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_10f

    :cond_10a
    const-string v0, "regen SSID is error. do not save"

    .line 1220
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    :cond_10f
    :goto_10f
    return-void
.end method

.method private reGenerateByRestoreHelperAndWriteConfiguration(Ljava/lang/String;)V
    .registers 8

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reGenerateByResotreHelperAndWriteConfiguration SSID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApConfigStore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reGenerateByResotreHelperAndWriteConfiguration ssid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 1132
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_ap_guest_password"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    const/4 v0, 0x1

    .line 1135
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1136
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1137
    invoke-virtual {v3, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1138
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_disable_random_mac"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_73

    move v3, v0

    goto :goto_74

    :cond_73
    move v3, v2

    :goto_74
    if-eqz v3, :cond_7c

    .line 1141
    :try_start_76
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_97

    .line 1143
    :cond_7c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v3, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_81} :catch_82

    goto :goto_97

    :catch_82
    move-exception v3

    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setMacRandomizationSetting exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :goto_97
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "CURR_PASSWORD"

    invoke-static {v3, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1149
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v5, "CURR_SECURITY_TYPE"

    invoke-static {v4, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wpa2_index"

    .line 1150
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    const-string v5, "KeyMgmt.WPA2_PSK"

    .line 1151
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5, v3, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_115

    :cond_ba
    const-string v0, "wpa3_index"

    .line 1153
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "KeyMgmt.SOFTAP_WPA3_SAE"

    .line 1154
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_115

    :cond_ce
    const-string v0, "wpa3_transition_index"

    .line 1156
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "KeyMgmt.SOFTAP_WPA3_SAE_TRANSITION"

    .line 1157
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_115

    :cond_e2
    const-string v0, "wpa3_owe_transition_index"

    .line 1159
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string v0, "KeyMgmt.SECURITY_TYPE_WPA3_OWE_TRANSITION"

    .line 1160
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_115

    :cond_f6
    const-string v0, "wpa3_owe_index"

    .line 1162
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_10b

    const-string v0, "KeyMgmt.SECURITY_TYPE_WPA3_OWE"

    .line 1163
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_115

    :cond_10b
    const-string v0, "KeyMgmt.NONE"

    .line 1166
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1169
    :goto_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore softApConfiguration() - ssid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " securityType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1172
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 1173
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#ERROR#SSID#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t#ERROR#SSID#\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16a

    const-string p1, "regen SSID is not error"

    .line 1174
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {p1, p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_16f

    :cond_16a
    const-string p1, "regen SSID is error. do not save"

    .line 1177
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    :goto_16f
    return-void
.end method

.method private readLogFile(Ljava/lang/StringBuffer;)V
    .registers 5

    .line 1533
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mObject:Ljava/lang/Object;

    monitor-enter p0

    .line 1534
    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1536
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_65

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 1540
    :try_start_13
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_4c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_40
    .catchall {:try_start_13 .. :try_end_18} :catchall_3e

    .line 1541
    :try_start_18
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1543
    :goto_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1545
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 1546
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_2b} :catch_3b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_38
    .catchall {:try_start_18 .. :try_end_2b} :catchall_35

    goto :goto_1d

    .line 1555
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_65

    goto :goto_58

    :catch_30
    move-exception p1

    .line 1557
    :goto_31
    :try_start_31
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_65

    goto :goto_58

    :catchall_35
    move-exception p1

    move-object v0, v2

    goto :goto_5a

    :catch_38
    move-exception p1

    move-object v0, v2

    goto :goto_41

    :catch_3b
    move-exception p1

    move-object v0, v2

    goto :goto_4d

    :catchall_3e
    move-exception p1

    goto :goto_5a

    :catch_40
    move-exception p1

    .line 1551
    :goto_41
    :try_start_41
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    if-eqz v0, :cond_58

    .line 1555
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_65

    goto :goto_58

    :catch_4a
    move-exception p1

    goto :goto_31

    :catch_4c
    move-exception p1

    .line 1549
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_3e

    if-eqz v0, :cond_58

    .line 1555
    :try_start_52
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_65

    goto :goto_58

    :catch_56
    move-exception p1

    goto :goto_31

    .line 1561
    :cond_58
    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_65

    return-void

    :goto_5a
    if-eqz v0, :cond_64

    .line 1555
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_65

    goto :goto_64

    :catch_60
    move-exception v0

    .line 1557
    :try_start_61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1560
    :cond_64
    :goto_64
    throw p1

    :catchall_65
    move-exception p1

    .line 1561
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_65

    throw p1
.end method

.method private removeDummyFile()V
    .registers 4

    .line 557
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/wifi/dummySoftap.conf"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "SemWifiApConfigStore"

    if-eqz v0, :cond_28

    .line 559
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing Dummmy File,result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_28
    const-string p0, " Dummmy File is not present"

    .line 562
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method private setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 4

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",setSoftApConfiguration() API\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 802
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "setAsopSoftApConfiguration() "

    .line 803
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 805
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 806
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setCurrentSoftApConfigToDB(Landroid/net/wifi/SoftApConfiguration;)V

    .line 807
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string p1, "softap_modified"

    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1402
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz p0, :cond_5

    return-object p1

    :cond_5
    if-eqz p1, :cond_2b

    .line 1405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_2b

    .line 1406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string p0, "fe:dc:ab"

    return-object p0
.end method


# virtual methods
.method public addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    .line 1414
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApConfigStore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_65

    .line 1418
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1420
    :cond_65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 584
    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    const-string v4, "#ERROR#SSID#"

    .line 585
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "\t#ERROR#SSID#\n"

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_33b

    if-eqz v1, :cond_99

    .line 587
    :cond_26
    :try_start_26
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2b
    .catchall {:try_start_26 .. :try_end_2a} :catchall_33b

    goto :goto_95

    :catch_2b
    move-exception v1

    :try_start_2c
    const-string v4, "SemWifiApConfigStore"

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSoftApConfiguration exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", getSoftApConfiguration exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_33b

    .line 592
    :try_start_5d
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_62
    .catchall {:try_start_5d .. :try_end_61} :catchall_33b

    goto :goto_95

    :catch_62
    move-exception v4

    :try_start_63
    const-string v5, "SemWifiApConfigStore"

    .line 594
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getSoftApConfiguration exception1 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", getSoftApConfiguration exception1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_95
    if-eqz v1, :cond_99

    .line 600
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 603
    :cond_99
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v1, :cond_2cf

    .line 604
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 606
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getCSCRegion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KOR"

    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isSimCheck()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_c2

    move v1, v3

    goto :goto_c3

    :cond_c2
    move v1, v0

    .line 612
    :goto_c3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->isUserConfiguration()Z

    move-result v4

    if-nez v4, :cond_f5

    const-string v1, "SemWifiApConfigStore"

    const-string v4, "AOSP generated configuration is found"

    .line 613
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AOSP generated configuration is found"

    .line 614
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":regenerating,AOSP generated configuration is found\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateAndWriteConfiguration()V

    :goto_f2
    move v0, v3

    goto/16 :goto_2cf

    :cond_f5
    const-string v4, "#ERROR#SSID#"

    .line 619
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_272

    const-string v4, "\t#ERROR#SSID#\n"

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_113

    goto/16 :goto_272

    .line 627
    :cond_113
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID is empty: isShutdownIntentReceived:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 629
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    if-nez v1, :cond_181

    .line 631
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "CURR_SSID"

    invoke-static {v1, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", getApConfig,SSID is empty, regenerating ssid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 633
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "#ERROR#SSID#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    const-string v0, "\t#ERROR#SSID#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17c

    .line 634
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateByRestoreHelperAndWriteConfiguration(Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 636
    :cond_17c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateAndWriteConfiguration()V

    goto/16 :goto_f2

    .line 639
    :cond_181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SSID is empty, Do nothing\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    goto/16 :goto_2cf

    .line 641
    :cond_19b
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mIsShutdownIntentReceived:Z

    if-nez v1, :cond_2cf

    .line 643
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 651
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v4

    if-eqz v4, :cond_1b8

    const-string v4, " AutoShutdown enabled"

    .line 652
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move v4, v3

    goto :goto_1b9

    :cond_1b8
    move v4, v0

    .line 656
    :goto_1b9
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_1dd

    const-string v4, " SSID is more than 32 charachters, getapconfig"

    .line 657
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move v4, v3

    .line 661
    :cond_1dd
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_disable_random_mac"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1ed

    move v5, v3

    goto :goto_1ee

    :cond_1ed
    move v5, v0

    .line 662
    :goto_1ee
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result v6

    if-nez v6, :cond_22b

    if-nez v5, :cond_22b

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RANDOM MAC NONE is set  but mDisableRandomMac:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_20c
    .catchall {:try_start_63 .. :try_end_20c} :catchall_33b

    .line 667
    :try_start_20c
    invoke-virtual {v1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 668
    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_212} :catch_213
    .catchall {:try_start_20c .. :try_end_212} :catchall_33b

    goto :goto_25e

    :catch_213
    move-exception v4

    :try_start_214
    const-string v5, "SemWifiApConfigStore"

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setMacRandomizationSetting exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25e

    :cond_22b
    if-ne v6, v3, :cond_25f

    if-eqz v5, :cond_25f

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RANDMAC is set  but mDisableRandomMac:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_243
    .catchall {:try_start_214 .. :try_end_243} :catchall_33b

    .line 676
    :try_start_243
    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_246} :catch_247
    .catchall {:try_start_243 .. :try_end_246} :catchall_33b

    goto :goto_25e

    :catch_247
    move-exception v4

    :try_start_248
    const-string v5, "SemWifiApConfigStore"

    .line 678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setMacRandomizationSetting exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25e
    move v4, v3

    :cond_25f
    if-eqz v4, :cond_2cf

    .line 682
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 683
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    .line 684
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_2cf

    .line 620
    :cond_272
    :goto_272
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->isJDMDevice:Z

    if-nez v4, :cond_280

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v4

    if-nez v4, :cond_280

    if-nez v1, :cond_2cf

    :cond_280
    const-string v4, "SemWifiApConfigStore"

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNoSimBlocked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoSimBlocked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":regenerating,isNoSimBlocked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->reGenerateAndWriteConfiguration()V

    goto/16 :goto_f2

    .line 688
    :cond_2cf
    :goto_2cf
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->DBG:Z

    if-eqz v1, :cond_31c

    .line 689
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-nez v1, :cond_2df

    const-string v1, "SemWifiApConfigStore"

    const-string v2, "getWifiApConfiguration return null"

    .line 690
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32f

    :cond_2df
    const-string v1, "SemWifiApConfigStore"

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getWifiApConfiguration mWifiApConfig SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pwd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_303

    const-string v2, "xxxx"

    :cond_303
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",security:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32f

    .line 695
    :cond_31c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-nez v1, :cond_328

    const-string v1, "SemWifiApConfigStore"

    const-string v2, "getWifiApConfiguration return null"

    .line 696
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32f

    :cond_328
    const-string v1, "SemWifiApConfigStore"

    const-string v2, "getWifiApConfiguration ssid"

    .line 698
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32f
    if-eqz v0, :cond_337

    .line 701
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getAsopSoftApConfiguration(Z)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_335
    .catchall {:try_start_248 .. :try_end_335} :catchall_33b

    monitor-exit p0

    return-object v0

    .line 703
    :cond_337
    :try_start_337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;
    :try_end_339
    .catchall {:try_start_337 .. :try_end_339} :catchall_33b

    monitor-exit p0

    return-object v0

    :catchall_33b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultDeviceName()Ljava/lang/String;
    .registers 3

    .line 1589
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    .line 1590
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_device_name"

    .line 1589
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1591
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-object p0

    .line 1595
    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_ConfigDevBrandName"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1597
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    return-object p0

    .line 1600
    :cond_2c
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1601
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1603
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_46
    return-object p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 6

    .line 1578
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemWifiApConfigStore \n"

    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "during OS upgrage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "softap_migration_q_os_to_r"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1581
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WCM:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n dump of"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->LOG_DEBUG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",size ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1584
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->readLogFile(Ljava/lang/StringBuffer;)V

    .line 1585
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "SSID is more than 32 characters"

    .line 440
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_c
    if-ge v1, p0, :cond_27

    add-int/lit8 v3, v1, 0x1

    .line 444
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    const/16 v4, 0x20

    if-le v2, v4, :cond_25

    .line 447
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_25
    move v1, v3

    goto :goto_c

    :cond_27
    :goto_27
    return-object p1
.end method

.method public declared-synchronized isCustomerChanged()Z
    .registers 5

    monitor-enter p0

    .line 820
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_customer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCustomerChanged() pre:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Curr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 824
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_ap_customer"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_95

    .line 825
    monitor-exit p0

    return v1

    .line 827
    :cond_3b
    :try_start_3b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_95

    if-eqz v3, :cond_43

    .line 829
    monitor-exit p0

    return v1

    .line 830
    :cond_43
    :try_start_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 832
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_ap_customer"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_95

    .line 833
    monitor-exit p0

    return v1

    :cond_56
    :try_start_56
    const-string v0, " diff, changed  return true"

    .line 835
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isCustomerChanged\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " put :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_customer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_92
    .catchall {:try_start_56 .. :try_end_92} :catchall_95

    const/4 v0, 0x1

    .line 839
    monitor-exit p0

    return v0

    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "SemWifiApConfigStore"

    const-string v1, "setApConfiguration() - Start"

    .line 713
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", setApConfiguration: band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",security:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    :cond_4b
    const-string v1, "#ERROR#SSID#"

    .line 717
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "\t#ERROR#SSID#\n"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_67
    const-string v1, "SemWifiApConfigStore"

    const-string v2, "setApConfiguration() - SSID before updating is errSSID"

    .line 718
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "XXXX"

    .line 719
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 720
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    :cond_79
    if-nez p1, :cond_a7

    .line 723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",setApConfiguration,config is null,get defaultConfig\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 724
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 725
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 726
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    goto :goto_e3

    :cond_a7
    const-string v1, "#ERROR#SSID#"

    .line 728
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "\t#ERROR#SSID#\n"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "SSID is modified ,so make hotspot usage history"

    .line 729
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v2, "hotspot_enabled_history"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_e1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 734
    :goto_e3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "wifi_ap_disable_random_mac"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f4

    move p1, v1

    goto :goto_f5

    :cond_f4
    move p1, v0

    .line 735
    :goto_f5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result v2

    if-nez v2, :cond_146

    if-nez p1, :cond_146

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setapConfig RANDOM MAC NONE is set  but mDisableRandomMac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 738
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_11c
    .catchall {:try_start_1 .. :try_end_11c} :catchall_271

    .line 740
    :try_start_11c
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 741
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_125} :catch_126
    .catchall {:try_start_11c .. :try_end_125} :catchall_271

    goto :goto_13d

    :catch_126
    move-exception p1

    :try_start_127
    const-string v2, "SemWifiApConfigStore"

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setMacRandomizationSetting exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_13d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    goto :goto_18a

    :cond_146
    if-ne v2, v1, :cond_18a

    if-eqz p1, :cond_18a

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setapConfig RANDMAC is set  but mDisableRandomMac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 748
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_167
    .catchall {:try_start_127 .. :try_end_167} :catchall_271

    .line 750
    :try_start_167
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16b
    .catchall {:try_start_167 .. :try_end_16a} :catchall_271

    goto :goto_182

    :catch_16b
    move-exception p1

    :try_start_16c
    const-string v2, "SemWifiApConfigStore"

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setMacRandomizationSetting exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_182
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 756
    :cond_18a
    :goto_18a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    .line 757
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1a6

    .line 758
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-le v2, v1, :cond_242

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_242

    .line 759
    :cond_1a6
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 760
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-ne p1, v1, :cond_1f0

    const-string p1, "SemWifiApConfigStore"

    const-string v1, "6GHz selected, but WPA2 is set, error"

    .line 761
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, " setApConfiguration() 6GHz selected, but WPA2 is set, error"

    .line 762
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setApConfiguration() 6GHz selected, but WPA2 is set, error \n  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 764
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 765
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    goto :goto_242

    .line 766
    :cond_1f0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-nez p1, :cond_242

    const-string p1, "SemWifiApConfigStore"

    const-string v1, "6GHz selected, but OPEN type is set, error"

    .line 767
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, " setApConfiguration() 6GHz selected, but OPEN type is set, error "

    .line 768
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssetApConfiguration() 6GHz selected, but OPEN type is set, error \n "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    const-string p1, "SemWifiApConfigStore"

    const-string v1, "6GHz selected, but OPEN type is set, OWE not supported error"

    .line 774
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, " setApConfiguration() 6GHz selected, but OPEN type is set, OWE not supported error "

    .line 775
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setApConfiguration() 6GHz selected, but OPEN type is set, OWE not supported error \n "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V
    :try_end_240
    .catchall {:try_start_16c .. :try_end_240} :catchall_271

    .line 777
    monitor-exit p0

    return-void

    .line 781
    :cond_242
    :goto_242
    :try_start_242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setApConfiguration() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 782
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_26f
    .catchall {:try_start_242 .. :try_end_26f} :catchall_271

    .line 784
    monitor-exit p0

    return-void

    :catchall_271
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCurrentSoftApConfigToDB(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 1107
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentApConfiguration() - ssid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " securityTypeIndex "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiApConfigStore"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CURR_SSID"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CURR_PASSWORD"

    invoke-static {v0, v2, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_42

    const-string p1, "wpa2_index"

    goto :goto_5c

    :cond_42
    const/4 p1, 0x3

    if-ne v1, p1, :cond_48

    const-string p1, "wpa3_index"

    goto :goto_5c

    :cond_48
    const/4 p1, 0x2

    if-ne v1, p1, :cond_4e

    const-string p1, "wpa3_transition_index"

    goto :goto_5c

    :cond_4e
    const/4 p1, 0x4

    if-ne v1, p1, :cond_54

    const-string p1, "wpa3_owe_transition_index"

    goto :goto_5c

    :cond_54
    const/4 p1, 0x5

    if-ne v1, p1, :cond_5a

    const-string p1, "wpa3_owe_index"

    goto :goto_5c

    :cond_5a
    const-string p1, "open_index"

    .line 1126
    :goto_5c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v0, "CURR_SECURITY_TYPE"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setWifiApConfigurationToDefault()V
    .registers 3

    monitor-enter p0

    .line 811
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",setWifiApConfigurationToDefault() API\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->dumpToLogFile(Ljava/lang/String;Z)V

    .line 812
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 813
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultApConfiguration(Landroid/net/wifi/SoftApConfiguration$Builder;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->configBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 814
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 815
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setAsopSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 816
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
