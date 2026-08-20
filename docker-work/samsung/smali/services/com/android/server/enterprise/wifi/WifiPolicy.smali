.class public Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;,
        Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

.field public static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field public static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field public static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "192.168.1.100"

.field public static final EAP:Ljava/lang/String; = "eap"

.field public static final EAP_FAST:I = 0x12

.field public static final EAP_LEAP:I = 0x13

.field public static final EAP_STRINGS:[Ljava/lang/String;

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE:Ljava/lang/String; = "engine"

.field public static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field public static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field public static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field public static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field public static final HC:Ljava/lang/String; = "a-zA-Z0-9\\_"

.field public static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field public static final IDENTITY:Ljava/lang/String; = "identity"

.field public static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final KEY_MGMT_CCKM:I = 0x18

.field public static final KEY_MGMT_FT_EAP:I = 0x7

.field public static final KEY_MGMT_FT_PSK:I = 0x6

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final MAX_EAP_ID_LENGTH:I = 0xc8

.field public static final MAX_EAP_PW_LENGTH:I = 0xc8

.field public static final MAX_NAME_LENGTH:I = 0x20

.field public static final MAX_PASSWORD_LENGTH:I = 0x40

.field public static final MIN_PASSWORD_LENGTH:I = 0x8

.field public static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PHASE1:Ljava/lang/String; = "phase1"

.field public static final PHASE2:Ljava/lang/String; = "phase2"

.field public static final PHASE2_STRINGS:[Ljava/lang/String;

.field public static final PREF_KEYSTORE:Ljava/lang/String; = "keystore://"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field public static final SECURITY_LEVELS:[Ljava/lang/String;

.field public static final SECURITY_LEVEL_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field public static final WEP_KEY_MAX_INDEX:I = 0x4

.field public static final WIFI_ENTERPRISE_CONFIG_KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final WIFI_MIGRATION_DONE:Ljava/lang/String; = "ok"

.field public static final WIFI_NETWORK_MIGRATION:Ljava/lang/String; = "wifi_network_migration"

.field public static final WIFI_POLICY_MIGRATION:Ljava/lang/String; = "wifi_policy_migration"

.field public static isBootCompleted:Z

.field public static final mSecurityLevel:[Ljava/lang/String;


# instance fields
.field public mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public volatile mIsAPSettingFromAdmin:Z

.field public mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public mUserManager:Landroid/os/UserManager;

.field public mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final pm:Landroid/content/pm/PackageManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWifiState(Lcom/android/server/enterprise/wifi/WifiPolicy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevaluateNetworkFromDatabase(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->evaluateNetworkFromDatabase()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateWifiNetworkIfNeeded(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->migrateWifiNetworkIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputisBootCompleted(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 33

    const-string v0, "PEAP"

    const-string v1, "TLS"

    const-string v2, "TTLS"

    const-string v3, "PWD"

    const-string v4, "SIM"

    const-string v5, "AKA"

    const-string v6, "AKA\'"

    const-string v7, "WFA-UNAUTH-TLS"

    const-string v8, "WAPI_CERT"

    .line 190
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EAP_STRINGS:[Ljava/lang/String;

    const-string v1, "NULL"

    const-string v2, "PAP"

    const-string v3, "MSCHAP"

    const-string v4, "MSCHAPV2"

    const-string v5, "GTC"

    const-string v6, "SIM"

    const-string v7, "AKA"

    const-string v8, "AKA\'"

    .line 195
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 214
    sput-boolean v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    const-string v1, "Open"

    const-string v2, "WEP"

    const-string v3, "WPA/WPA2/FT PSK"

    const-string v4, "802.1x EAP-LEAP"

    const-string v5, "802.1x EAP-FAST"

    const-string v6, "802.1x EAP-PEAP"

    const-string v7, "802.1x EAP-TTLS"

    const-string v8, "802.1x EAP-TLS"

    const-string v9, "FT-PSK"

    const-string v10, "802.1x EAP-PEAP-FT"

    const-string v11, "802.1x EAP-PEAP-CCKM"

    const-string v12, "802.1x EAP-TTLS-FT"

    const-string v13, "802.1x EAP-TTLS-CCKM"

    const-string v14, "802.1x EAP-TLS-FT"

    const-string v15, "802.1x EAP-TLS-CCKM"

    const-string v16, "802.1x EAP-LEAP-FT"

    const-string v17, "802.1x EAP-LEAP-CCKM"

    const-string v18, "802.1x EAP-FAST-FT"

    const-string v19, "802.1x EAP-FAST-CCKM"

    const-string v20, "802.1x EAP-PWD"

    const-string v21, "802.1x EAP-PWD-FT"

    const-string v22, "802.1x EAP-PWD-CCKM"

    const-string v23, "802.1x EAP-SIM"

    const-string v24, "802.1x EAP-SIM-FT"

    const-string v25, "802.1x EAP-SIM-CCKM"

    const-string v26, "802.1x EAP-AKA"

    const-string v27, "802.1x EAP-AKA-FT"

    const-string v28, "802.1x EAP-AKA-CCKM"

    const-string v29, "802.1x EAP-AKA\'"

    const-string v30, "802.1x EAP-AKA\'-FT"

    const-string v31, "802.1x EAP-AKA\'-CCKM"

    const-string v32, "SAE"

    .line 222
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const-string v1, "NONE"

    const-string v2, "WEP"

    const-string v3, "PSK"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "EAP-PEAP"

    const-string v7, "EAP-TTLS"

    const-string v8, "EAP-TLS"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, "EAP-PWD"

    const-string v21, ""

    const-string v22, ""

    const-string v23, "EAP-SIM"

    const-string v24, ""

    const-string v25, ""

    const-string v26, "EAP-AKA"

    const-string v27, ""

    const-string v28, ""

    const-string v29, "EAP-AKA\'"

    const-string v30, ""

    const-string v31, ""

    const-string v32, "SAE"

    .line 236
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    const-string v1, "NONE"

    const-string v2, "WEP"

    const-string v3, "PSK"

    const-string v4, "EAP-LEAP"

    const-string v5, "EAP-FAST"

    const-string v6, "EAP-PEAP"

    const-string v7, "EAP-TTLS"

    const-string v8, "EAP-TLS"

    const-string v9, "FT-PSK"

    const-string v10, "EAP-PEAP-FT"

    const-string v11, "EAP-PEAP-CCKM"

    const-string v12, "EAP-TTLS-FT"

    const-string v13, "EAP-TTLS-CCKM"

    const-string v14, "EAP-TLS-FT"

    const-string v15, "EAP-TLS-CCKM"

    const-string v16, "EAP-LEAP-FT"

    const-string v17, "EAP-LEAP-CCKM"

    const-string v18, "EAP-FAST-FT"

    const-string v19, "EAP-FAST-CCKM"

    const-string v20, "EAP-PWD"

    const-string v21, "EAP-PWD-FT"

    const-string v22, "EAP-PWD-CCKM"

    const-string v23, "EAP-SIM"

    const-string v24, "EAP-SIM-FT"

    const-string v25, "EAP-SIM-CCKM"

    const-string v26, "EAP-AKA"

    const-string v27, "EAP-AKA-FT"

    const-string v28, "EAP-AKA-CCKM"

    const-string v29, "EAP-AKA\'"

    const-string v30, "EAP-AKA\'-FT"

    const-string v31, "EAP-AKA\'-CCKM"

    const-string v32, "SAE"

    .line 247
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->SECURITY_LEVELS:[Ljava/lang/String;

    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    .line 279
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    .line 280
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 356
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;)V
    .registers 5

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 210
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 328
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2933
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    iget-object v0, p1, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->pm:Landroid/content/pm/PackageManager;

    .line 362
    invoke-virtual {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 363
    invoke-virtual {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 365
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 366
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 368
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 372
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2482
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x22

    if-le v0, v1, :cond_1c

    const/4 v3, 0x0

    .line 2483
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1c

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1c

    return-object p0

    .line 2486
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecurityForWifiProfile(Landroid/net/wifi/WifiConfiguration;)I
    .registers 12

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 789
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    .line 790
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_17

    return v3

    :cond_17
    return v2

    .line 794
    :cond_18
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    return v2

    .line 796
    :cond_22
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/16 v5, 0x8

    if-eqz v1, :cond_2e

    return v5

    .line 798
    :cond_2e
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 p0, 0x1f

    return p0

    .line 800
    :cond_39
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x12

    const/16 v9, 0x13

    const/4 v10, 0x5

    if-eqz v1, :cond_70

    .line 802
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    if-nez p0, :cond_52

    return v10

    :cond_52
    if-ne p0, v2, :cond_55

    return v4

    :cond_55
    if-ne p0, v3, :cond_58

    return v5

    :cond_58
    if-ne p0, v9, :cond_5b

    return v7

    :cond_5b
    if-ne p0, v8, :cond_5e

    return v6

    :cond_5e
    if-ne p0, v7, :cond_61

    return v9

    :cond_61
    if-ne p0, v10, :cond_66

    const/16 p0, 0x19

    return p0

    :cond_66
    if-ne p0, v4, :cond_6b

    const/16 p0, 0x1c

    return p0

    :cond_6b
    if-ne p0, v6, :cond_e4

    const/16 p0, 0x16

    return p0

    .line 822
    :cond_70
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 823
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    if-nez p0, :cond_83

    const/16 p0, 0x9

    return p0

    :cond_83
    if-ne p0, v2, :cond_88

    const/16 p0, 0xb

    return p0

    :cond_88
    if-ne p0, v3, :cond_8d

    const/16 p0, 0xd

    return p0

    :cond_8d
    if-ne p0, v9, :cond_92

    const/16 p0, 0xf

    return p0

    :cond_92
    if-ne p0, v8, :cond_97

    const/16 p0, 0x11

    return p0

    :cond_97
    if-ne p0, v7, :cond_9c

    const/16 p0, 0x14

    return p0

    :cond_9c
    if-ne p0, v10, :cond_a1

    const/16 p0, 0x1a

    return p0

    :cond_a1
    if-ne p0, v4, :cond_a6

    const/16 p0, 0x1d

    return p0

    :cond_a6
    if-ne p0, v6, :cond_e4

    const/16 p0, 0x17

    return p0

    .line 843
    :cond_ab
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x18

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 844
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    if-nez p0, :cond_c0

    const/16 p0, 0xa

    return p0

    :cond_c0
    if-ne p0, v2, :cond_c5

    const/16 p0, 0xc

    return p0

    :cond_c5
    if-ne p0, v3, :cond_ca

    const/16 p0, 0xe

    return p0

    :cond_ca
    if-ne p0, v9, :cond_cf

    const/16 p0, 0x10

    return p0

    :cond_cf
    if-ne p0, v8, :cond_d2

    return v8

    :cond_d2
    if-ne p0, v7, :cond_d7

    const/16 p0, 0x15

    return p0

    :cond_d7
    if-ne p0, v10, :cond_dc

    const/16 p0, 0x1b

    return p0

    :cond_dc
    if-ne p0, v4, :cond_e1

    const/16 p0, 0x1e

    return p0

    :cond_e1
    if-ne p0, v6, :cond_e4

    return v5

    :cond_e4
    return v0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .registers 2

    .line 4381
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 4385
    :cond_c
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 2490
    array-length v0, p1

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    .line 2491
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_18

    .line 2493
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 3847
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3849
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    if-nez v0, :cond_15

    const-string p0, "activateWifiSsidRestriction - not a valid caller, aborting!"

    .line 3851
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3855
    :cond_15
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string/jumbo v5, "wifiSsidRestriction"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string p0, "activateWifiSsidRestriction - fail to store value to database"

    .line 3859
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3863
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 3866
    :try_start_31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "WifiPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has changed Wifi SSID restriction to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3868
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3865
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_9d

    .line 3870
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateWifiSsidRestriction - caller uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enforced caller uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0

    :catchall_9d
    move-exception p0

    .line 3870
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3871
    throw p0
.end method

.method public addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I
    .registers 7

    const/4 v0, -0x1

    const-string v1, "WifiPolicyService"

    if-nez p1, :cond_b

    const-string p0, "addNetworkWithRandomizationState() : config is null"

    .line 4390
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4395
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceKnoxExceptionPermission()V

    .line 4397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p2, :cond_17

    const/4 p2, 0x0

    .line 4400
    :try_start_15
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 4402
    :cond_17
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_23
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    .line 4406
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_21
    move-exception p0

    goto :goto_2d

    :catch_23
    move-exception p0

    :try_start_24
    const-string p1, "addNetworkWithRandomizationState() failed"

    .line 4404
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 4406
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4407
    throw p0
.end method

.method public addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3325
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 3327
    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "WifiPolicyService"

    const/4 v4, 0x0

    if-nez v2, :cond_17

    const-string v0, "addWifiSsidToBlackList - not a valid caller, aborting!"

    .line 3329
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_17
    move-object/from16 v5, p2

    .line 3333
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 3335
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    goto/16 :goto_f9

    .line 3341
    :cond_27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x1

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3342
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "WIFI_SSID"

    .line 3343
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "adminUid"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "WIFI_LIST_TYPE"

    const-string v12, "BLACKLIST"

    .line 3345
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_62

    .line 3346
    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 3347
    invoke-virtual {v8, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_62

    const/4 v8, 0x1

    goto :goto_63

    :cond_62
    move v8, v4

    :goto_63
    if-eqz v8, :cond_a4

    .line 3350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 3353
    :try_start_6c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has added SSID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to the restriction blacklist."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3354
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3352
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9b
    .catchall {:try_start_6c .. :try_end_9b} :catchall_9f

    .line 3356
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a4

    :catchall_9f
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3357
    throw v0

    :cond_a4
    :goto_a4
    const/4 v4, 0x0

    goto :goto_2c

    .line 3361
    :cond_a6
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 3362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWifiSsidToBlackList - caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", enforced caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", list size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3362
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_f6

    .line 3366
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result v0

    if-eqz v0, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v4, 0x0

    :goto_f7
    move v8, v4

    :cond_f8
    return v8

    :cond_f9
    :goto_f9
    const-string v0, "addWifiSsidToBlackList - failed with invalid request"

    .line 3336
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3592
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 3594
    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "WifiPolicyService"

    const/4 v4, 0x0

    if-nez v2, :cond_17

    const-string v0, "addWifiSsidToWhiteList - not a valid caller, aborting!"

    .line 3596
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_17
    move-object/from16 v5, p2

    .line 3600
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 3602
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    goto/16 :goto_f9

    .line 3608
    :cond_27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x1

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3609
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "WIFI_SSID"

    .line 3610
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "adminUid"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "WIFI_LIST_TYPE"

    const-string v12, "WHITELIST"

    .line 3612
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_62

    .line 3613
    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 3614
    invoke-virtual {v8, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_62

    const/4 v8, 0x1

    goto :goto_63

    :cond_62
    move v8, v4

    :goto_63
    if-eqz v8, :cond_a4

    .line 3617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 3620
    :try_start_6c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has added SSID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to the restriction whitelist."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3621
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3619
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9b
    .catchall {:try_start_6c .. :try_end_9b} :catchall_9f

    .line 3623
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a4

    :catchall_9f
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3624
    throw v0

    :cond_a4
    :goto_a4
    const/4 v4, 0x0

    goto :goto_2c

    .line 3628
    :cond_a6
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 3629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWifiSsidToWhiteList - caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", enforced caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", list size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3631
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3629
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_f6

    .line 3633
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3634
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result v0

    if-eqz v0, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v4, 0x0

    :goto_f7
    move v8, v4

    :cond_f8
    return v8

    :cond_f9
    :goto_f9
    const-string v0, "addWifiSsidToWhiteList - failed with invalid request"

    .line 3603
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 3227
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowOpenWifiAp - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_64

    .line 3233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3235
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 3236
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 3237
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_49

    const/16 v4, 0xc

    if-ne v2, v4, :cond_5b

    .line 3239
    :cond_49
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sem_wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 3240
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    .line 3241
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    :try_end_5b
    .catchall {:try_start_2a .. :try_end_5b} :catchall_5f

    .line 3245
    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    :catchall_5f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3246
    throw p0

    .line 3248
    :cond_64
    :goto_64
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "WIFI"

    const-string v1, "allowOpenWifi"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 3175
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowWifiApSettingUserModification - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "WIFI"

    const-string v1, "allowWifiApSettingModification"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 4344
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4346
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4348
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "WIFI"

    const-string v2, "allowWifiScanning"

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 4351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p2, :cond_29

    :try_start_1c
    const-string/jumbo p1, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    .line 4354
    invoke-static {v0, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception p0

    .line 4357
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4358
    throw p0

    .line 4357
    :cond_29
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowWifiScanning - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiPolicyService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final checkDeprecatedAndInvalidFields(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .registers 6

    .line 1123
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "WifiPolicyService"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_10

    const-string p0, "WifiAdminProfile::ENGINE_SECPKCS11 engine is no longer supported!"

    .line 1124
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1128
    :cond_10
    iget-object p1, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string p0, "WifiAdminProfile::privateKey is deprecated and shall not be used. Please use WifiAdminProfile::clientCertification instead."

    .line 1129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1134
    :cond_1e
    iget-object p1, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    const-string p0, "WifiAdminProfile::proxyUsername is deprecated and shall not be used. Please use WifiAdminProfile::proxyAuthConfigList instead."

    .line 1135
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1140
    :cond_2c
    iget-object p1, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3a

    const-string p0, "WifiAdminProfile::proxyPassword is deprecated and shall not be used. Please use WifiAdminProfile::proxyAuthConfigList instead."

    .line 1141
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1146
    :cond_3a
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    .line 1148
    :cond_41
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result p0

    const/4 p1, 0x2

    if-ne p1, p0, :cond_4e

    const-string p0, "WifiAdminProfile::ENGINE_UCM is no longer supported from Tiramisu!"

    .line 1149
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1153
    :cond_4e
    iget p0, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    if-ne p0, p1, :cond_60

    iget-object p0, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 1154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_60

    const-string p0, "Empty proxyPacUrl provided with PROXY_STATE_AUTO_CONFIGURE"

    .line 1155
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1159
    :cond_60
    iget-object p0, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz p0, :cond_8a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8a

    .line 1160
    iget-object p0, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/net/AuthConfig;

    if-eqz p1, :cond_84

    .line 1161
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->isValid()Z

    move-result p1

    if-nez p1, :cond_70

    :cond_84
    const-string p0, "Invalid auth config provided in proxyAuthConfigList"

    .line 1162
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8a
    return v0
.end method

.method public final checkSecurityLevel(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .registers 7

    .line 998
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WifiPolicyService"

    if-nez v0, :cond_d

    const-string p0, "Profile not set, security is null"

    .line 1000
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1003
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiProfile - sec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    return v1

    :cond_2b
    const-string v3, "PSK"

    .line 1008
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "SAE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_3b
    iget-object v3, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1009
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_49

    const-string p0, "PSK not set"

    .line 1010
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_49
    const-string p0, "WEP"

    .line 1014
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_ac

    .line 1015
    iget p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-lt p0, v0, :cond_a6

    const/4 v3, 0x4

    if-le p0, v3, :cond_5a

    goto :goto_a6

    :cond_5a
    if-ne p0, v0, :cond_6b

    .line 1019
    iget-object p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string/jumbo p0, "wepkey1 not set but index is set to 1"

    .line 1020
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1023
    :cond_6b
    iget p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v4, 0x2

    if-ne p0, v4, :cond_7f

    iget-object p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7f

    const-string/jumbo p0, "wepkey2 not set but index is set to 2"

    .line 1024
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1027
    :cond_7f
    iget p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v4, 0x3

    if-ne p0, v4, :cond_93

    iget-object p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_93

    const-string/jumbo p0, "wepkey3 not set but index is set to 3"

    .line 1028
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1031
    :cond_93
    iget p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne p0, v3, :cond_ac

    iget-object p0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ac

    const-string/jumbo p0, "wepkey4 not set but index is set to 4"

    .line 1032
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a6
    :goto_a6
    const-string p0, "WebKeyId invalid"

    .line 1016
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ac
    return v0
.end method

.method public final clearAuthConfigFromDb(Ljava/lang/String;)V
    .registers 4

    .line 1410
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "networkSSID"

    .line 1411
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WifiProxyAuthTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method public final clearProxyInfoFromDb(Ljava/lang/String;)V
    .registers 5

    .line 1403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "networkSSID"

    .line 1404
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WifiProxyTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1406
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->removeWifiProxy(Ljava/lang/String;)V

    return-void
.end method

.method public clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 16

    .line 3460
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3462
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const-string p0, "clearWifiSsidBlackList - not a valid caller, aborting!"

    .line 3464
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    const-string v3, "adminUid"

    const-string v4, "WIFI_LIST_TYPE"

    .line 3468
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 3471
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3472
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "BLACKLIST"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 3475
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 3482
    :try_start_3e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "WifiPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has removed all SSIDs from the restriction blacklist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3483
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 3481
    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_65
    .catchall {:try_start_3e .. :try_end_65} :catchall_69

    .line 3485
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6e

    :catchall_69
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3486
    throw p0

    .line 3489
    :cond_6e
    :goto_6e
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 3490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearWifiSsidBlackList - caller uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", enforced caller uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b1

    .line 3493
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3494
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v0, p1, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result p0

    if-eqz p0, :cond_b1

    move v2, v6

    :cond_b1
    move v3, v2

    :cond_b2
    return v3
.end method

.method public clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 16

    .line 3725
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3727
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const-string p0, "clearWifiSsidWhiteList - not a valid caller, aborting!"

    .line 3729
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    const-string v3, "adminUid"

    const-string v4, "WIFI_LIST_TYPE"

    .line 3733
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 3736
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3737
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "WHITELIST"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 3739
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 3745
    :try_start_3e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "WifiPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has removed all SSIDs from the restriction whitelist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3746
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 3744
    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_65
    .catchall {:try_start_3e .. :try_end_65} :catchall_69

    .line 3748
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6e

    :catchall_69
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3749
    throw p0

    .line 3752
    :cond_6e
    :goto_6e
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 3753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearWifiSsidWhiteList - caller uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", enforced caller uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b1

    .line 3756
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3757
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v0, p1, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result p0

    if-eqz p0, :cond_b1

    move v2, v6

    :cond_b1
    move v3, v2

    :cond_b2
    return v3
.end method

.method public final computeprefixLength(Ljava/net/InetAddress;)I
    .registers 8

    .line 2923
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    if-ge v1, p1, :cond_1e

    aget-byte v3, p0, v1

    move v4, v0

    :goto_d
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1b

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    and-int/2addr v5, v3

    if-eqz v5, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return v2
.end method

.method public final convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_36

    .line 4187
    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_36

    .line 4189
    :cond_6
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_28

    aget-object v2, p1, v1

    .line 4192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 4195
    :cond_28
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4197
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    const-string p0, ""

    return-object p0
.end method

.method public final convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .registers 5

    .line 1345
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "adminUid"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "networkSSID"

    .line 1347
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "host"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "port"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1350
    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "username"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "password"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertProxyInfoToContentValues(ILjava/lang/String;Landroid/net/ProxyInfo;)Landroid/content/ContentValues;
    .registers 8

    .line 1356
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1360
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_16

    .line 1361
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 1363
    :goto_17
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1364
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v1

    .line 1367
    :goto_27
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1368
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/NetworkUtils;->getExclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    :cond_35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "adminUid"

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "networkSSID"

    .line 1372
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "host"

    .line 1373
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p3}, Landroid/net/ProxyInfo;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "port"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "pacfile"

    .line 1375
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "exclusion"

    .line 1376
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_10

    .line 4201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_10

    :cond_9
    const-string p0, ","

    .line 4203
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final convertToWifiConfiguration(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;I)Landroid/net/wifi/WifiConfiguration;
    .registers 6

    .line 1191
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createNetworkSSID(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 1193
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1194
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_1c
    if-eqz p2, :cond_32

    .line 1196
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1197
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_32
    if-eqz p2, :cond_48

    .line 1199
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1200
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_48
    if-eqz p2, :cond_5e

    .line 1202
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1203
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_5e
    if-eqz p2, :cond_69

    .line 1205
    iget v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_69

    .line 1206
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_69
    if-eqz p2, :cond_7c

    .line 1208
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 1209
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    const-string/jumbo v1, "password"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_7c
    if-eqz p2, :cond_8c

    .line 1211
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1212
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_8c
    if-eqz p2, :cond_9c

    .line 1214
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 1215
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_9c
    if-eqz p2, :cond_ae

    .line 1217
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 1218
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v1, "ca_cert"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_ae
    if-eqz p2, :cond_c0

    .line 1221
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 1222
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v1, "client_cert"

    .line 1223
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_c0
    if-eqz p2, :cond_d3

    .line 1226
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 1227
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    const-string/jumbo v1, "phase1"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_d3
    if-eqz p2, :cond_e6

    .line 1229
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 1230
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    const-string/jumbo v1, "phase2"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_e6
    if-eqz p2, :cond_f9

    .line 1232
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 1233
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    const-string/jumbo v1, "identity"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_f9
    if-eqz p2, :cond_10b

    .line 1235
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 1236
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    const-string v1, "anonymous_identity"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_10b
    if-eqz p2, :cond_113

    .line 1239
    iget-boolean v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_113
    if-eqz p2, :cond_126

    .line 1241
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_126

    .line 1242
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    const-string/jumbo v1, "networkStaticIp"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_126
    if-eqz p2, :cond_139

    .line 1244
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 1245
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    const-string/jumbo v1, "networkStaticGateway"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_139
    if-eqz p2, :cond_14c

    .line 1247
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14c

    .line 1248
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    const-string/jumbo v1, "networkStaticPrimaryDns"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_14c
    if-eqz p2, :cond_15f

    .line 1250
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15f

    .line 1251
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    const-string/jumbo v1, "networkStaticSecondaryDns"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_15f
    if-eqz p2, :cond_172

    .line 1253
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_172

    .line 1254
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    const-string/jumbo v1, "networkStaticSubnetMask"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_172
    if-eqz p2, :cond_17a

    .line 1257
    iget v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_17a
    const/4 v0, 0x1

    if-eqz p2, :cond_18f

    .line 1259
    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18f

    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    if-ne v1, v0, :cond_18f

    .line 1261
    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_18f
    if-eqz p2, :cond_1a7

    .line 1264
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_1a7

    iget v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    if-ne v1, v0, :cond_1a7

    .line 1266
    iget v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_1a7
    if-eqz p2, :cond_1cb

    .line 1269
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    if-eqz v0, :cond_1cb

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1cb

    .line 1271
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1272
    iget-object v1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1273
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_1cb
    if-eqz p2, :cond_1db

    .line 1276
    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1db

    .line 1277
    iget-object p1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_1db
    return-object p2
.end method

.method public final createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;I)I
    .registers 12

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 515
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 517
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiEphemeralOrPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 520
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v4
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_91

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v4, :cond_4d

    .line 521
    :try_start_38
    array-length v8, v4

    if-lez v8, :cond_4d

    aget-object v4, v4, v7

    .line 522
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 523
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    move v7, v5

    .line 526
    :cond_4d
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 527
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_60

    :cond_5f
    move v5, v7

    :goto_60
    if-eqz v5, :cond_6a

    const v4, 0x7fffffff

    .line 532
    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 533
    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    .line 535
    :cond_6a
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_10

    :cond_70
    const/4 v2, -0x1

    .line 544
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    move-result p0

    const-string p1, "WifiPolicyService"

    .line 546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added network to wifi - id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_38 .. :try_end_8d} :catchall_91

    .line 548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_91
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw p0
.end method

.method public final createIpConfiguration(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)Landroid/net/IpConfiguration;
    .registers 5

    .line 2552
    new-instance p0, Landroid/net/IpConfiguration;

    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    .line 2553
    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2554
    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 2555
    invoke-virtual {p0, p3}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2556
    invoke-virtual {p0, p4}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    return-object p0
.end method

.method public final createNetworkSSID(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createNetworkSSID - entered - ssid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    const-string p0, "SSID is empty"

    .line 472
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 480
    :cond_23
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v1, 0x20

    if-le p0, v1, :cond_34

    const-string p0, "SSID exceeds maximum length 32"

    .line 483
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 487
    :cond_34
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 489
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 p2, -0x1

    .line 490
    iput p2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p2, 0x1

    .line 492
    iput-boolean p2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 494
    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2}, Ljava/util/BitSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 495
    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    :cond_53
    const-string p2, "createNetworkSSID - exited"

    .line 498
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/samsung/android/knox/net/ProxyProperties;"
        }
    .end annotation

    .line 1460
    new-instance p0, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {p0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    const/4 v0, 0x1

    if-ne p6, v0, :cond_15

    .line 1462
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 1464
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 1465
    invoke-virtual {p0, p5}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    return-object p0

    :cond_15
    const/4 p1, 0x2

    if-ne p6, p1, :cond_22

    .line 1468
    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 1470
    invoke-virtual {p0, p5}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;
    .registers 4

    .line 2828
    new-instance p0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {p0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 2829
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2830
    invoke-virtual {p0, p2}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2831
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2832
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 2833
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 2835
    :cond_26
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;
    .registers 3

    .line 2815
    new-instance p0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {p0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 2816
    invoke-virtual {p0, p2}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2817
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2818
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    .line 2819
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 2820
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 2822
    :cond_26
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 4276
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump WifiPolicyService"

    .line 4278
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4282
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WifiPolicyService]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mWifiAllowed : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4285
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowStateChange : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4286
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowAutomaticConnections : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4287
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowUserChanges : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPromptCredentialsEnabled : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4289
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowUserProfiles : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ssidBlockList : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlockList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ssidAllowList : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidAllowList()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final enableNetworkAndMaybeConnect(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq v0, p1, :cond_37

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_37

    .line 1311
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1313
    :try_start_e
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->enableNetwork(IZ)V

    .line 1314
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    .line 1315
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1317
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1318
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->connect(I)V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_32

    .line 1321
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public final enforceAutomaticConnectionIfNeeded()V
    .registers 8

    const-string v0, "WifiPolicyService"

    const-string v1, "adminUid"

    const-string v2, "allowAutomaticConnection"

    .line 5140
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 5146
    :try_start_b
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI"

    invoke-virtual {v5, v6, v3, v4, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 5149
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1c

    goto :goto_62

    .line 5157
    :cond_1c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5161
    :cond_1f
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 5160
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, -0x1

    if-nez v3, :cond_33

    .line 5166
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_3a

    .line 5169
    :cond_33
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1f

    move v1, v5

    :goto_3a
    if-ne v1, v5, :cond_42

    const-string p0, "enforceAutomaticConnectionIfNeeded - no enforcement"

    .line 5172
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 5175
    :cond_42
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_8d

    const-string v2, "enforceAutomaticConnectionIfNeeded - enforcing after reboot"

    .line 5178
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V

    goto :goto_8d

    .line 5150
    :cond_62
    :goto_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceAutomaticConnectionIfNeeded - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_71

    const-string v1, "Cursor is null"

    goto :goto_73

    :cond_71
    const-string v1, "Cursor is empty"

    .line 5151
    :goto_73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5150
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7d} :catch_85
    .catchall {:try_start_b .. :try_end_7d} :catchall_83

    if-eqz v4, :cond_82

    .line 5187
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_82
    return-void

    :catchall_83
    move-exception p0

    goto :goto_91

    :catch_85
    move-exception p0

    :try_start_86
    const-string v1, "enforceAutomaticConnectionIfNeeded"

    .line 5184
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_83

    if-eqz v4, :cond_90

    .line 5187
    :cond_8d
    :goto_8d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_90
    return-void

    :goto_91
    if-eqz v4, :cond_96

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 5189
    :cond_96
    throw p0
.end method

.method public final enforceKnoxExceptionPermission()V
    .registers 3

    .line 458
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 440
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 435
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSystemProcess()V
    .registers 2

    .line 452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_b

    return-void

    .line 453
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system process"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemUser()V
    .registers 2

    .line 446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_b

    return-void

    .line 447
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 426
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final evaluateAndMigrateDPMAPIs(Landroid/database/Cursor;)V
    .registers 9

    const-string v0, "evaluateAndMigrateDPMAPIs - END"

    const-string v1, "WifiPolicyService"

    const-string v2, "evaluateAndMigrateDPMAPIs - START"

    .line 4780
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4783
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_c
    const-string v2, "adminUid"

    .line 4785
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4787
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_1d

    goto :goto_5e

    :cond_1d
    const-string/jumbo v4, "minimumRequiredSecurity"

    .line 4793
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4792
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3d

    .line 4795
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 4796
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4795
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    :cond_3d
    const-string/jumbo v4, "wifiSsidRestriction"

    .line 4801
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4800
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5e

    .line 4802
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v4, v3, v2, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 4805
    :cond_5e
    :goto_5e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_62} :catch_67
    .catchall {:try_start_9 .. :try_end_62} :catchall_65

    if-nez v2, :cond_c

    goto :goto_6d

    :catchall_65
    move-exception p0

    goto :goto_71

    :catch_67
    move-exception p0

    :try_start_68
    const-string p1, "evaluateAndMigrateDPMAPIs"

    .line 4807
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_65

    .line 4809
    :goto_6d
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_71
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    throw p0
.end method

.method public final evaluateAndMigrateUserRestrictionAPIs(Landroid/database/Cursor;)V
    .registers 12

    const-string v0, "evaluateAndMigrateUserRestrictionAPIs - END"

    const-string v1, "WifiPolicyService"

    const-string v2, "evaluateAndMigrateUserRestrictionAPIs - START"

    .line 4716
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_12
    const-string v8, "allowWifi"

    .line 4730
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2b

    const-string v8, "allowWifiStateChanges"

    .line 4732
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4731
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_2c

    :cond_2b
    move v4, v9

    :cond_2c
    const-string v8, "allowUserProfiles"

    .line 4739
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4738
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_39

    move v5, v9

    :cond_39
    const-string v8, "allowAutomaticConnection"

    .line 4745
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4744
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_50

    const-string v6, "adminUid"

    .line 4751
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v6, v9

    .line 4753
    :cond_50
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_12

    if-eqz v4, :cond_5b

    .line 4756
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    :cond_5b
    if-eqz v5, :cond_60

    .line 4759
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    :cond_60
    if-eqz v6, :cond_86

    if-eq v7, v2, :cond_86

    .line 4764
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 4767
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7d} :catch_80
    .catchall {:try_start_9 .. :try_end_7d} :catchall_7e

    goto :goto_86

    :catchall_7e
    move-exception p0

    goto :goto_8a

    :catch_80
    move-exception p0

    :try_start_81
    const-string p1, "evaluateAndMigrateUserRestrictionAPIs"

    .line 4773
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_7e

    .line 4775
    :cond_86
    :goto_86
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_8a
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    throw p0
.end method

.method public final evaluateNetworkFromDatabase()V
    .registers 9

    const-string v0, "WifiPolicyService"

    const-string v1, "evaluateNetworkFromDatabase - START"

    .line 5105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworksByAdminUid()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 5109
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_c6

    .line 5113
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateNetworkFromDatabase - network map size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5113
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_35

    .line 5118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 5119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 5120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_35

    .line 5122
    :cond_69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_82

    goto :goto_73

    .line 5125
    :cond_82
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 5126
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5125
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_73

    .line 5129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID from admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist anymore on Wi-Fi module"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationMDM(Ljava/lang/String;IZ)Z

    goto :goto_73

    :cond_c0
    const-string p0, "evaluateNetworkFromDatabase - END"

    .line 5136
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c6
    :goto_c6
    const-string p0, "Network list is null or empty"

    .line 5110
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getAllBlockedList()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2433
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI"

    const-string v1, "blockedSSIDList"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2437
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2438
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, ","

    .line 2439
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2440
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_33
    return-object v0
.end method

.method public final getAllEnterpriseSSIDs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2561
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI_CONF"

    const-string/jumbo v1, "networkSSID"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAllNetworksByAdminUid()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    const-string v0, "adminUid"

    const-string/jumbo v1, "networkSSID"

    const-string/jumbo v2, "networkKeyMgmt"

    .line 5024
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 5030
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    const-string v4, "WifiPolicyService"

    if-eqz v3, :cond_a9

    .line 5032
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    goto/16 :goto_a9

    .line 5036
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllNetworksByAdminUid - cv entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x0

    .line 5039
    :goto_3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a8

    .line 5040
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_4e

    goto :goto_a5

    .line 5043
    :cond_4e
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_55

    goto :goto_a5

    .line 5046
    :cond_55
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5047
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_60

    goto :goto_a5

    .line 5049
    :cond_60
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5050
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6b

    goto :goto_a5

    .line 5052
    :cond_6b
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 5053
    iput-object v9, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 5054
    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 5057
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_88

    .line 5058
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5061
    :cond_88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllNetworksByAdminUid - adding network for admin: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_a8
    return-object v5

    :cond_a9
    :goto_a9
    const-string p0, "getAllNetworksByAdminUid - cv is empty or null"

    .line 5033
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public final getAllSsidAllowList()Ljava/lang/String;
    .registers 5

    .line 4312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4313
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllWifiSsidWhiteListsForDump()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 4315
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_48

    :cond_12
    const/4 v1, 0x0

    .line 4318
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 4319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_48
    :goto_48
    const-string p0, "No item found"

    .line 4316
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4323
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAllSsidBlockList()Ljava/lang/String;
    .registers 5

    .line 4297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4298
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllWifiSsidBlackListsForDump()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 4300
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_48

    :cond_12
    const/4 v1, 0x0

    .line 4303
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 4304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_48
    :goto_48
    const-string p0, "No item found"

    .line 4301
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4308
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 3512
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 3515
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v1, "adminUid"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3518
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 3520
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3522
    :cond_1e
    new-instance p1, Ljava/util/HashMap;

    .line 3523
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3525
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3526
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 3529
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3531
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3532
    new-instance v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 3533
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3534
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "BLACKLIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 3535
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 3538
    :cond_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAllWifiSsidBlackLists: list size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getAllWifiSsidBlackListsForDump()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 3545
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3548
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 3550
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3552
    :cond_1b
    new-instance v0, Ljava/util/HashMap;

    .line 3553
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3555
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3556
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 3559
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3561
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3562
    new-instance v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 3563
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3564
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "BLACKLIST"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 3565
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_90
    return-object v1
.end method

.method public getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 3776
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 3779
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v1, "adminUid"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3782
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 3784
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3786
    :cond_1e
    new-instance p1, Ljava/util/HashMap;

    .line 3787
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3789
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3790
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 3793
    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3795
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3796
    new-instance v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 3797
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3798
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 3799
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 3802
    :cond_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAllWifiSsidWhiteLists: list size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getAllWifiSsidWhiteListsForDump()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .line 3809
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3812
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 3814
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3816
    :cond_1b
    new-instance v0, Ljava/util/HashMap;

    .line 3817
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3819
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3820
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 3823
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3825
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3826
    new-instance v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 3827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3828
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "WHITELIST"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 3829
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_90
    return-object v1
.end method

.method public getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2079
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v0, "allowUserChanges"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2082
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 2088
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllowUserPolicyChanges: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    .line 1976
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p3

    :cond_7
    const/4 p1, 0x1

    .line 1979
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI"

    const-string v1, "allowUserProfiles"

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1981
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_16

    move p1, p3

    :cond_29
    if-nez p1, :cond_33

    if-eqz p2, :cond_33

    const p0, 0x1040466

    .line 1988
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1991
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllowUserProfiles: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WifiPolicyService"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_e

    const-string v0, "application_policy"

    .line 416
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 418
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public final getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "host"

    const-string/jumbo v2, "port"

    const-string/jumbo v3, "username"

    const-string/jumbo v4, "password"

    .line 1419
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 1426
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "networkSSID"

    .line 1427
    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WifiProxyAuthTable"

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2b

    return-object v0

    .line 1439
    :cond_2b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1440
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1441
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1442
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1443
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v6, :cond_53

    .line 1446
    sget v6, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1449
    :cond_53
    new-instance v8, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v5, v6, v7, p1}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_60
    return-object v0
.end method

.method public getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2035
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v0, "allowAutomaticConnection"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2037
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 2043
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAutomaticConnectionToWifi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getBackwardsProxyCredentialsFromDatabase()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "networkProxyUsername"

    const-string/jumbo v1, "networkProxyPassword"

    const-string/jumbo v2, "networkSSID"

    .line 4484
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 4490
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1b

    .line 4492
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 4494
    :cond_1b
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 4495
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 4496
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4497
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4498
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4500
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_24

    .line 4505
    :cond_4f
    new-instance v7, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-direct {v7, v5, v6}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4506
    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_58
    return-object v3
.end method

.method public final getBlockedList(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2448
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI"

    const-string v1, "blockedSSIDList"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2450
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_23

    const-string v0, ","

    .line 2452
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2453
    array-length v0, p0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 2454
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    return-object p1
.end method

.method public getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1691
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1692
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1694
    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    return-object p1
.end method

.method public final getCallerInfoFromUid(I)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallerInfoFromUid START - parentUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adminName"

    const-string/jumbo v2, "isPseudoAdmin"

    .line 4893
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "adminUid"

    .line 4896
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 4900
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 4903
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN_INFO"

    invoke-virtual {v6, v8, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_92

    .line 4905
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_92

    .line 4911
    :cond_41
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4912
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 4913
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4914
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getWorkProfileUid(Ljava/lang/String;)I

    move-result p1

    .line 4917
    :cond_61
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 4918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerInfoFromUid END - profileUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", componentName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_91

    const/4 v0, -0x1

    if-ne p1, v0, :cond_87

    goto :goto_91

    .line 4924
    :cond_87
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_91
    :goto_91
    return-object v4

    :cond_92
    :goto_92
    const-string p0, "getCallerInfoFromUid - cv is empty or null"

    .line 4906
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public final getCallingUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 5

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 679
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1e

    .line 681
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI_CONF"

    const-string/jumbo v0, "networkSSID"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_1e
    const/4 p1, -0x1

    if-ne p0, p1, :cond_28

    const-string p1, "WifiPolicyService"

    const-string p2, "No admin found for the given SSID"

    .line 685
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return p0
.end method

.method public final getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .registers 7

    .line 2409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2411
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2c

    const/4 v2, 0x0

    if-nez p0, :cond_d

    .line 2424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 2414
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 2416
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2417
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    if-ne v4, p1, :cond_17

    move-object v2, v3

    .line 2424
    :cond_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2425
    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 410
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 412
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2843
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public final getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;
    .registers 2

    .line 2839
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public final getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7

    if-eqz p1, :cond_79

    .line 2249
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_16

    .line 2250
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    return v0

    .line 2254
    :cond_16
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v0, 0x2

    if-nez p0, :cond_78

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    .line 2255
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_78

    .line 2257
    :cond_29
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_36

    const/16 p0, 0x1f

    return p0

    .line 2259
    :cond_36
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v3, 0x7

    if-nez p0, :cond_51

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2260
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_51

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x18

    .line 2261
    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 2263
    :cond_51
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    const/4 p1, 0x5

    if-nez p0, :cond_5b

    return p1

    :cond_5b
    if-ne p0, v0, :cond_5e

    return v2

    :cond_5e
    if-ne p0, v1, :cond_61

    return v3

    :cond_61
    const/4 v0, 0x3

    const/16 v1, 0x13

    if-ne p0, v0, :cond_67

    return v1

    :cond_67
    if-ne p0, p1, :cond_6c

    const/16 p0, 0x19

    return p0

    :cond_6c
    if-ne p0, v2, :cond_71

    const/16 p0, 0x1c

    return p0

    :cond_71
    const/4 p1, 0x4

    if-ne p0, p1, :cond_77

    const/16 p0, 0x16

    return p0

    :cond_77
    return v1

    :cond_78
    :goto_78
    return v0

    :cond_79
    const/4 p0, -0x1

    return p0
.end method

.method public getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 6

    .line 2235
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI"

    const-string/jumbo v1, "minimumRequiredSecurity"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2239
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getSecurityLevel(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getSecurityLevel(I)I

    move-result v3

    if-le v2, v3, :cond_10

    move v0, v1

    goto :goto_10

    .line 2243
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMinimumRequiredSecurity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 17

    move-object v0, p0

    const-string v1, "adminUid"

    const-string/jumbo v2, "networkSSID"

    .line 2709
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 2713
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string/jumbo v7, "networkSSID"

    const-string/jumbo v8, "networkKeyMgmt"

    const-string/jumbo v9, "networkProxyState"

    const-string/jumbo v10, "networProxyName"

    const-string/jumbo v11, "networkProxyPort"

    const-string/jumbo v12, "networkProxyExclList"

    const-string/jumbo v13, "networkProxyPacUrl"

    .line 2715
    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v4

    .line 2725
    iget-object v6, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    invoke-virtual {v6, v7, v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "WifiPolicyService"

    if-eqz v1, :cond_ea

    .line 2728
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_49

    goto/16 :goto_ea

    :cond_49
    move v6, v5

    .line 2733
    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ca

    .line 2734
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_59

    goto :goto_71

    .line 2737
    :cond_59
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2738
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_64

    goto :goto_71

    :cond_64
    const-string/jumbo v9, "networkKeyMgmt"

    .line 2740
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2741
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_74

    :goto_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 2743
    :cond_74
    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    const-string/jumbo v1, "networkProxyState"

    .line 2746
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c9

    .line 2747
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "networkProxyPort"

    .line 2748
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "networProxyName"

    .line 2750
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_9c

    .line 2751
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_9d

    :cond_9c
    move v2, v5

    :goto_9d
    const-string/jumbo v4, "networkProxyPacUrl"

    .line 2752
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "networkProxyExclList"

    .line 2755
    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2754
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2756
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 2749
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 2757
    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 2758
    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    :cond_c9
    return-object v8

    .line 2763
    :cond_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkConfiguration - network not found in database - ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_ea
    :goto_ea
    const-string v0, "getNetworkConfiguration - cv is empty or null"

    .line 2729
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final getNetworkCreatorInfo(Landroid/net/wifi/WifiConfiguration;I)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkCreatorInfo - ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 4849
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkUidFromDatabase(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_29
    if-ne p2, v0, :cond_32

    const-string p0, "getNetworkCreatorInfo - Invalid adminUid, aborting..."

    .line 4854
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 4858
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 10

    .line 2571
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2574
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2576
    :try_start_a
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2579
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 2580
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiEphemeralOrPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2581
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2582
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 2583
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_51

    if-eqz v5, :cond_16

    move-object v1, v4

    .line 2591
    :cond_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_51
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2592
    throw p0
.end method

.method public final getNetworkLinkSecurityWifiProfile(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2

    .line 778
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getSecurityForWifiProfile(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_c

    .line 780
    sget-object p1, Lcom/android/server/enterprise/wifi/WifiPolicy;->SECURITY_LEVELS:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 588
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "networkSSID"

    .line 589
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 592
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    .line 594
    :goto_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 595
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2f
    return-object p1
.end method

.method public final getNetworkUidFromDatabase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 4862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkUidFromDatabase - ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adminUid"

    .line 4863
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "networkSSID"

    const-string/jumbo v4, "networkKeyMgmt"

    .line 4866
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 4870
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 4873
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI_CONF"

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_57

    .line 4875
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_45

    goto :goto_57

    .line 4879
    :cond_45
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_52

    goto :goto_56

    .line 4880
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_56
    return p1

    :cond_57
    :goto_57
    const-string p0, "getNetworkUidFromDatabase - cv is empty or null"

    .line 4876
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 3985
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 2361
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string/jumbo v0, "passwordHidden"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2364
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move p1, v0

    goto :goto_10

    .line 2369
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getPasswordHidden: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 331
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2122
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string/jumbo v0, "promptCredentials"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2125
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    .line 2131
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getPromptCredentialsEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getProxyState(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3

    .line 1645
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1647
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1648
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x2

    return p0

    .line 1650
    :cond_26
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    return v0
.end method

.method public final getSecurityLevel(I)I
    .registers 3

    const/16 p0, 0x13

    const/4 v0, 0x1

    if-eq p1, p0, :cond_23

    const/16 p0, 0x16

    if-eq p1, p0, :cond_21

    const/16 p0, 0x19

    if-eq p1, p0, :cond_21

    const/16 p0, 0x1c

    if-eq p1, p0, :cond_21

    const/16 p0, 0x1f

    if-eq p1, p0, :cond_1f

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    :pswitch_19
    const/4 v0, 0x6

    goto :goto_24

    :pswitch_1b
    const/4 v0, 0x3

    goto :goto_24

    :pswitch_1d
    const/4 v0, 0x2

    goto :goto_24

    :cond_1f
    const/4 v0, 0x4

    goto :goto_24

    :cond_21
    :pswitch_21
    const/4 v0, 0x7

    goto :goto_24

    :cond_23
    :pswitch_23
    const/4 v0, 0x5

    :goto_24
    :pswitch_24
    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1d
        :pswitch_1b
        :pswitch_23
        :pswitch_19
        :pswitch_19
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public final getStaticIpConfigurationIfEnabled(Landroid/net/IpConfiguration;)Landroid/net/StaticIpConfiguration;
    .registers 3

    .line 1723
    invoke-virtual {p1}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1725
    new-instance p1, Landroid/net/StaticIpConfiguration;

    invoke-direct {p1}, Landroid/net/StaticIpConfiguration;-><init>()V

    :cond_b
    const/4 v0, 0x0

    .line 1728
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1730
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object p1

    :cond_16
    if-nez p1, :cond_19

    return-object v0

    .line 1735
    :cond_19
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    return-object v0

    :cond_20
    return-object p1
.end method

.method public final getValidSsid(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 671
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_5

    :cond_3
    move-object p1, p0

    goto :goto_f

    .line 1481
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    :goto_f
    return-object p1
.end method

.method public getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 8

    .line 3125
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 3127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3129
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_65

    const-string p1, "WifiPolicyService"

    const/4 v2, 0x0

    if-eqz p0, :cond_5b

    .line 3131
    :try_start_12
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3132
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3133
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    if-eqz v4, :cond_54

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_45

    .line 3144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert fail, unsupported security type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3144
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_65

    .line 3150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 3141
    :cond_45
    :try_start_45
    iget-object p0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_5a

    .line 3138
    :cond_4d
    iget-object p0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_5a

    .line 3135
    :cond_54
    iget-object p0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_65

    :goto_5a
    move-object v2, v3

    .line 3150
    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "getWifiApSetting"

    .line 3153
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_65
    move-exception p0

    .line 3150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3151
    throw p0
.end method

.method public getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .registers 9

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1487
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    .line 1493
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v1

    .line 1496
    :cond_15
    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(I)V

    .line 1498
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_46

    .line 1500
    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1501
    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 1503
    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(Ljava/lang/String;)V

    .line 1506
    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    goto :goto_46

    :cond_3d
    const-string/jumbo v4, "keystore://USRCERT_"

    .line 1509
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1514
    :cond_46
    :goto_46
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1515
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 1516
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1519
    :cond_54
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1520
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 1521
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1524
    :cond_5e
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1525
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1526
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1528
    :cond_6a
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 1529
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 1530
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1532
    :cond_77
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    .line 1533
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 1534
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1536
    :cond_84
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    .line 1537
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1538
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1541
    :cond_91
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 1543
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 1545
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 1548
    :cond_a0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_aa

    .line 1550
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 1553
    :cond_aa
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    aget-object v2, v2, v5

    if-eqz v2, :cond_d2

    const-string v5, "NULL"

    .line 1555
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ce

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    goto :goto_ce

    :cond_c5
    const-string v5, "auth="

    .line 1558
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    goto :goto_d2

    :cond_ce
    :goto_ce
    const-string v2, "None"

    .line 1556
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 1562
    :cond_d2
    :goto_d2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ec

    .line 1563
    array-length v5, v2

    if-lez v5, :cond_ec

    .line 1564
    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v2, :cond_ec

    const-string/jumbo v5, "keystore://CACERT_"

    .line 1566
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1571
    :cond_ec
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_126

    .line 1573
    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v5, "keystore://"

    .line 1574
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 1575
    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string/jumbo v5, "keystore://USRPKEY_"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_126

    .line 1577
    :cond_10b
    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 1579
    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_126

    .line 1582
    :cond_11c
    iget-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v5, "USRPKEY_"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1586
    :cond_126
    :goto_126
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurityWifiProfile(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1588
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    .line 1589
    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v5, :cond_139

    move v1, v4

    .line 1590
    :cond_139
    iput-boolean v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    if-eqz v1, :cond_1b3

    .line 1592
    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1b3

    .line 1594
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    if-eqz v2, :cond_17b

    .line 1595
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17b

    .line 1596
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 1599
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1598
    invoke-static {v2}, Lcom/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTL(I)I

    move-result v2

    .line 1597
    invoke-static {v2}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v2

    .line 1599
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 1601
    :cond_17b
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_187

    .line 1603
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 1605
    :cond_187
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1606
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 1607
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 1609
    :cond_1a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 1610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 1615
    :cond_1b3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getProxyState(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 1616
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p1

    if-eqz p1, :cond_20e

    .line 1618
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cb

    .line 1620
    iput-object v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 1622
    :cond_1cb
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d4

    .line 1624
    iput v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    .line 1626
    :cond_1d4
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ec

    .line 1628
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 1631
    :cond_1ec
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1fc

    .line 1633
    iput-object p1, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 1636
    :cond_1fc
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_20e

    .line 1637
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20e

    .line 1638
    iput-object p0, v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    :cond_20e
    return-object v0
.end method

.method public final getWifiProxyFromDatabase()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;"
        }
    .end annotation

    .line 4419
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "networkSSID"

    const-string/jumbo v2, "host"

    const-string/jumbo v3, "port"

    const-string/jumbo v4, "pacfile"

    const-string v5, "exclusion"

    .line 4423
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 4431
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WifiProxyTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_25

    .line 4435
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 4437
    :cond_25
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 4438
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4439
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4440
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_45

    const/4 v10, 0x0

    goto :goto_4d

    :cond_45
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4442
    :goto_4d
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4443
    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4446
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_64

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 4447
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 4451
    :cond_64
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_73

    .line 4452
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v7

    goto :goto_7f

    .line 4454
    :cond_73
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 4455
    invoke-static {v9, v10, v7}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v7

    .line 4457
    :goto_7f
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 4458
    new-instance v12, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v12}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 4459
    invoke-virtual {v12, v9}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {v12, v10}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 4461
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 4462
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9d

    .line 4463
    invoke-virtual {v12, v9}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 4466
    :cond_9d
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 4465
    invoke-virtual {v12, v7}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 4467
    invoke-virtual {v12, v11}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 4468
    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 4470
    :cond_b0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    invoke-virtual {v7}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WifiPolicyService"

    .line 4470
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    :cond_cc
    return-object v0
.end method

.method public final getWorkProfileUid(Ljava/lang/String;)I
    .registers 8

    const-string v0, "adminUid"

    .line 4928
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "adminName"

    const-string/jumbo v3, "isPseudoAdmin"

    .line 4931
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    const-string v5, "0"

    aput-object v5, v3, p1

    .line 4938
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ADMIN_INFO"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_3e

    .line 4940
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_3e

    .line 4944
    :cond_2c
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_3d

    .line 4945
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_3d
    return p1

    :cond_3e
    :goto_3e
    const-string p0, "WifiPolicyService"

    const-string/jumbo v0, "getWorkProfileUid - cv is empty or null"

    .line 4941
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final hasValidSsid(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .registers 3

    const/4 p0, 0x0

    const-string v0, "WifiPolicyService"

    if-nez p1, :cond_b

    const-string p1, "WifiAdminProfile provided is null"

    .line 1178
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1182
    :cond_b
    iget-object p1, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "WifiAdminProfile::ssid provided is empty/null"

    .line 1183
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public final initializeWifiProxyListCache()V
    .registers 3

    .line 4413
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getWifiProxyFromDatabase()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    .line 4414
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 4415
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBackwardsProxyCredentialsFromDatabase()Ljava/util/Map;

    move-result-object p0

    .line 4414
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiBackCompatCredentialsCache(Ljava/util/Map;)V

    return-void
.end method

.method public final isAllowedToCreateProfileForSsid(ILjava/lang/String;)Z
    .registers 6

    .line 1101
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WifiPolicyService"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p0, "Network belongs to another admin - cannot edit it"

    .line 1102
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1107
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isDPMNetworkSSID(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_37

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 1109
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string p2, "device_policy"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_2e

    .line 1111
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    move p0, v0

    goto :goto_2f

    :cond_2e
    move p0, v2

    :goto_2f
    if-nez p0, :cond_37

    const-string p0, "Attempt to modify/override network created by device owner"

    .line 1114
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_37
    return v0
.end method

.method public final isDOOrPO(ILjava/lang/String;)Z
    .registers 4

    .line 4833
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_1a

    .line 4837
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 4838
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final isDPMNetworkSSID(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 562
    :cond_4
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 568
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_4f

    .line 570
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_4e

    .line 573
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 576
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v1, :cond_23

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 577
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string p0, "WifiPolicyService"

    const-string p1, "The profile creator is a Device Owner"

    .line 578
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4e
    return v0

    :catchall_4f
    move-exception p0

    .line 570
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 2

    .line 2544
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object p0

    .line 2545
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isIpAddress(Ljava/lang/String;)Z
    .registers 2

    .line 2399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string p0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    .line 2403
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 2404
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 3264
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v0, "allowOpenWifi"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3266
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 3272
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isOpenWifiApAllowed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final isSecurityLevelSupported(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "SAE"

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiPolicyService"

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "SAE is not supported on this device"

    .line 706
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 711
    :cond_19
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    .line 714
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/16 p0, 0x16

    const-string v3, ""

    .line 715
    aput-object v3, v0, p0

    const/16 p0, 0x17

    .line 716
    aput-object v3, v0, p0

    const/16 p0, 0x19

    .line 717
    aput-object v3, v0, p0

    const/16 p0, 0x1a

    .line 718
    aput-object v3, v0, p0

    const/16 p0, 0x1c

    .line 719
    aput-object v3, v0, p0

    const/16 p0, 0x1d

    .line 720
    aput-object v3, v0, p0

    .line 723
    :cond_3d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 726
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string/jumbo p0, "security level not supported"

    .line 727
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4e
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1913
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string p2, "allowWifi"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1916
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 1923
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isWifiAllowed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WifiPolicyService"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 3198
    iget-boolean p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    return v0

    .line 3200
    :cond_6
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v1, "allowWifiApSettingModification"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3202
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_14

    move v0, p1

    .line 3208
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isWifiApSettingUserModificationAllowed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isWifiEphemeralOrPasspoint(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_10

    .line 4338
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 p0, 0x1

    :cond_10
    return p0
.end method

.method public final isWifiMigrationNeeded(Ljava/lang/String;)Z
    .registers 5

    .line 5074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isWifiMigrationNeeded - type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_network_migration"

    .line 5076
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    const-string/jumbo v0, "wifi_policy_migration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    return v2

    .line 5081
    :cond_2b
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_42

    const-string/jumbo p1, "ok"

    .line 5082
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "Migration is not needed"

    .line 5083
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_42
    const-string p0, "Migration is needed"

    .line 5086
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isWifiProfileOwner(ILjava/lang/String;)Z
    .registers 5

    .line 1172
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "WIFI_CONF"

    const-string/jumbo v1, "networkSSID"

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 4367
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v0, "allowWifiScanning"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4370
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    :goto_22
    return p1
.end method

.method public final isWifiSsidRestrictionActive(I)Z
    .registers 5

    const-string v0, "WifiPolicyService"

    .line 3974
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI"

    const-string/jumbo v2, "wifiSsidRestriction"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 3976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiSsidRestrictionActive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    .line 3979
    invoke-virtual {p0}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 3968
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3969
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result p0

    return p0
.end method

.method public isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 4046
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WIFI"

    const-string v0, "allowWifiStateChanges"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4049
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    .line 4056
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isWifiStateChangeAllowed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiPolicyService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final isWifiStateEnabled()Z
    .registers 3

    .line 2384
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 2387
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public final isvalidSSIDName(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_b

    .line 4238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    .line 4239
    :cond_b
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isvalidSSIDName() : SSID is invalid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final loadWifiManager()V
    .registers 3

    .line 2378
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 2379
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_11
    return-void
.end method

.method public final declared-synchronized loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 3278
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    .line 3279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "WIFI_LIST_TYPE"

    const-string v2, "WIFI_SSID"

    .line 3280
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3281
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 3284
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    if-eqz p2, :cond_42

    .line 3286
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3287
    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3291
    :cond_42
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v2, "BLACKLIST"

    .line 3292
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WHITELIST"

    .line 3293
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v0, "WifiPolicyService"

    .line 3296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Black/white list table is empty - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_9c

    .line 3297
    monitor-exit p0

    return-object p2

    .line 3300
    :cond_74
    :try_start_74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "WIFI_LIST_TYPE"

    .line 3301
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "WIFI_SSID"

    .line 3302
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catchall {:try_start_74 .. :try_end_99} :catchall_9c

    goto :goto_78

    .line 3305
    :cond_9a
    monitor-exit p0

    return-object p2

    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final logProfileCreation(ILcom/samsung/android/knox/net/wifi/WifiAdminProfile;)V
    .registers 13

    .line 1326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1329
    :try_start_4
    iget-object p0, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_75

    const-string v2, ""

    if-eqz p0, :cond_1e

    .line 1330
    :try_start_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CA certificate: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    move-object p0, v2

    .line 1331
    :goto_1f
    iget-object v3, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v3, :cond_36

    .line 1332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Client credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_36
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has set a new wifi profile: SSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Security type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1338
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1333
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_71
    .catchall {:try_start_a .. :try_end_71} :catchall_75

    .line 1340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_75
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1341
    throw p0
.end method

.method public final makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .registers 6

    .line 2521
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 2522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, " "

    .line 2523
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2524
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_23

    aget-object v2, p1, v1

    .line 2525
    invoke-static {v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_20

    .line 2527
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    return-object p0
.end method

.method public final makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2499
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2506
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, -0x1

    move v1, v0

    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 2508
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-eq v1, v0, :cond_28

    .line 2509
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 2513
    :cond_28
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result p1

    if-lez p1, :cond_37

    .line 2514
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2517
    :cond_37
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final migrateWifiNetworkIfNeeded()V
    .registers 12

    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "migrateWifiNetworkIfNeeded"

    .line 4954
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wifi_network_migration"

    .line 4956
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiMigrationNeeded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string p0, "Wi-Fi network migration is not needed, skipping..."

    .line 4957
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4963
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllNetworksByAdminUid()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_14d

    .line 4964
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    goto/16 :goto_14d

    .line 4968
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateWifiNetworkIfNeeded - network map size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4969
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4968
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_46

    .line 4973
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 4974
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_46

    .line 4975
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7a

    goto :goto_46

    .line 4978
    :cond_7a
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v5

    if-nez v5, :cond_a8

    .line 4980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get network creator information for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4981
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " uid"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4980
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 4985
    :cond_a8
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/ComponentName;

    .line 4986
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4985
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isDOOrPO(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d6

    .line 4987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not migrate networks from Device Admin - uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    :cond_d6
    const/4 v6, 0x0

    .line 4993
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    if-nez v7, :cond_f0

    goto :goto_e1

    .line 4996
    :cond_f0
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 4998
    invoke-virtual {p0, v7, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4996
    invoke-virtual {p0, v8, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_136

    .line 5001
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Migrating network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " from uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/content/ComponentName;

    .line 5004
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 5003
    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I

    goto :goto_e1

    .line 5006
    :cond_136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find wifi network from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    :cond_14d
    :goto_14d
    const-string v3, "Network list is null or empty, network migration is not required"

    .line 4965
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_152} :catch_158
    .catchall {:try_start_17 .. :try_end_152} :catchall_156

    .line 5014
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    return-void

    :catchall_156
    move-exception v0

    goto :goto_160

    :catch_158
    move-exception v3

    .line 5012
    :try_start_159
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_156

    .line 5014
    :cond_15c
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    return-void

    :goto_160
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 5015
    throw v0
.end method

.method public final migrateWifiRelatedAPIs()Z
    .registers 11

    const-string/jumbo v0, "wifi_policy_migration"

    .line 4512
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiMigrationNeeded(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WifiPolicyService"

    if-nez v1, :cond_12

    const-string p0, "Wi-Fi policy migration is not needed, skipping..."

    .line 4513
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_12
    const-string v3, "adminUid"

    const-string v4, "allowWifi"

    const-string v5, "allowWifiStateChanges"

    const-string v6, "allowUserProfiles"

    const-string v7, "allowAutomaticConnection"

    const-string/jumbo v8, "minimumRequiredSecurity"

    const-string/jumbo v9, "wifiSsidRestriction"

    .line 4521
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 4532
    :try_start_27
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    invoke-virtual {v4, v5, v1, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 4535
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_38

    goto :goto_54

    .line 4539
    :cond_38
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->evaluateAndMigrateUserRestrictionAPIs(Landroid/database/Cursor;)V

    .line 4540
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->evaluateAndMigrateDPMAPIs(Landroid/database/Cursor;)V

    const-string/jumbo v1, "restriction_policy"

    .line 4542
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez v1, :cond_50

    const-string/jumbo v1, "migrateWifiRelatedAPIs - restrictionPolicy is null"

    .line 4545
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 4547
    :cond_50
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->evaluateAndMigrateWifiRelatedPolicyAPIs()V

    goto :goto_70

    .line 4536
    :cond_54
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateWifiRelatedAPIs - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_64

    const-string v4, "Cursor is null"

    goto :goto_66

    :cond_64
    const-string v4, "Cursor is empty"

    .line 4537
    :goto_66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4536
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_70} :catch_75
    .catchall {:try_start_27 .. :try_end_70} :catchall_73

    :goto_70
    if-eqz v3, :cond_81

    goto :goto_7e

    :catchall_73
    move-exception v1

    goto :goto_86

    :catch_75
    move-exception v1

    :try_start_76
    const-string/jumbo v4, "migrateWifiRelatedAPIs"

    .line 4551
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_73

    if-eqz v3, :cond_81

    .line 4554
    :goto_7e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4556
    :cond_81
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_86
    if-eqz v3, :cond_8b

    .line 4554
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4556
    :cond_8b
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 4557
    throw v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 393
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 395
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_19

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V

    .line 397
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    :cond_19
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->resetWifiPolicyAPIs(I)V

    return-void
.end method

.method public final persistWifiConfiguration(ILandroid/net/wifi/WifiConfiguration;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 8

    .line 1285
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "WifiPolicyService"

    if-nez p2, :cond_15

    const-string p0, "Failed to persist new configuration"

    .line 1287
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1291
    :cond_15
    iget-object p2, p3, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz p2, :cond_2d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 1292
    iget-object p2, p3, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2d

    const-string p0, "Failed to persist auth config list"

    .line 1294
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2d
    if-eqz p4, :cond_3f

    .line 1300
    invoke-static {p4}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 1299
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveProxyInfoToDb(ILjava/lang/String;Landroid/net/ProxyInfo;)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "Failed to persist proxy info"

    .line 1301
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    const/4 p0, 0x1

    return p0
.end method

.method public removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 12

    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1672
    :cond_8
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1677
    :try_start_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has allowed access to Wifi SSID: "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1678
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1676
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_47

    .line 1680
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1681
    throw p0
.end method

.method public final removeFromBlocked(ILjava/lang/String;)V
    .registers 4

    .line 2471
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2472
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2473
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    return-void
.end method

.method public removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 12

    const-string v0, "WifiPolicyService"

    const-string v1, ">>> removeNetworkConfiguration "

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_f

    return v1

    .line 615
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallingUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_17

    return v1

    .line 619
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_b7

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 623
    :try_start_25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_a9

    .line 625
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_31

    goto/16 :goto_a9

    .line 630
    :cond_31
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationMDM(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_40

    const-string p0, "Could not remove network from database"

    .line 634
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_b2

    .line 660
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 640
    :cond_40
    :try_start_40
    iget-object p2, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p2
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_b2

    const/4 p3, 0x1

    const-string v6, ""

    if-eqz p2, :cond_60

    .line 641
    :try_start_4b
    array-length v7, p2

    if-lez v7, :cond_60

    aget-object p2, p2, v1

    .line 642
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_60

    .line 643
    iget-object p2, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    move v1, p3

    .line 646
    :cond_60
    iget-object p2, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 647
    iget-object p2, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p2, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_73

    :cond_72
    move p3, v1

    .line 650
    :goto_73
    iget p2, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz p2, :cond_a5

    if-eqz p3, :cond_81

    const p1, 0x7fffffff

    .line 653
    iput p1, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 654
    invoke-virtual {p0, v5, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    .line 656
    :cond_81
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    .line 657
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Removing network id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_4b .. :try_end_a5} :catchall_b2

    .line 660
    :cond_a5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_a9
    :goto_a9
    :try_start_a9
    const-string p0, "Not a valid MDM SSID"

    .line 626
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_b2

    .line 660
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_b2
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    throw p0

    .line 665
    :cond_b7
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationMDM(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final removeNetworkConfigurationMDM(Ljava/lang/String;IZ)Z
    .registers 7

    .line 694
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string/jumbo v2, "networkSSID"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearAuthConfigFromDb(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->clearProxyInfoFromDb(Ljava/lang/String;)V

    :cond_17
    return p2
.end method

.method public removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3392
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 3394
    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "WifiPolicyService"

    const/4 v4, 0x0

    if-nez v2, :cond_18

    const-string/jumbo v0, "removeWifiSsidFromBlackList - not a valid caller, aborting!"

    .line 3396
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_18
    move-object/from16 v5, p2

    .line 3400
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_fd

    .line 3402
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    goto/16 :goto_fd

    .line 3408
    :cond_28
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    move v8, v7

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "adminUid"

    const-string v11, "WIFI_SSID"

    const-string v12, "WIFI_LIST_TYPE"

    .line 3409
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    .line 3413
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3414
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    aput-object v9, v11, v7

    const/4 v12, 0x2

    const-string v13, "BLACKLIST"

    aput-object v13, v11, v12

    if-eqz v8, :cond_64

    .line 3416
    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 3417
    invoke-virtual {v8, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    move v8, v7

    goto :goto_65

    :cond_64
    move v8, v4

    :goto_65
    if-eqz v8, :cond_a6

    .line 3420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 3423
    :try_start_6e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has removed SSID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from the restriction blacklist."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3424
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3422
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_a1

    .line 3426
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    :catchall_a1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3427
    throw v0

    :cond_a6
    :goto_a6
    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2e

    .line 3431
    :cond_a9
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 3432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWifiSsidFromBlackList - caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", enforced caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", list size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3432
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_fa

    .line 3436
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3437
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto :goto_fb

    :cond_fa
    const/4 v4, 0x0

    :goto_fb
    move v8, v4

    :cond_fc
    return v8

    :cond_fd
    :goto_fd
    const-string/jumbo v0, "removeWifiSsidFromBlackList - failed with invalid request"

    .line 3403
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3658
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 3660
    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v2

    const-string v3, "WifiPolicyService"

    const/4 v4, 0x0

    if-nez v2, :cond_18

    const-string/jumbo v0, "removeWifiSsidFromWhiteList - not a valid caller, aborting!"

    .line 3662
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_18
    move-object/from16 v5, p2

    .line 3666
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_fd

    .line 3668
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    goto/16 :goto_fd

    .line 3674
    :cond_28
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    move v8, v7

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "adminUid"

    const-string v11, "WIFI_SSID"

    const-string v12, "WIFI_LIST_TYPE"

    .line 3675
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    .line 3679
    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3680
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    aput-object v9, v11, v7

    const/4 v12, 0x2

    const-string v13, "WHITELIST"

    aput-object v13, v11, v12

    if-eqz v8, :cond_64

    .line 3682
    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 3683
    invoke-virtual {v8, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    move v8, v7

    goto :goto_65

    :cond_64
    move v8, v4

    :goto_65
    if-eqz v8, :cond_a6

    .line 3686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 3689
    :try_start_6e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "WifiPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has removed SSID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from the restriction whitelist."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3690
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3688
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_a1

    .line 3692
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    :catchall_a1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3693
    throw v0

    :cond_a6
    :goto_a6
    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2e

    .line 3697
    :cond_a9
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 3698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWifiSsidFromWhiteList - caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", enforced caller uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", list size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3698
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_fa

    .line 3702
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto :goto_fb

    :cond_fa
    const/4 v4, 0x0

    :goto_fb
    move v8, v4

    :cond_fc
    return v8

    :cond_fd
    :goto_fd
    const-string/jumbo v0, "removeWifiSsidFromWhiteList - failed with invalid request"

    .line 3669
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public resetAutomaticConnectionPolicy(I)V
    .registers 11

    const-string/jumbo v0, "resetAutomaticConnectionPolicy - END"

    .line 4656
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemProcess()V

    const-string v1, "WifiPolicyService"

    const-string/jumbo v2, "resetAutomaticConnectionPolicy - START"

    .line 4658
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "adminUid"

    const-string v3, "allowAutomaticConnection"

    .line 4660
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 4666
    :try_start_17
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI"

    invoke-virtual {v6, v7, v4, v5, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 4669
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_28

    goto :goto_69

    :cond_28
    const/4 v4, 0x0

    .line 4680
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4682
    :cond_2c
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4686
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4685
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_46

    if-nez v4, :cond_43

    move v4, v6

    goto :goto_46

    :cond_43
    if-eq v4, v8, :cond_46

    move v4, v8

    .line 4694
    :cond_46
    :goto_46
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2c

    if-ne v4, p1, :cond_99

    .line 4698
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_99

    .line 4701
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V

    goto :goto_99

    .line 4670
    :cond_69
    :goto_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "resetAutomaticConnectionPolicy - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_79

    const-string p1, "Cursor is null"

    goto :goto_7b

    :cond_79
    const-string p1, "Cursor is empty"

    .line 4671
    :goto_7b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4670
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_85} :catch_90
    .catchall {:try_start_17 .. :try_end_85} :catchall_8e

    if-eqz v5, :cond_8a

    .line 4709
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4711
    :cond_8a
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_8e
    move-exception p0

    goto :goto_a0

    :catch_90
    move-exception p0

    :try_start_91
    const-string/jumbo p1, "resetAutomaticConnectionPolicy"

    .line 4706
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_8e

    if-eqz v5, :cond_9c

    .line 4709
    :cond_99
    :goto_99
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4711
    :cond_9c
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_a0
    if-eqz v5, :cond_a5

    .line 4709
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4711
    :cond_a5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    throw p0
.end method

.method public final resetUserRestrictionAPIs(I)V
    .registers 15

    const-string/jumbo v0, "resetUserRestrictionAPIs - END"

    const-string v1, "WifiPolicyService"

    const-string/jumbo v2, "resetUserRestrictionAPIs - START"

    .line 4583
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "adminUid"

    const-string v3, "allowWifi"

    const-string v4, "allowWifiStateChanges"

    const-string v5, "allowUserProfiles"

    .line 4587
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 4595
    :try_start_18
    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI"

    invoke-virtual {v8, v9, v6, v7, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_75

    .line 4598
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_29

    goto :goto_75

    .line 4610
    :cond_29
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    move v8, v6

    move v9, v8

    .line 4612
    :cond_2f
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 4615
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_4c

    .line 4617
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4616
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_53

    :cond_4c
    if-nez v8, :cond_50

    move v8, v10

    goto :goto_53

    :cond_50
    if-eq v8, v12, :cond_53

    move v8, v12

    .line 4628
    :cond_53
    :goto_53
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4627
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_64

    if-nez v9, :cond_61

    move v9, v10

    goto :goto_64

    :cond_61
    if-eq v9, v12, :cond_64

    move v9, v12

    .line 4635
    :cond_64
    :goto_64
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2f

    if-ne v8, p1, :cond_6f

    .line 4638
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    :cond_6f
    if-ne v9, p1, :cond_a5

    .line 4642
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    goto :goto_a5

    .line 4599
    :cond_75
    :goto_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "resetUserRestrictionAPIs - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_85

    const-string p1, "Cursor is null"

    goto :goto_87

    :cond_85
    const-string p1, "Cursor is empty"

    .line 4600
    :goto_87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4599
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_91} :catch_9c
    .catchall {:try_start_18 .. :try_end_91} :catchall_9a

    if-eqz v7, :cond_96

    .line 4648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4650
    :cond_96
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_9a
    move-exception p0

    goto :goto_ac

    :catch_9c
    move-exception p0

    :try_start_9d
    const-string/jumbo p1, "resetUserRestrictionAPIs"

    .line 4645
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_9a

    if-eqz v7, :cond_a8

    .line 4648
    :cond_a5
    :goto_a5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4650
    :cond_a8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_ac
    if-eqz v7, :cond_b1

    .line 4648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4650
    :cond_b1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    throw p0
.end method

.method public final resetWifiPolicyAPIs(I)V
    .registers 4

    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "resetWifiPolicyAPIs - START"

    .line 4562
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->resetUserRestrictionAPIs(I)V

    .line 4568
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4569
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez p0, :cond_1c

    const-string/jumbo p0, "resetWifiPolicyAPIs - fail to retrieve dpmi object"

    .line 4572
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 4574
    :cond_1c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManagerInternal;->notifyChangesOnWifiPolicy()V

    :goto_1f
    const-string/jumbo p0, "resetWifiPolicyAPIs - END"

    .line 4577
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final save(Landroid/net/wifi/WifiConfiguration;I)I
    .registers 5

    .line 4814
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkCreatorInfo(Landroid/net/wifi/WifiConfiguration;I)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_10

    const-string p0, "WifiPolicyService"

    const-string/jumbo p1, "save - Could not get network creator information"

    .line 4816
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 4820
    :cond_10
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4824
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isDOOrPO(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const/16 v0, 0x3e8

    .line 4828
    :cond_28
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final saveAuthConfigToDb(ILjava/lang/String;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;)Z"
        }
    .end annotation

    .line 1382
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x1

    :cond_5
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/net/AuthConfig;

    .line 1383
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1384
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertAuthConfigToContentValues(ILjava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v3, "WifiProxyAuthTable"

    .line 1383
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_25
    return v0
.end method

.method public final saveBlockedList(ILjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2463
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2466
    :cond_2a
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WIFI"

    const-string v1, "blockedSSIDList"

    .line 2466
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final saveProxyInfoToDb(ILjava/lang/String;Landroid/net/ProxyInfo;)Z
    .registers 5

    .line 1394
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1395
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertProxyInfoToContentValues(ILjava/lang/String;Landroid/net/ProxyInfo;)Landroid/content/ContentValues;

    move-result-object p0

    const-string p1, "WifiProxyTable"

    .line 1394
    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public final setAddWifiConfigUserRestriction(Z)V
    .registers 6

    .line 1964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1966
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_add_wifi_config"

    invoke-virtual {p0, v2, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    const-string p0, "WifiPolicyService"

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAddWifiConfigUserRestriction - value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 1969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    throw p0
.end method

.method public final setAllowAutojoinGlobal(ILjava/lang/String;Z)V
    .registers 8

    .line 2019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2021
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;ILjava/lang/String;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    .line 2024
    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    const-string p0, "WifiPolicyService"

    .line 2025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowAutojoinGlobal - uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", allowAutojoin = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_38

    .line 2028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    throw p0
.end method

.method public setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2058
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowUserPolicyChanges - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "WIFI"

    const-string v1, "allowUserChanges"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 1929
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1930
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 1937
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllowUserProfiles - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "WIFI"

    const-string v3, "allowUserProfiles"

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string/jumbo p0, "setAllowUserProfiles - fail to store value to database"

    .line 1944
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1949
    :cond_4a
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1951
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_69

    :cond_68
    move p2, v0

    :goto_69
    xor-int/lit8 p1, p2, 0x1

    .line 1958
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    return v0
.end method

.method public setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 1997
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1999
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    if-nez v0, :cond_16

    const-string/jumbo p0, "setAutomaticConnectionToWifi - not a valid caller, aborting!"

    .line 2001
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2005
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowAutomaticConnection"

    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2b

    const-string/jumbo p0, "setAutomaticConnectionToWifi - fail to store value to database"

    .line 2009
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2013
    :cond_2b
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 2014
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2013
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setChangeWifiStateUserRestriction(Z)V
    .registers 6

    .line 4029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4031
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_change_wifi_state"

    invoke-virtual {p0, v2, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    const-string p0, "WifiPolicyService"

    .line 4032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setChangeWifiStateUserRestriction - value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 4034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4035
    throw p0
.end method

.method public final setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 2881
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "WifiPolicyService"

    const/4 v3, 0x0

    if-nez v0, :cond_15

    .line 2883
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_2f

    :catch_10
    move-exception p0

    .line 2885
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_15
    const-string p2, "8.8.8.8"

    .line 2889
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 2891
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2892
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/InetAddress;

    :cond_2f
    :goto_2f
    if-eqz p2, :cond_4a

    .line 2897
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2898
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 2900
    :cond_43
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2904
    :cond_4a
    :goto_4a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7f

    .line 2906
    :try_start_51
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 2907
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v0, :cond_67

    .line 2908
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 2909
    :cond_67
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_7f

    .line 2910
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_79} :catch_7a

    goto :goto_7f

    :catch_7a
    move-exception p0

    .line 2913
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_7f
    :goto_7f
    return v0
.end method

.method public final setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;
    .registers 4

    .line 2852
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2854
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 2855
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_29

    :catch_f
    move-exception p0

    const-string p1, "WifiPolicyService"

    const-string p2, ""

    .line 2857
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_19
    const-string p2, "192.168.1.1"

    .line 2861
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 2865
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_29

    .line 2866
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;

    move-result-object p1

    :cond_29
    :goto_29
    return-object p1
.end method

.method public final setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;
    .registers 6

    .line 2775
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x18

    if-nez v0, :cond_3d

    .line 2777
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 2779
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2780
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    .line 2781
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v1

    goto :goto_29

    .line 2784
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object p3

    if-eqz p3, :cond_29

    .line 2785
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    .line 2788
    :cond_29
    :goto_29
    new-instance p3, Landroid/net/LinkAddress;

    invoke-direct {p3, p2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 2789
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    const-string p1, "WifiPolicyService"

    const-string p2, ""

    .line 2791
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_3d
    const-string p2, "192.168.1.100"

    .line 2795
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 2797
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 2798
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 2799
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    :cond_59
    if-eqz p3, :cond_63

    .line 2803
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getInetAddr(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    .line 2804
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v1

    .line 2807
    :cond_63
    new-instance p3, Landroid/net/LinkAddress;

    invoke-direct {p3, p2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 2808
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 9

    .line 2137
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2139
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiPolicyService"

    if-nez v0, :cond_16

    const-string/jumbo p0, "setMinimumRequiredSecurity - not a valid caller, aborting!"

    .line 2141
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    if-ltz p2, :cond_7b

    const/16 v3, 0x1f

    if-gt p2, v3, :cond_7b

    .line 2146
    sget-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    aget-object v3, v3, p2

    .line 2147
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_7b

    .line 2153
    :cond_27
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string/jumbo v5, "minimumRequiredSecurity"

    invoke-virtual {v1, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string/jumbo p0, "setMinimumRequiredSecurity - fail to store security type to database"

    .line 2157
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2166
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMinimumRequiredSecurity - caller uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enforced caller uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", secType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    const/4 p0, 0x1

    return p0

    :cond_7b
    :goto_7b
    const-string/jumbo p0, "setMinimumRequiredSecurity - security level not supported"

    .line 2148
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
    .registers 8

    const-string p0, "WifiPolicyService"

    if-nez p1, :cond_b

    const-string/jumbo p1, "setMinimumRequiredWifiSecurityLevel - component name is null"

    .line 2179
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3a

    if-eq p3, v1, :cond_38

    if-eq p3, v0, :cond_38

    const/4 v3, 0x5

    if-eq p3, v3, :cond_3b

    const/4 v3, 0x6

    if-eq p3, v3, :cond_3b

    const/4 v3, 0x7

    if-eq p3, v3, :cond_3b

    const/16 v3, 0x13

    if-eq p3, v3, :cond_3b

    const/16 v3, 0x16

    if-eq p3, v3, :cond_3b

    const/16 v3, 0x19

    if-eq p3, v3, :cond_3b

    const/16 v3, 0x1c

    if-eq p3, v3, :cond_3b

    const/16 v0, 0x1f

    if-eq p3, v0, :cond_38

    const-string/jumbo p3, "security level not mapped! Set as open"

    .line 2203
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_38
    move v0, v1

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v0, v2

    .line 2207
    :cond_3b
    :goto_3b
    const-class p3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2208
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez p3, :cond_4c

    const-string/jumbo p1, "setMinimumRequiredWifiSecurityLevel - fail to retrieve dpmi object"

    .line 2211
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2215
    :cond_4c
    invoke-virtual {p3, p1, v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    .line 2217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMinimumRequiredWifiSecurityLevel - who: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", securityLevel: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .registers 14

    .line 2600
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2601
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkSSID"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v1, "networkBSSID"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 2604
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkKeyMgmt"

    .line 2603
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    .line 2606
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkAllowedProtos"

    .line 2605
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    .line 2608
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkAuthAlg"

    .line 2607
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    .line 2610
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkAllowedPairwiseCiphers"

    .line 2609
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 2612
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "networkAllowedGroupProtocols"

    .line 2611
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v1, "networkPSK"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v2, "networkWEPKey1"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string/jumbo v3, "networkWEPKey2"

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string/jumbo v4, "networkWEPKey3"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    const-string/jumbo v4, "networkWEPKey4"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "networkWEPKeyId"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2619
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    if-ltz v0, :cond_b7

    .line 2620
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EAP_STRINGS:[Ljava/lang/String;

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    aget-object v0, v0, v4

    const-string/jumbo v4, "networkEAP"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    :cond_b7
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    aget-object v0, v0, v4

    const-string v4, "NULL"

    .line 2624
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "networkPhase2"

    if-nez v4, :cond_df

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    goto :goto_df

    :cond_d5
    const-string v7, "auth="

    .line 2627
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    :cond_df
    :goto_df
    const-string v0, "None"

    .line 2625
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    :goto_e4
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkIdentity"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkAnonymousId"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkPassword"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkClientCertification"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkPrivateKey"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "networkCaCertificate"

    const/4 v6, 0x0

    if-eqz v0, :cond_135

    .line 2635
    array-length v7, v0

    if-lez v7, :cond_135

    aget-object v0, v0, v1

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 2636
    :cond_135
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :goto_138
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v4, :cond_146

    move v0, v2

    goto :goto_147

    :cond_146
    move v0, v1

    :goto_147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "networkStaticIpEnabled"

    .line 2640
    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2644
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1b5

    .line 2646
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getIpAddress(Landroid/net/StaticIpConfiguration;)Landroid/net/LinkAddress;

    move-result-object v4

    if-eqz v4, :cond_17a

    .line 2648
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2650
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-static {v4}, Lcom/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTL(I)I

    move-result v4

    .line 2649
    invoke-static {v4}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v4

    .line 2651
    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_17c

    :cond_17a
    move-object v4, v6

    move-object v7, v4

    .line 2653
    :goto_17c
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    if-eqz v8, :cond_187

    .line 2655
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    goto :goto_188

    :cond_187
    move-object v8, v6

    .line 2657
    :goto_188
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2658
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a1

    .line 2659
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    goto :goto_1a2

    :cond_1a1
    move-object v9, v6

    .line 2661
    :goto_1a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b2

    .line 2662
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    :cond_1b2
    move-object v0, v6

    move-object v6, v7

    goto :goto_1b9

    :cond_1b5
    move-object v0, v6

    move-object v4, v0

    move-object v8, v4

    move-object v9, v8

    :goto_1b9
    const-string/jumbo v7, "networkStaticIp"

    .line 2665
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "networkStaticGateway"

    .line 2666
    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "networkStaticPrimaryDns"

    .line 2667
    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "networkStaticSecondaryDns"

    .line 2668
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "networkStaticSubnetMask"

    .line 2669
    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    .line 2675
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v4, :cond_1e5

    move v4, v2

    goto :goto_1e6

    :cond_1e5
    move v4, v1

    :goto_1e6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "networkManualProxyEnabled"

    .line 2674
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2680
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v4, :cond_1f6

    :cond_1f4
    move v2, v1

    goto :goto_200

    .line 2681
    :cond_1f6
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v4, :cond_1fb

    goto :goto_200

    .line 2682
    :cond_1fb
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_1f4

    move v2, v3

    .line 2684
    :goto_200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "networkProxyState"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2687
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_254

    .line 2688
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "networProxyName"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "networkProxyPort"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2690
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 2691
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    .line 2690
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "networkProxyExclList"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "networkProxyPacUrl"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :cond_254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "networkEngineID"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2701
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2702
    invoke-static {p0}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "WIFI_CONF"

    const-string/jumbo v3, "networkSSID"

    move v2, p1

    .line 2701
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2342
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPasswordHidden - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "WIFI"

    const-string/jumbo v1, "passwordHidden"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2103
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPromptCredentialsEnabled - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "WIFI"

    const-string/jumbo v1, "promptCredentials"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z
    .registers 15

    const/4 v0, 0x0

    const-string v1, "WifiPolicyService"

    if-nez p1, :cond_c

    const-string/jumbo p0, "setSsidAllowDenyList - component name is null"

    .line 3884
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3888
    :cond_c
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3889
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v2, :cond_1d

    const-string/jumbo p0, "setSsidAllowDenyList - fail to retrieve dpmi object"

    .line 3892
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1d
    const-string/jumbo v3, "setWifiSsidPolicy(null) - who: "

    const/4 v4, 0x1

    const-string v5, ", enforced caller uid: "

    const-string v6, ", userId: "

    const/4 v7, 0x0

    if-eqz p4, :cond_118

    .line 3903
    invoke-virtual {p0, p3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    move-result-object p0

    const-string p4, "WHITELIST"

    .line 3905
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    const-string v8, "BLACKLIST"

    .line 3906
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 3908
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    const-string v9, "*"

    if-nez v8, :cond_98

    .line 3912
    invoke-interface {p4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    .line 3913
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 3914
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_53
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3915
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3916
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 3917
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 3919
    :cond_6d
    new-instance v7, Landroid/app/admin/WifiSsidPolicy;

    invoke-direct {v7, v0, p0}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 3922
    :cond_72
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 3923
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setWifiSsidPolicy(ALLOWLIST) - who: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13e

    .line 3925
    :cond_98
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_f1

    .line 3930
    invoke-interface {p0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_cc

    .line 3931
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    .line 3932
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ad
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3933
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3934
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 3935
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 3937
    :cond_c7
    new-instance v7, Landroid/app/admin/WifiSsidPolicy;

    invoke-direct {v7, v4, p4}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 3940
    :cond_cc
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 3941
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setWifiSsidPolicy(DENYLIST) - who: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 3944
    :cond_f1
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 3945
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ssid restriction is activated but there is no allow/deny list in database"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 3950
    :cond_118
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 3951
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ssid restriction is not activated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13e
    return v4
.end method

.method public setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1801
    :try_start_8
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "WIFI"

    const-string v5, "allowWifi"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1805
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "WifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed Wifi enabled to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1806
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1804
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_43
    const/4 v3, 0x0

    .line 1809
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-eqz p2, :cond_53

    if-eqz v4, :cond_53

    .line 1811
    iget-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_58

    .line 1813
    :cond_53
    iget-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_67

    .line 1816
    :goto_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    if-eqz v2, :cond_66

    if-nez p1, :cond_66

    .line 1821
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    :cond_66
    return v2

    :catchall_67
    move-exception p0

    .line 1816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1817
    throw p0
.end method

.method public setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1835
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 1837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiAllowed - caller uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiPolicyService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1840
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_32

    return v6

    :cond_32
    const-string/jumbo v5, "setWifiAllowed - fail to store value to database"

    const-string v7, "allowWifi"

    const-string v8, "WIFI"

    const/4 v9, 0x1

    if-nez v1, :cond_72

    .line 1855
    iget-object v10, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v10, :cond_5e

    const-string/jumbo v10, "setWifiAllowed - mWifiManager = null"

    .line 1856
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v10, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v2, v8, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v1, v9

    if-nez v1, :cond_55

    .line 1862
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1866
    :cond_55
    invoke-virtual {v0, v3, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    return v9

    .line 1869
    :cond_5e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1871
    :try_start_62
    iget-object v12, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v12
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_6d

    and-int/2addr v12, v9

    .line 1873
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_73

    :catchall_6d
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    throw v0

    :cond_72
    move v12, v9

    .line 1877
    :goto_73
    iget-object v10, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11, v8, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v7, v12

    if-nez v7, :cond_82

    .line 1881
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1885
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 1888
    :try_start_89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has changed Wifi allowed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1889
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 1887
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b3
    .catchall {:try_start_89 .. :try_end_b3} :catchall_cc

    .line 1891
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1894
    invoke-virtual {v0, v3, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 1896
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-nez v1, :cond_cb

    .line 1898
    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    :cond_cb
    return v9

    :catchall_cc
    move-exception v0

    .line 1891
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1892
    throw v0
.end method

.method public final setWifiAllowedSystemUI(IZ)V
    .registers 5

    .line 4264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4266
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 4267
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 4271
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "WifiPolicyService"

    const-string/jumbo p2, "setWifiAllowedSystemUI() failed. "

    .line 4269
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 4271
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4272
    throw p0
.end method

.method public setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "setWifiApSetting"

    .line 2998
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    const-string p0, "SSID is empty"

    .line 3002
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3010
    :cond_18
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_17c

    const/16 v4, 0x20

    if-le v1, v4, :cond_28

    goto/16 :goto_17c

    :cond_28
    const-string v1, "Open"

    .line 3018
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ") is not valid"

    const-string v6, "Security Type ("

    const-string v7, "WPA2_PSK"

    const-string v8, "SAE"

    if-nez v4, :cond_5a

    .line 3019
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 3020
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 3021
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3025
    :cond_5a
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "sem_wifi"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v4, :cond_79

    .line 3027
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 3028
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result v4

    if-nez v4, :cond_7f

    const-string p0, "Wi-Fi AP WPA3 is not supported"

    .line 3029
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_79
    const-string/jumbo v4, "semWifiManager is null"

    .line 3033
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_7f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_a1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 3039
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3045
    :cond_a1
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    .line 3046
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    :cond_ad
    if-eqz p4, :cond_15a

    .line 3047
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x8

    if-lt p1, v1, :cond_15a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x3f

    if-le p1, v1, :cond_c1

    goto/16 :goto_15a

    .line 3052
    :cond_c1
    iput-boolean v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 3054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3058
    :try_start_c7
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 3059
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 3060
    invoke-virtual {v4, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 3061
    invoke-virtual {v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 3062
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 3063
    invoke-virtual {v4, p4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_f1

    .line 3064
    :cond_e2
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ed

    const/4 p1, 0x3

    .line 3065
    invoke-virtual {v4, p4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_f1

    :cond_ed
    const/4 p1, 0x0

    .line 3067
    invoke-virtual {v4, p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 3071
    :goto_f1
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wifi_ap_last_2g_channel"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_104

    .line 3074
    invoke-virtual {v4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_107

    .line 3076
    :cond_104
    invoke-virtual {v4, p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 3078
    :goto_107
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 3079
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getWifiApState()I

    move-result p1
    :try_end_116
    .catchall {:try_start_c7 .. :try_end_116} :catchall_153

    const/16 p2, 0xd

    if-eq p1, p2, :cond_11e

    const/16 p2, 0xc

    if-ne p1, p2, :cond_12d

    :cond_11e
    const-wide/16 p1, 0x64

    .line 3085
    :try_start_120
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_123
    .catch Ljava/lang/InterruptedException; {:try_start_120 .. :try_end_123} :catch_124
    .catchall {:try_start_120 .. :try_end_123} :catchall_153

    goto :goto_128

    :catch_124
    move-exception p1

    .line 3087
    :try_start_125
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3089
    :goto_128
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->resetSoftAp()V

    .line 3092
    :cond_12d
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 3093
    invoke-static {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p1

    if-eqz p1, :cond_14d

    .line 3094
    invoke-virtual {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->isSettingPolicyApplied()Z

    move-result p1

    if-nez p1, :cond_14d

    .line 3097
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string p3, "com.android.settings"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_14d
    .catchall {:try_start_125 .. :try_end_14d} :catchall_153

    .line 3101
    :cond_14d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    iput-boolean v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    return v3

    :catchall_153
    move-exception p1

    .line 3101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    iput-boolean v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 3103
    throw p1

    .line 3048
    :cond_15a
    :goto_15a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Password ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") does not meet requirements for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " security type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3013
    :cond_17c
    :goto_17c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SSID("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has more than 32 characters"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .registers 18

    move-object v7, p0

    move-object/from16 v8, p2

    const-string v9, "WifiPolicyService"

    const-string/jumbo v0, "setWifiProfile - entered"

    .line 1042
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 1046
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->hasValidSsid(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_17

    return v10

    .line 1048
    :cond_17
    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1049
    iget-object v1, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiProfileOwner(ILjava/lang/String;)Z

    move-result v1

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is admin editing its previous configuration ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3e

    .line 1052
    iget-object v2, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v11, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isAllowedToCreateProfileForSsid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v10

    .line 1054
    :cond_3e
    invoke-virtual {p0, v0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->checkDeprecatedAndInvalidFields(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result v2

    if-nez v2, :cond_45

    return v10

    .line 1056
    :cond_45
    invoke-virtual {p0, v8, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToWifiConfiguration(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    if-nez v12, :cond_51

    const-string v0, "Wifi configuration cannot be created, some invalid configuration was provided"

    .line 1059
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1063
    :cond_51
    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    if-eqz v1, :cond_6d

    const-string v1, "Removing previous config"

    .line 1065
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "Failed to remove previous configuration"

    .line 1067
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_6d
    const/4 v0, 0x0

    .line 1073
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 1074
    iget-object v1, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    iget v2, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    iget-object v3, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    iget-object v4, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    iget-object v5, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    iget v6, v8, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 1079
    :cond_85
    invoke-virtual {p0, v12, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createEntepriseProfile(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b2

    .line 1081
    invoke-virtual {p0, v11, v12, v8, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->persistWifiConfiguration(ILandroid/net/wifi/WifiConfiguration;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2

    if-nez v2, :cond_98

    const-string v0, "Enterprise wifi network persist failed"

    .line 1082
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1085
    :cond_98
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1086
    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, v7, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    .line 1089
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetworkAndMaybeConnect(I)V

    .line 1091
    invoke-virtual {p0, v11, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->logProfileCreation(ILcom/samsung/android/knox/net/wifi/WifiAdminProfile;)V

    const-string/jumbo v0, "setWifiProfile - exited "

    .line 1093
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_b2
    const-string v0, "Enterprise wifi network creation failed"

    .line 1096
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3996
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiStateChangeAllowed - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "WIFI"

    const-string v4, "allowWifiStateChanges"

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo p0, "setWifiStateChangeAllowed - fail to store value to database"

    .line 4005
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4009
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4012
    :try_start_41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "WifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has changed Wifi state change allowed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4013
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4011
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_86

    .line 4015
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p2, 0x0

    .line 4018
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 4020
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p2

    if-nez p2, :cond_85

    .line 4022
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    :cond_85
    return v0

    :catchall_86
    move-exception p0

    .line 4015
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4016
    throw p0
.end method

.method public final setWifiStateChangeAllowedSystemUI(IZ)V
    .registers 5

    .line 4253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4255
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 4256
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiStateChangeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 4260
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "WifiPolicyService"

    const-string/jumbo p2, "setWifiStateChangeAllowedSystemUI() failed. "

    .line 4258
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 4260
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4261
    throw p0
.end method

.method public systemReady()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 377
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->initializeWifiProxyListCache()V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->migrateWifiRelatedAPIs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 383
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceAutomaticConnectionIfNeeded()V

    :cond_17
    return-void
.end method

.method public final updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 9

    const/4 p0, 0x0

    if-eqz p3, :cond_c3

    .line 949
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string/jumbo v0, "phase2"

    .line 950
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    move p2, v2

    .line 952
    :goto_17
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    array-length v3, v0

    if-ge p2, v3, :cond_2d

    .line 953
    aget-object v0, v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 954
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2e

    :cond_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_2d
    move v1, v2

    :goto_2e
    if-nez v1, :cond_c2

    const-string p2, "None"

    .line 961
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 962
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_c2

    :cond_3f
    return-object p0

    :cond_40
    const-string/jumbo v0, "phase1"

    .line 966
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "WifiPolicyService"

    if-eqz v0, :cond_52

    const-string p0, "PHASE1 is no longer supported"

    .line 967
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    :cond_52
    const-string/jumbo v0, "identity"

    .line 969
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0xc8

    if-eqz v0, :cond_6f

    .line 970
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v4, :cond_69

    const-string p1, "Identity value excedes maximum length 200"

    .line 971
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 975
    :cond_69
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_c2

    :cond_6f
    const-string v0, "anonymous_identity"

    .line 976
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 977
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_c2

    :cond_7d
    const-string/jumbo v0, "password"

    .line 978
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 979
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v4, :cond_92

    const-string p1, "Password excedes maximum length 200"

    .line 980
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 984
    :cond_92
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_c2

    :cond_98
    const-string v0, "client_cert"

    .line 985
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    const-string/jumbo v0, "key_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto :goto_bd

    :cond_aa
    const-string v0, "ca_cert"

    .line 987
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 988
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array p2, v1, [Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_c2

    :cond_bc
    return-object p0

    .line 986
    :cond_bd
    :goto_bd
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_c2
    :goto_c2
    return-object p1

    :cond_c3
    return-object p0
.end method

.method public final updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 10

    .line 1742
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7b

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_7b

    .line 1747
    :cond_11
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .line 1748
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1750
    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration;-><init>()V

    :cond_20
    const-string/jumbo v3, "networkStaticIp"

    .line 1754
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_35

    .line 1755
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    move v4, v5

    :goto_33
    move v5, v4

    goto :goto_71

    :cond_35
    const-string/jumbo v3, "networkStaticGateway"

    .line 1757
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1758
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_45
    const-string/jumbo v3, "networkStaticPrimaryDns"

    .line 1760
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1761
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_71

    :cond_53
    const-string/jumbo v3, "networkStaticSecondaryDns"

    .line 1762
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1763
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_71

    :cond_61
    const-string/jumbo v3, "networkStaticSubnetMask"

    .line 1764
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_71

    .line 1765
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_71
    :goto_71
    if-nez v5, :cond_74

    return-object v1

    .line 1771
    :cond_74
    invoke-virtual {v0, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1772
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1

    .line 1743
    :cond_7b
    :goto_7b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid ip address provided: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final updateNetworkDHCPEnabled(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 1700
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 1704
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    if-eqz p2, :cond_20

    .line 1706
    sget-object p2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, p2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1707
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getStaticIpConfigurationIfEnabled(Landroid/net/IpConfiguration;)Landroid/net/StaticIpConfiguration;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v1

    .line 1710
    :cond_1c
    invoke-virtual {v0, p0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_25

    .line 1712
    :cond_20
    sget-object p0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, p0}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1714
    :goto_25
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1
.end method

.method public final updateNetworkPSK(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 8

    const/4 p0, 0x0

    const-string v0, "WifiPolicyService"

    if-nez p2, :cond_c

    const-string/jumbo p1, "updateNetworkPSK - value is null"

    .line 915
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 919
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/16 v3, 0x40

    const/16 v4, 0x8

    if-eqz v1, :cond_2b

    .line 920
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_25

    .line 921
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_45

    :cond_25
    const-string p1, "Invalid PSK length for PSK security type"

    .line 922
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 925
    :cond_2b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 926
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_3f

    .line 927
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_45

    :cond_3f
    const-string p1, "Invalid PSK length for SAE security type"

    .line 928
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 933
    :cond_45
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string p0, "[0-9A-Fa-f]{64}"

    .line 934
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 935
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_5e

    .line 937
    :cond_58
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_5e
    return-object p1

    :cond_5f
    const-string p1, "No SSID provided"

    .line 940
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final updateNetworkProxyHostName(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 4083
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5c

    .line 4088
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4089
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_24

    const-string p0, "WifiPolicyService"

    const-string p1, "Invalid host name provided for proxy, doesn\'t match expected format"

    .line 4090
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4094
    :cond_24
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    .line 4096
    invoke-static {p2, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p2

    goto :goto_57

    .line 4097
    :cond_30
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3e

    goto :goto_4f

    .line 4100
    :cond_3e
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    .line 4101
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4100
    invoke-static {p2, v1, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p2

    goto :goto_57

    .line 4098
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    invoke-static {p2, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 4103
    :goto_57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public final updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 4327
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    if-nez p0, :cond_b

    .line 4329
    new-instance p0, Landroid/net/IpConfiguration;

    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    .line 4331
    :cond_b
    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4332
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1
.end method

.method public final updateNetworkProxyPacFileUrl(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 4208
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 4212
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v0, v1, :cond_22

    .line 4213
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 4214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    :cond_22
    return-object p1
.end method

.method public final updateNetworkProxyPort(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .registers 6

    .line 4109
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 4114
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_25

    if-lez p2, :cond_1d

    const v0, 0xffff

    if-le p2, v0, :cond_25

    :cond_1d
    const-string p0, "WifiPolicyService"

    const-string p1, "Invalid port provided for proxy"

    .line 4116
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4121
    :cond_25
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    const-string v1, "192.168.1.100"

    if-nez v0, :cond_32

    .line 4123
    invoke-static {v1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p2

    goto :goto_5f

    .line 4125
    :cond_32
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 4126
    :goto_41
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5b

    .line 4128
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4127
    invoke-static {v1, p2, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p2

    goto :goto_5f

    .line 4130
    :cond_5b
    invoke-static {v1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 4134
    :goto_5f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final updateNetworkProxyState(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 4063
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return-object v0

    .line 4067
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 4069
    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_27

    :cond_17
    if-nez p2, :cond_1f

    .line 4071
    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_27

    :cond_1f
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2b

    .line 4073
    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4076
    :goto_27
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1

    :cond_2b
    return-object v0
.end method

.method public final updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 886
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return-object v0

    :cond_a
    if-eqz p3, :cond_41

    if-ltz p2, :cond_41

    const/4 p0, 0x3

    if-le p2, p0, :cond_12

    goto :goto_41

    :cond_12
    if-nez p2, :cond_1b

    .line 895
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    .line 899
    :cond_1b
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_38

    :cond_2b
    const-string p0, "[0-9A-Fa-f]*"

    .line 901
    invoke-virtual {p3, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 903
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, p0, p2

    goto :goto_40

    .line 906
    :cond_38
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p2

    :goto_40
    return-object p1

    :cond_41
    :goto_41
    return-object v0
.end method

.method public final updateNetworkWEPKeyId(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_14

    const/4 v1, 0x4

    if-le p2, v1, :cond_8

    goto :goto_14

    .line 874
    :cond_8
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sub-int/2addr p2, v0

    .line 877
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    return-object p1

    :cond_14
    :goto_14
    return-object p0
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 4

    const/4 v0, 0x0

    .line 4248
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    const/4 v1, 0x0

    .line 4249
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    return-void
.end method

.method public final updateUrlForNetworkProxyBypassList(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 7

    .line 4141
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_88

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_88

    :cond_11
    const-string v0, ","

    .line 4146
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 4147
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4148
    sget-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 4149
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    .line 4154
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4156
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 4158
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 4160
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4165
    :cond_4d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 4169
    :cond_53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_57
    :goto_57
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4170
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 4171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_6d
    if-nez v1, :cond_77

    const/4 p2, 0x0

    const-string v1, "192.168.1.100"

    .line 4176
    invoke-static {v1, p2, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p2

    goto :goto_83

    .line 4178
    :cond_77
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {p2, v1, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 4181
    :goto_83
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_88
    :goto_88
    return-object v1
.end method

.method public final updateWifiConfigLinkSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 738
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WifiPolicyService"

    if-eqz v1, :cond_15

    const-string/jumbo p0, "specified profile not found"

    .line 739
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 743
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    return-object v0

    .line 745
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateWifiConfigLinkSecurity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 748
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_d4

    :cond_41
    const/4 v1, 0x1

    .line 749
    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 750
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_d4

    :cond_4f
    const/4 v2, 0x2

    .line 751
    aget-object v3, p0, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 752
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_d4

    :cond_5d
    const/16 v3, 0x1f

    .line 753
    aget-object v3, p0, v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_6c

    .line 754
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_d4

    :cond_6c
    const/4 v3, 0x3

    .line 756
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    const/4 v5, 0x6

    .line 757
    aget-object v6, p0, v5

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 758
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    :cond_7f
    const/4 v2, 0x7

    .line 759
    aget-object v2, p0, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 760
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    :cond_8e
    const/16 v1, 0x13

    .line 761
    aget-object v1, p0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 762
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    :cond_9e
    const/16 v1, 0x16

    .line 763
    aget-object v1, p0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 764
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    :cond_ae
    const/16 v1, 0x19

    .line 765
    aget-object v1, p0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 766
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    :cond_bf
    const/16 v1, 0x1c

    .line 767
    aget-object p0, p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_cf

    .line 768
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_d4

    .line 770
    :cond_cf
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :goto_d4
    return-object p1
.end method

.method public updateWifiMigrationFlag(Ljava/lang/String;)V
    .registers 4

    .line 5095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating Wi-Fi migration flag - type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_network_migration"

    .line 5097
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "wifi_policy_migration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 5101
    :cond_29
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "ok"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final validateSSIDList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4224
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4225
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "WifiPolicyService"

    const-string/jumbo v2, "validateSSIDList() : ssid list removed null "

    .line 4226
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4230
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isvalidSSIDName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4231
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    return-object v1
.end method
