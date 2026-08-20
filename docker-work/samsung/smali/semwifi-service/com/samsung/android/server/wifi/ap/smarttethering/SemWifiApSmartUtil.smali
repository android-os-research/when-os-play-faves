.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
.super Ljava/lang/Object;
.source "SemWifiApSmartUtil.java"


# static fields
.field public static final AES_ENC:I = 0x1

.field public static final ALLOWED_USER:I = 0x3

.field private static final AUTO_HOTSPOT_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/smart_tethering.accept"

.field public static final BLE_BATT_0:B = 0x0t

.field public static final BLE_BATT_1:B = 0x8t

.field public static final BLE_BATT_2:B = 0x10t

.field public static final BLE_BATT_3:B = 0x18t

.field public static final BLE_BATT_4:B = 0x20t

.field public static final BLE_BATT_5:B = 0x28t

.field public static final BLE_BATT_6:B = 0x30t

.field public static final BLE_BATT_7:B = 0x38t

.field public static final BLE_BATT_MASK:B = 0x38t

.field public static final BLE_HIDDEN:B = 0x2t

.field public static final BLE_LTE_5G:B = -0x40t

.field public static final BLE_NOTCONNECTED:B = 0x0t

.field public static final BLE_NW_MASK:B = -0x40t

.field public static final BLE_PACKET_SIZE:I = 0x18

.field public static final BLE_SCAN_RSP_SIZE:I = 0x1b

.field public static final BLE_WIFI:B = 0x40t

.field public static final BLE_WPA2:B = 0x4t

.field private static final BUFFER_SIZE:I = 0x40

.field public static CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID; = null

.field public static CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID; = null

.field public static final CMD_ADVANCED_CLIENT_ADV:I = 0x5

.field public static final CMD_ADVANCED_MHS_ACK_ADV:I = 0x6

.field public static final CMD_CLIENT_ADV:I = 0x1

.field public static final CMD_CLIENT_D2D_ADV:I = 0x4

.field public static final CMD_MHS_ADV:I = 0x2

.field public static final CMD_MHS_D2D_ADV:I = 0x3

.field public static final CONNECTED_5G:I = 0x2

.field public static final CONNECTED_LTE:I = 0x3

.field public static final CONNECTED_UNKWON:I = 0x0

.field public static final CONNECTED_WIFI:I = 0x1

.field public static D2D_SERVICE_UUID:Ljava/util/UUID; = null

.field public static final DATA_SAVER_ENABLED:B = 0x8t

.field public static final DEVICE_NAME_BROADCAST:B = 0x1t

.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field public static final HASH_FAMILYID_SIZE:I = 0x4

.field public static final HASH_GUID_SIZE:I = 0x4

.field private static final HASH_VALUE_BASED_ON_D2D_FAMILYID:Ljava/lang/String; = "hash_value_based_on_d2dFamilyid"

.field private static final HASH_VALUE_BASED_ON_FAMILYID:Ljava/lang/String; = "hash_value_based_on_familyid"

.field private static final HASH_VALUE_BASED_ON_GUID:Ljava/lang/String; = "hash_value_based_on_guid"

.field private static final KEY_CONTENT_PROVIDER_LOCAL_GROUP_LAST_SERVER_SYNC_TIME:Ljava/lang/String; = "smart_tethering_last_server_sync_time"

.field public static final MANUFACTURE_ID:I = 0x75

.field public static final MHS_MACID_SIZE:I = 0x3

.field public static final SAME_FAMILY:I = 0x2

.field public static final SAME_USER:I = 0x1

.field public static final SERVICE_ID:I = 0x12

.field public static SERVICE_UUID:Ljava/util/UUID; = null

.field public static SIM_CARD_ERROR:I = -0x2

.field private static final SMART_TETHERING_D2D_WIFIMAC:Ljava/lang/String; = "smart_tethering_d2d_Wifimac"

.field public static final TABLET_DEVICE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartUtil"

.field public static final VERSION_ID:I = 0x1

.field public static final WIFI_6E_NETWORK:B = 0x4t

.field public static final WIFI_6_NETWORK:B = 0x2t

.field public static final WIFI_AP_DATA_LIMIT_REACHED:B = 0x20t

.field public static final WIFI_PROFILE_SHARE_ENABLED:B = 0x10t

.field private static attributes:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSamsungDevice:I = -0x1


# instance fields
.field private DBG:Z

.field private isJDMDevice:Z

.field private final mContext:Landroid/content/Context;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPkgVer:Ljava/lang/String;

.field private mSamsungDeviceName:Ljava/lang/String;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSmartNetworkCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

.field mWifiChipMAC:Ljava/lang/String;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mapping_MAC:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    const-string v0, "7c7bcc5e-27a2-11e9-ab14-d663bd873d93"

    .line 151
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "7f7cdbf4-27a2-11f9-ab14-d663bd873d93"

    .line 152
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    const-string v0, "7c7bd820-27a2-11e9-ab14-d663bd873d93"

    .line 153
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    const-string v0, "7c7bd829-27a2-11e9-ab14-d663bd873d93"

    .line 154
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    const-string v0, "7c7bdb04-27a2-11e9-ab14-d663bd873d93"

    .line 155
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    const-string v0, "7c7bdb04-27b2-11e9-ab14-d663bd873d93"

    .line 156
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    const-string v0, "c323b4e4-f4f9-11e9-802a-5aa538984bd8"

    .line 157
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    const-string v0, "c323b908-f4f9-11e9-802a-5aa538984bd8"

    .line 158
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    const-string v0, "ce56c592-2951-11ed-a261-0242ac120002"

    .line 159
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    const-string v0, "4f4b8fd2-2ba2-11ed-a261-0242ac120002"

    .line 160
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    const-string v0, "cb50061d-ab7e-4edd-9f07-ad2986b6c684"

    .line 164
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->D2D_SERVICE_UUID:Ljava/util/UUID;

    const-string v0, "c6c333ec-4e53-407c-b00a-20dd347fe8fd"

    .line 165
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    const-string v0, "369a01a7-fcd9-48ad-b642-11e93092d3d4"

    .line 166
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    const-string v0, "e9a6d869-d2bc-4fc6-9386-323c8c8b2d96"

    .line 167
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID;

    const-string v0, "d11aa5ef-de73-46ce-867f-e381c961245f"

    .line 168
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    .line 178
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    const-string v2, "Smart Tethering Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    const-string v2, "Smart Tethering MHS status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    const-string v2, "Smart Tethering notify MHS status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    const-string v2, "read auth status from MHS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    const-string v2, "send  auth info from client"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    const-string v2, "read bond status from MHS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->D2D_SERVICE_UUID:Ljava/util/UUID;

    const-string v2, "Smart Tethering D2D Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    const-string v2, "Smart Tethering FAMILY ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    const-string v2, "Smart Tethering Get client Wi-Fi mac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    const-string v2, "Smart Tethering notify family group invitation status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    const-string v2, "Smart Tethering mhs ver update"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    const-string v2, "Smart Tethering get MHS side system time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    const-string v2, "Smart Tethering get wifi profileShare details"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    const-string v2, "Smart Tethering get wifi  password details"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .registers 11

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->DBG:Z

    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isJDMDevice:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mNwService:Landroid/os/INetworkManagementService;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mPkgVer:Ljava/lang/String;

    const/16 v3, 0x10

    new-array v3, v3, [C

    .line 149
    fill-array-data v3, :array_e2

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mapping_MAC:[C

    .line 176
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSamsungDeviceName:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    .line 196
    new-instance v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-direct {v3, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSmartNetworkCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    .line 197
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 198
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "smart_samsung_account_name"

    invoke-static {p2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    :cond_4f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSamsungDeviceName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "smart_tethering_db_ver"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_ap_smart_tethering_settings"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autohotspot_family_sharing_saved_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "autohotspot_saved_state"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intial value of mst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",family_saved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",autohotspot_saved:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":\n SmartApWhiteList:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSmartApWhiteList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SemWifiApSmartUtil"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemWifiApSmartUtil:\t Intial value of mst:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSmartApWhiteList()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    nop

    :array_e2
    .array-data 2
        0x35s
        0x37s
        0x39s
        0x34s
        0x33s
        0x30s
        0x38s
        0x31s
        0x36s
        0x32s
        0x66s
        0x65s
        0x64s
        0x63s
        0x62s
        0x61s
    .end array-data
.end method

.method static bytesFromLong(Ljava/lang/Long;)[B
    .registers 4

    const/16 v0, 0x8

    .line 555
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 556
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 557
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 558
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static convertToLong([B)J
    .registers 3

    .line 561
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 562
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getAllAesKeysAsStingArray()[Ljava/lang/String;
    .registers 2

    .line 1470
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "smart_tethering_AES_keys"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1471
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "SemWifiApSmartUtil"

    const-string v0, "getAllAesKesAsArray() - AES keys are null"

    .line 1472
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_19
    const-string v0, "\n"

    .line 1475
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 1482
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, " yyyy-MM-dd hh:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1484
    :try_start_d
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1485
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1486
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception p0

    .line 1488
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1f
    const-string p0, ""

    :goto_21
    return-object p0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1371
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 1375
    :try_start_12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1376
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_31
    .catchall {:try_start_12 .. :try_end_23} :catchall_2c

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    .line 1383
    :goto_26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_2a
    const/4 p1, 0x0

    goto :goto_26

    :catchall_2c
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1384
    throw p1

    .line 1383
    :catch_31
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_34
    const/4 p0, -0x1

    return p0
.end method

.method public static isDataAllowed(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "telephony_subscription_service"

    .line 844
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 845
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 846
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 851
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    const-string v2, "SemWifiApSmartUtil"

    const-string v3, "Restriction in Settings Mobile Data On"

    .line 853
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    :try_start_22
    const-string v3, "isDataAllowedFromSimSlot(slotId)"

    .line 856
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4b

    .line 857
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_31} :catch_36

    if-nez p0, :cond_4b

    const/4 p0, 0x0

    move v1, p0

    goto :goto_4b

    :catch_36
    move-exception p0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return v1
.end method

.method public static isSamsungDevice()Z
    .registers 5

    .line 589
    sget v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mIsSamsungDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_37

    .line 590
    sput v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mIsSamsungDevice:I

    .line 591
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 593
    :try_start_13
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 594
    sput v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mIsSamsungDevice:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v0

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Exception isSamsungDevice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemWifiApSmartUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_37
    :goto_37
    sget v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mIsSamsungDevice:I

    if-ne v0, v2, :cond_3c

    move v1, v2

    :cond_3c
    return v1
.end method

.method public static isTablet()Z
    .registers 2

    const-string v0, "ro.build.characteristics"

    .line 1550
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "tablet"

    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private replaceLast(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 666
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "-+"

    const-string v0, ""

    .line 667
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 668
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method Check_MHS_AES_Key()Z
    .registers 12

    .line 1329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1332
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_AES_keys"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_4f

    const-string v3, "SemWifiApSmartUtil"

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    :try_start_15
    const-string p0, " AES keys are null"

    .line 1334
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4f

    .line 1348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1e
    :try_start_1e
    const-string v2, "\n"

    .line 1337
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v2, v4

    .line 1338
    :goto_25
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_47

    .line 1339
    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf731400

    cmp-long v5, v7, v9

    if-lez v5, :cond_44

    const-string v5, " getting AES"

    .line 1341
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v6

    .line 1342
    aget-object p0, p0, v2
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_4f

    goto :goto_48

    :cond_44
    add-int/lit8 v2, v2, 0x2

    goto :goto_25

    :cond_47
    const/4 p0, 0x0

    .line 1348
    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_4e

    move v4, v6

    :cond_4e
    return v4

    :catchall_4f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw p0
.end method

.method SetUserTypefromGattServer(I)V
    .registers 5

    .line 1290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1292
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "wifi_ap_smart_tethering_user_type"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 1294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1295
    throw p0
.end method

.method checkAndAddD2DFamilyMAC(Ljava/lang/String;)V
    .registers 9

    const-string v0, "\n"

    const-string v1, "smart_tethering_d2d_Wifimac"

    .line 870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 872
    :try_start_8
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    .line 873
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 874
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 875
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 877
    :cond_20
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 878
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_56

    const-string v6, "SemWifiApSmartUtil"

    if-nez v5, :cond_4d

    .line 880
    :try_start_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "added D2D AutoHotspot MAC"

    .line 881
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    const-string p0, "same D2D AutoHotspot MAC"

    .line 885
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_30 .. :try_end_52} :catchall_56

    .line 889
    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    throw p0
.end method

.method checkIfActiveNetworkHasInternet()Z
    .registers 3

    .line 1007
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1008
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 1011
    :cond_12
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_21

    const/16 v0, 0x10

    .line 1012
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method generateHashKey(Ljava/lang/String;)J
    .registers 14

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    const-wide/16 v2, 0x1f

    const-wide v4, 0x7ffffffffffffffeL

    const/4 p0, 0x0

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 1115
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge p0, v10, :cond_21

    mul-long/2addr v8, v2

    .line 1116
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    rem-long/2addr v8, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    :cond_21
    cmp-long p0, v8, v6

    if-gez p0, :cond_26

    mul-long/2addr v8, v0

    :cond_26
    return-wide v8
.end method

.method getAESKey(J)Ljava/lang/String;
    .registers 12

    .line 1304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1307
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_AES_keys"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_47

    const-string v3, "SemWifiApSmartUtil"

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    :try_start_15
    const-string p0, " AES keys are null"

    .line 1309
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_47

    .line 1323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_1e
    :try_start_1e
    const-string v2, "\n"

    .line 1312
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1313
    :goto_25
    array-length v5, p0

    if-ge v2, v5, :cond_43

    .line 1314
    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v5, p1

    const-wide/32 v7, 0x1d4c0

    cmp-long v5, v5, v7

    if-lez v5, :cond_40

    const-string p1, " getting AES"

    .line 1316
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    .line 1317
    aget-object v4, p0, v2
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_47

    goto :goto_43

    :cond_40
    add-int/lit8 v2, v2, 0x2

    goto :goto_25

    .line 1323
    :cond_43
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    throw p0
.end method

.method getAccountName()Ljava/lang/String;
    .registers 4

    .line 1096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1099
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v2, "com.osp.app.signin"

    .line 1100
    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 1101
    array-length v2, p0

    if-lez v2, :cond_19

    const/4 v2, 0x0

    .line 1102
    aget-object p0, p0, v2

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1e

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    .line 1105
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    throw p0
.end method

.method getActualMACFrom_mappedMAC(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 473
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_4d

    .line 475
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1e

    const-string v3, ":"

    .line 476
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 478
    :cond_1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_3b

    const/16 v3, 0x39

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v3, v5, :cond_3b

    .line 479
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v4

    .line 480
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mapping_MAC:[C

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 483
    :cond_3b
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    .line 484
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mapping_MAC:[C

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 487
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getBlutoothMACbytes()[B
    .registers 9

    .line 534
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 536
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_17

    const-string p0, "SemWifiApSmartUtil"

    const-string v0, " getBTMACbytes is null  "

    .line 539
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "02:00:00:00:00:00"

    :cond_17
    const-string v0, ":"

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 546
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_25
    if-ge v3, v1, :cond_3f

    aget-object v5, p0, v3

    .line 547
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 548
    aget-byte v7, v5, v2

    aput-byte v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    const/4 v7, 0x1

    .line 549
    aget-byte v5, v5, v7

    aput-byte v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3f
    return-object v0
.end method

.method public getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_3

    return-object p1

    .line 1497
    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->DBG:Z

    if-eqz p0, :cond_8

    return-object p1

    .line 1500
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_20

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object p1
.end method

.method getClientMACbytes()[B
    .registers 11

    .line 445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isJDMDevice:Z

    if-eqz v0, :cond_15

    .line 449
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 451
    :cond_15
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    :goto_21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    :cond_23
    const-string v3, "SemWifiApSmartUtil"

    if-nez v0, :cond_2f

    const-string v0, " getWiFiMACbytes is null  "

    .line 457
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "02:00:00:00:00:00"

    goto :goto_47

    .line 460
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chipset information is macAddress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClientMACbytes is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ":"

    .line 464
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 465
    array-length v0, p0

    move v3, v2

    move v4, v3

    :goto_68
    if-ge v3, v0, :cond_8b

    aget-object v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    .line 466
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_68

    :cond_8b
    return-object v1
.end method

.method getD2DFamilyID()Ljava/lang/String;
    .registers 4

    .line 795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 798
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_d2dfamilyid"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_17

    .line 800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    :cond_16
    return-object p0

    :catchall_17
    move-exception p0

    .line 800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw p0
.end method

.method getD2DWifiMac()Ljava/lang/String;
    .registers 4

    .line 767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 769
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_d2d_Wifimac"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 5

    const-string v0, "device_name"

    .line 674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 676
    :try_start_6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    .line 682
    :goto_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    if-nez v3, :cond_23

    move-object v3, p0

    :cond_23
    if-nez v3, :cond_2f

    .line 688
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p0, :cond_2c

    const-string p0, "Samsung Mobile"

    goto :goto_2e

    :cond_2c
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_33

    :goto_2e
    move-object v3, p0

    .line 690
    :cond_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_33
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    throw p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 31

    move-object/from16 v0, p0

    const-string v1, "\n"

    .line 1391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1392
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_d
    const-string v5, "--Hotspot Live --\n"

    .line 1394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smart_tethering_db_ver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smart_tethering_db_ver"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPkgVer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mPkgVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->DBG:Z
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_520

    const-string v6, " AES key: "

    const-string v7, " AES key: empty\n"

    const-string v10, "smart_tethering_family_count"

    const-string v11, " smart_tethering_family_count: "

    const-string v12, "smart_tethering_d2d_Wifimac"

    const-string v13, " d2d_wifi_mac: "

    const-string v14, " getHashbasedonD2DFamilyid: "

    const-string v15, " getD2DFamilyID: "

    const-string v8, " Family Guids: "

    const-string v9, " SamAccount: "

    move-wide/from16 v16, v2

    const-string v2, " getHashbasedonFamilyId: "

    const-string v3, "getHashbasedonGuid(): "

    move-object/from16 v18, v7

    const-string v7, "smart_tethering_familyid: "

    move-object/from16 v19, v6

    const-string v6, "smart_tethering_user_name: "

    move-object/from16 v20, v10

    const-string v10, "smart_tethering_guid: "

    move-object/from16 v21, v11

    const-string v11, "getDeviceName: "

    move-object/from16 v22, v12

    const-string v12, "getHostNameFromDeviceName: "

    move-object/from16 v23, v13

    const/4 v13, 0x1

    if-eqz v5, :cond_26e

    .line 1398
    :try_start_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSameUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideStringEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1406
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyguids()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18d

    .line 1409
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_16b
    if-ge v5, v3, :cond_18d

    aget-object v6, v2, v5

    .line 1410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_16b

    .line 1413
    :cond_18d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DFamilyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v23

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    move-object/from16 v5, v22

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    move-object/from16 v5, v20

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAllAesKeysAsStingArray()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_20a
    if-ge v8, v3, :cond_49d

    aget-object v5, v2, v8

    .line 1419
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-le v6, v7, :cond_23c

    .line 1420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, v18

    goto :goto_267

    :cond_23c
    move-object/from16 v7, v19

    .line 1421
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v13, :cond_24a

    move-object/from16 v6, v18

    .line 1422
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_267

    :cond_24a
    move-object/from16 v6, v18

    .line 1424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AES exp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_267
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_20a

    :cond_26e
    move-object/from16 v24, v18

    move-object/from16 v13, v22

    move-object/from16 v5, v23

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    move-result-object v22

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSameUserName()Ljava/lang/String;

    move-result-object v23

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v25

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccount()Ljava/lang/String;

    move-result-object v26

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyguids()Ljava/lang/String;

    move-result-object v27

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DFamilyID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v13

    .line 1435
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1436
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1437
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    if-eqz v22, :cond_2dc

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_2dd

    :cond_2dc
    move-object v12, v10

    :goto_2dd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1438
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v23, :cond_2fd

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2fe

    :cond_2fd
    move-object v6, v10

    :goto_2fe
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v25, :cond_31e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_31f

    :cond_31e
    move-object v7, v10

    :goto_31f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v26, :cond_381

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_382

    :cond_381
    move-object v3, v10

    :goto_382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v27, :cond_3a2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3a3

    :cond_3a2
    move-object v3, v10

    :goto_3a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v28, :cond_3c2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_3c2
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    move-object/from16 v5, v29

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    move-object/from16 v5, v20

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAllAesKeysAsStingArray()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_436
    if-ge v8, v3, :cond_49d

    aget-object v5, v2, v8

    .line 1449
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-le v6, v7, :cond_46a

    .line 1450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v19

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    invoke-virtual {v0, v5, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, v24

    const/4 v10, 0x1

    goto :goto_496

    :cond_46a
    move-object/from16 v9, v19

    .line 1451
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x1

    if-ge v6, v10, :cond_479

    move-object/from16 v6, v24

    .line 1452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_496

    :cond_479
    move-object/from16 v6, v24

    .line 1454
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " AES exp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_496
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v24, v6

    move-object/from16 v19, v9

    goto :goto_436

    .line 1458
    :cond_49d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SA error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v5, "smart_tethering_latest_sa_error_code"

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AES key error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v5, "smart_tethering_AES_key_error"

    invoke-static {v3, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartApWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSmartApWhiteList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetWhiteList called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "smartApWhiteList_migration_q_os_to_r"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_516
    .catchall {:try_start_84 .. :try_end_516} :catchall_51e

    .line 1464
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_51e
    move-exception v0

    goto :goto_523

    :catchall_520
    move-exception v0

    move-wide/from16 v16, v2

    .line 1464
    :goto_523
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1465
    throw v0
.end method

.method getFamilyID()Ljava/lang/String;
    .registers 5

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 756
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v3, "smart_tethering_familyid"

    invoke-static {v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 758
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_20

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 761
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    throw p0
.end method

.method getFamilyguids()Ljava/lang/String;
    .registers 5

    .line 1125
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, ""

    return-object p0

    .line 1128
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    :try_start_11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v3, "smart_tethering_family_guids"

    invoke-static {v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_2b

    .line 1132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1135
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    return-object v2

    :catchall_2b
    move-exception p0

    .line 1132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    throw p0
.end method

.method getGuid()Ljava/lang/String;
    .registers 5

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 742
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v3, "smart_tethering_guid"

    invoke-static {v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 744
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_20

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 747
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    throw p0
.end method

.method getHashbasedonD2DFamilyid()J
    .registers 4

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 820
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "hash_value_based_on_d2dFamilyid"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1d

    .line 822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v0, -0x1

    return-wide v0

    .line 826
    :cond_18
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :catchall_1d
    move-exception p0

    .line 822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw p0
.end method

.method getHashbasedonFamilyId()J
    .registers 3

    .line 350
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "hash_value_based_on_familyid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    .line 353
    :cond_11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getHashbasedonGuid()J
    .registers 3

    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "hash_value_based_on_guid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    .line 346
    :cond_11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostNameFromDeviceName()Ljava/lang/String;
    .registers 9

    const-string v0, "-"

    const-string v1, ""

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 644
    :try_start_8
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-string v5, "Any-latin; nfd; [:nonspacing mark:] remove; nfc"

    .line 646
    invoke-static {v5}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v5

    .line 647
    invoke-virtual {v5, v4}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[^[[a-z][A-Z][0-9][ ][-]]]"

    .line 648
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_8e

    const-string v6, "-+"

    const/16 v7, 0x2d

    if-lez v5, :cond_41

    const/4 v5, 0x0

    :try_start_37
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_41

    .line 650
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 652
    :cond_41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_57

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_57

    .line 653
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->replaceLast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 655
    :cond_57
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_8e

    goto :goto_5e

    :cond_5c
    const-string v0, "Samsung Device"

    .line 658
    :goto_5e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartUtil:\thostname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-object v0

    :catchall_8e
    move-exception p0

    .line 658
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    throw p0
.end method

.method public getHostNameFromSettingDeviceName()Ljava/lang/String;
    .registers 2

    .line 634
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    .line 636
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_10
    return-object p0
.end method

.method public getMHSMacFromInterface()Ljava/lang/String;
    .registers 6

    const-string v0, "SemWifiApSmartUtil"

    .line 370
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_e

    return-object v2

    :cond_e
    const-string v1, "network_management"

    .line 375
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 376
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mNwService:Landroid/os/INetworkManagementService;

    .line 377
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 378
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 380
    :try_start_2a
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 382
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_42

    :cond_38
    const-string v1, "getMHSMacFromInterface ifcg is null"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    if-eqz v2, :cond_7a

    .line 389
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->DBG:Z

    if-eqz v1, :cond_7a

    .line 390
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartUtil:\tgetMHSMacFromInterface is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMHSMacFromInterface is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return-object v2
.end method

.method public getMHSMacFromInterface(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "SemWifiApSmartUtil"

    .line 397
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_8d

    if-eqz p1, :cond_8d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_8d

    :cond_17
    const-string v1, "network_management"

    .line 402
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 403
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mNwService:Landroid/os/INetworkManagementService;

    .line 404
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 406
    :try_start_2f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 408
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_47

    :cond_3d
    const-string v1, "getMHSMacFromInterface ifcg is null"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v1

    .line 413
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_47
    if-eqz v2, :cond_8d

    .line 415
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->DBG:Z

    if-eqz v1, :cond_8d

    .line 416
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartUtil:\tgetMHSMacFromInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMHSMacFromInterface("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    return-object v2
.end method

.method public getNetworkType()B
    .registers 8

    .line 695
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 696
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 697
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 698
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_83

    if-nez v2, :cond_22

    goto :goto_83

    .line 703
    :cond_22
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_29

    return v3

    :cond_29
    const/4 v2, 0x1

    .line 707
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    const-string v5, "SemWifiApSmartUtil"

    if-eqz v4, :cond_38

    const-string p0, "getNetworkType :isWiFi"

    .line 709
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 712
    :cond_38
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 713
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    if-eqz v0, :cond_7e

    const-string v0, "getNetworkType :isMobile"

    .line 715
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v2, :cond_66

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    if-eq v0, v6, :cond_66

    .line 717
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    if-ne v0, v5, :cond_5c

    goto :goto_66

    :cond_5c
    const/16 v0, 0xe

    if-eq v4, v0, :cond_64

    const/16 v0, 0x13

    if-ne v4, v0, :cond_67

    :cond_64
    move v3, v5

    goto :goto_67

    :cond_66
    :goto_66
    move v3, v6

    .line 724
    :cond_67
    :goto_67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartUtil:\tgetNetworkType :isMobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v3

    :cond_7e
    const-string p0, "getNetworkType :No Network"

    .line 727
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return v3
.end method

.method getOwnWifiMac()Ljava/lang/String;
    .registers 6

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 425
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isJDMDevice:Z

    if-eqz v0, :cond_11

    .line 426
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 428
    :cond_11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    const/4 v1, 0x0

    .line 429
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_1e
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    :cond_20
    const-string v1, "SemWifiApSmartUtil"

    if-nez v0, :cond_2c

    const-string v0, " getOwnWifiMac is null  "

    .line 435
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "02:00:00:00:00:00"

    goto :goto_44

    .line 438
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnWifiMac() - chipset information is macAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartUtil:\tgetOwnWifiMac is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOwnWifiMac is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .line 1017
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1018
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0xf

    if-ge v1, v2, :cond_1b

    const/16 v2, 0xa

    .line 1022
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1023
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1025
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSameUserName()Ljava/lang/String;
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "smart_tethering_user_name"

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 734
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSamsungAccount()Ljava/lang/String;
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    .line 358
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 359
    array-length v1, v0

    if-eqz v1, :cond_19

    const/4 p0, 0x0

    .line 362
    aget-object p0, v0, p0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    .line 364
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartUtil,getSamsungAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "SemWifiApSmartUtil"

    const-string v0, "getSamsungAccount:null"

    .line 365
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method getSamsungAccountCount()I
    .registers 4

    .line 1083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1086
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    .line 1087
    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 1088
    array-length p0, p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    throw p0
.end method

.method getSecurityType()B
    .registers 4

    .line 961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 962
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartUtil:\tisWPA3Enabled"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 967
    :cond_1e
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 968
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartUtil:\tisWPA3 transition Enabled"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method getSecurityType(Landroid/net/wifi/SoftApConfiguration;)B
    .registers 5

    if-nez p1, :cond_7

    .line 943
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSecurityType()B

    move-result p0

    return p0

    .line 945
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 946
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string p1, "SemWifiApSmartUtil:\tisWPA3Enabled"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 949
    :cond_17
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    .line 950
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string p1, "SemWifiApSmartUtil:\tisWPA3 transition Enabled"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v2

    .line 953
    :cond_26
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_35

    .line 954
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string p1, "SemWifiApSmartUtil:\tis OWE Enabled"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method getSmartApWhiteList()Ljava/lang/String;
    .registers 6

    .line 1239
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 1243
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1244
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1245
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_51
    .catchall {:try_start_6 .. :try_end_1b} :catchall_4f

    .line 1246
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v2, "#"

    .line 1249
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1252
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    .line 1253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x9

    .line 1254
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    .line 1255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_48} :catch_4d
    .catchall {:try_start_1b .. :try_end_48} :catchall_67

    goto :goto_1b

    .line 1263
    :cond_49
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5e

    goto :goto_62

    :catch_4d
    move-exception v0

    goto :goto_55

    :catchall_4f
    move-exception p0

    goto :goto_69

    :catch_51
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1259
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_67

    if-eqz v1, :cond_62

    .line 1263
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1269
    :cond_62
    :goto_62
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_67
    move-exception p0

    move-object v0, v1

    :goto_69
    if-eqz v0, :cond_73

    .line 1263
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1268
    :cond_73
    :goto_73
    throw p0
.end method

.method getStateDescription(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_26

    const/4 p0, 0x1

    if-eq p1, p0, :cond_23

    const/4 p0, 0x2

    if-eq p1, p0, :cond_20

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1d

    .line 993
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown State "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "Disconnecting"

    return-object p0

    :cond_20
    const-string p0, "Connected"

    return-object p0

    :cond_23
    const-string p0, "Connecting"

    return-object p0

    :cond_26
    const-string p0, "Disconnected"

    return-object p0
.end method

.method getStatusDescription(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_14

    .line 978
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Status "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "SUCCESS"

    return-object p0
.end method

.method getUserNameFromFamily([B)Ljava/lang/String;
    .registers 14

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "smart_tethering_family_user_names"

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_family_guids"

    invoke-static {v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x1040f51

    if-nez v2, :cond_7f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_7f

    .line 1172
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_78

    if-nez v1, :cond_35

    goto :goto_78

    :cond_35
    const-string v2, "\n"

    .line 1177
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1183
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_43
    if-ge v5, v2, :cond_6c

    aget-object v7, v1, v5

    .line 1184
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v7

    .line 1185
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object v7

    move v8, v4

    :goto_54
    const/4 v9, 0x4

    if-ge v8, v9, :cond_63

    add-int/lit8 v10, v8, 0x2

    .line 1188
    aget-byte v10, p1, v10

    aget-byte v11, v7, v8

    if-eq v10, v11, :cond_60

    goto :goto_63

    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_63
    :goto_63
    if-ne v8, v9, :cond_67

    const/4 v4, 0x1

    goto :goto_6c

    :cond_67
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_6c
    :goto_6c
    if-eqz v4, :cond_71

    .line 1198
    aget-object p0, v0, v6

    return-object p0

    .line 1200
    :cond_71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1176
    :cond_78
    :goto_78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1170
    :cond_7f
    :goto_7f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getWifi6ENetwork()Z
    .registers 5

    .line 914
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 915
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    .line 918
    :cond_12
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 919
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartUtil:\tgetBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_39

    const/4 v2, 0x1

    :cond_39
    return v2
.end method

.method getWifi6Network()Z
    .registers 3

    .line 902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 908
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method getlegacyPassword()Ljava/lang/String;
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 932
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartUtil:\tmConfig.getSecurityType():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-nez v1, :cond_46

    .line 935
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartUtil:\tgetlegacyPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-object v1

    .line 938
    :cond_46
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getlegacySSID()Ljava/lang/String;
    .registers 4

    .line 894
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 895
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 896
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartUtil:\tgetlegacySSID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getlegacySSIDHidden()Z
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 925
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 926
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartUtil:\tgetlegacySSIDHidden:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    return p0
.end method

.method getmappedClientMACbytes()[B
    .registers 11

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isJDMDevice:Z

    if-eqz v0, :cond_15

    .line 494
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 496
    :cond_15
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mWifiChipMAC:Ljava/lang/String;

    :cond_23
    const-string v3, "SemWifiApSmartUtil"

    if-nez v0, :cond_2f

    const-string v0, " getmappedClientMACbytes is null  "

    .line 502
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "02:00:00:00:00:00"

    goto :goto_47

    .line 505
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chipset information is macAddress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_47
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 510
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v4, v2

    :goto_54
    if-ge v4, v3, :cond_7b

    .line 512
    aget-char v5, v0, v4

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_5d

    goto :goto_78

    :cond_5d
    const/16 v6, 0x30

    if-gt v6, v5, :cond_6e

    const/16 v6, 0x39

    if-lt v6, v5, :cond_6e

    add-int/lit8 v5, v5, -0x30

    .line 517
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mapping_MAC:[C

    aget-char v5, v6, v5

    aput-char v5, v0, v4

    goto :goto_78

    :cond_6e
    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0xa

    .line 521
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mapping_MAC:[C

    aget-char v5, v6, v5

    aput-char v5, v0, v4

    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 524
    :cond_7b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, ":"

    .line 525
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 527
    array-length v0, p0

    move v3, v2

    move v4, v3

    :goto_89
    if-ge v3, v0, :cond_ac

    aget-object v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    .line 528
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_89

    :cond_ac
    return-object v1
.end method

.method public handleBootCompleted()V
    .registers 10

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mSmartNetworkCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->handleBootCompleted()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_db_migration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    return-void

    .line 214
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "smart_tethering_db_migration"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "SemWifiApSmartUtil"

    const-string v1, "handleBootCompleted: migration data"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartUtil:\thandleBootCompleted: migration data"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_guid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_50

    .line 219
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    :cond_50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_user_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 225
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_user_profile_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 231
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    :cond_90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_user_names"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 237
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    :cond_b0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_guids"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 243
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    :cond_d0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_familyid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f0

    .line 249
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    :cond_f0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_user_icon"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 255
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_110
    move v0, v2

    :goto_111
    const/4 v1, 0x6

    if-ge v0, v1, :cond_164

    .line 259
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smart_tethering_family_icons_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_161

    .line 261
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_161
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 266
    :cond_164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_d2dfamilyid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_184

    .line 268
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    :cond_184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_AES_keys"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a4

    .line 274
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    :cond_1a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_d2d_Wifimac"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c4

    .line 280
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    :cond_1c4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_latest_sa_error_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e4

    .line 286
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    :cond_1e4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hash_value_based_on_guid"

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    const-string v7, ""

    if-eqz v0, :cond_215

    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 296
    :cond_215
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hash_value_based_on_familyid"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_242

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 302
    :cond_242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_sim_value"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_26f

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 308
    :cond_26f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hash_value_based_on_d2dFamilyid"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_29c

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 314
    :cond_29c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_last_access_Token"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2c9

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 320
    :cond_2c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_count"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f8

    .line 322
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "smart_tethering_family_count"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_count"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    :cond_2f8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_sharing_service_registered"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_327

    .line 328
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "smart_tethering_family_sharing_service_registered"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_sharing_service_registered"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "smart_tethering_access_Token_count"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_35e

    .line 334
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart_tethering_access_Token_count"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "smart_tethering_access_Token_count"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_35e
    return-void
.end method

.method hideString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_28

    .line 1507
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_28

    .line 1510
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 1511
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_19
    if-ge v1, p0, :cond_23

    const-string p1, "*"

    .line 1513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1515
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return-object p0
.end method

.method hideString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_35

    .line 1519
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_35

    .line 1522
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    if-le p2, p0, :cond_15

    .line 1523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_18

    :cond_15
    if-gez p2, :cond_18

    move p2, v0

    .line 1527
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1528
    :goto_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_30

    const-string v1, "*"

    .line 1529
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1531
    :cond_30
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method

.method hideStringEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_47

    .line 1535
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_47

    const-string p0, "@"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_47

    .line 1538
    :cond_11
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1540
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 1541
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_35
    if-ge v1, p1, :cond_3f

    const-string v0, "*"

    .line 1543
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1545
    :cond_3f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1546
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return-object p0
.end method

.method isConnected()Z
    .registers 3

    .line 998
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 999
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-eqz p0, :cond_34

    .line 1002
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method isDataSaverModeEnabled()Z
    .registers 2

    .line 830
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    if-eqz p0, :cond_1b

    .line 831
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "SemWifiApSmartUtil"

    const-string v0, "DataSasver is enabled"

    .line 832
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method isEncryptionCanbeUsed(II)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    if-ne p2, v0, :cond_10

    .line 1354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isNearByAutohotspotEnabled()Z
    .registers 3

    .line 1362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "SemWifiApSmartUtil"

    const/4 v1, 0x0

    .line 568
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 569
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 571
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    if-eqz v3, :cond_27

    .line 574
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 575
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mPkgVer:Ljava/lang/String;

    goto :goto_2f

    :cond_27
    const/4 v2, 0x0

    .line 578
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mPkgVer:Ljava/lang/String;

    const-string p0, "isPackageExists | package is not system app or not available"

    .line 579
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2f} :catch_31

    :goto_2f
    move v1, v3

    goto :goto_45

    .line 584
    :catch_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return v1
.end method

.method lookup(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    .line 339
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->attributes:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_e

    .line 340
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method putD2DFamilyID(Ljava/lang/String;)V
    .registers 6

    .line 784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 786
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 787
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 788
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_d2dfamilyid"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    throw p0
.end method

.method putD2DWifiMac(Ljava/lang/String;)V
    .registers 5

    .line 776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "smart_tethering_d2d_Wifimac"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 781
    throw p0
.end method

.method putHashbasedonD2DFamilyid(J)V
    .registers 8

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 810
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v2, "hash_value_based_on_d2dFamilyid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    throw p0
.end method

.method putHashbasedonFamilyId(Ljava/lang/Long;)V
    .registers 4

    .line 1079
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hash_value_based_on_familyid"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method putHashbasedonGuid(Ljava/lang/Long;)V
    .registers 4

    .line 1075
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hash_value_based_on_guid"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method removeWifiMACFromRegisteredList(Ljava/lang/String;)V
    .registers 12

    const-string v0, "\n"

    const-string v1, "smart_tethering_d2d_Wifimac"

    const-string v2, "SemWifiApSmartUtil"

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 607
    :try_start_a
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " tWifiMAC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mD2DWifiAMC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d8

    .line 612
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 614
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d8

    const/4 v7, 0x0

    .line 616
    :goto_64
    array-length v8, v5

    if-ge v7, v8, :cond_9c

    .line 617
    aget-object v8, v5, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_99

    .line 618
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " splitMAC[i]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 622
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removed mac:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SemWifiApSmartUtil:\tremoved mac:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mretList:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 624
    array-length p1, v5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d3

    const/4 v6, 0x0

    .line 626
    :cond_d3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_a .. :try_end_d8} :catchall_dc

    .line 630
    :cond_d8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_dc
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    throw p0
.end method

.method sendClientScanResultUpdateIntent(Ljava/lang/String;)V
    .registers 4

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update has been called from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApSmartUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.d2dClientUpdate"

    .line 1300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public startLocalGroupSmartTetheringApk(ILjava/lang/String;)I
    .registers 14

    .line 1029
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiApSmartUtil"

    if-nez v0, :cond_f

    const-string p0, "can\'t start apk, due to internet not available"

    .line 1030
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1033
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v5, "smart_tethering_last_server_sync_time"

    invoke-static {v0, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_53

    if-nez p2, :cond_53

    .line 1036
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v0, v7, v9

    if-lez v0, :cond_37

    goto :goto_3d

    :cond_37
    const-string p0, "startSmartTetheringApkForLocalGroup is skipped because the last server sync was less than 5 seconds"

    .line 1039
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1037
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartUtil:\tstartSmartTetheringApkForLocalGroup: cmdArg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",receivedFamilyId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSmartTetheringApkForLocalGroup:,cmdArg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.mhs.smarttethering"

    const-string v4, "com.sec.mhs.smarttethering.WifiApGroupService"

    .line 1046
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cmd_arg"

    .line 1047
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_ab

    const-string p1, "AHSP"

    .line 1048
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ab

    const-string p1, "group_id"

    .line 1049
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    :cond_ab
    :try_start_ab
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b0} :catch_b1

    return v6

    :catch_b1
    const-string p0, "can\'t start service com.sec.mhs.smarttethering "

    .line 1055
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateAESKeyUsingLocalGroupSmartTetheringApk()I
    .registers 3

    .line 1062
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1063
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    :cond_16
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->startLocalGroupSmartTetheringApk(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateFamilyDetailsUsingLocalGroupSmartTetheringApk()I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->startLocalGroupSmartTetheringApk(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method validateGuidInFamilyUsers(Ljava/lang/String;)Z
    .registers 7

    .line 1142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1144
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->mContext:Landroid/content/Context;

    const-string v4, "smart_tethering_family_guids"

    invoke-static {v0, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_48

    .line 1148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    return v3

    .line 1152
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2a

    return v3

    :cond_2a
    const-string v0, "\n"

    .line 1156
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1158
    array-length v0, p0

    move v2, v3

    :goto_32
    if-ge v2, v0, :cond_47

    aget-object v4, p0, v2

    .line 1159
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string p0, "SemWifiApSmartUtil"

    const-string p1, "validateGuidInFamilyUsers true"

    .line 1160
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_47
    return v3

    :catchall_48
    move-exception p0

    .line 1148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1149
    throw p0
.end method

.method verifyInSmartApWhiteList(Ljava/lang/String;)Z
    .registers 9

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyInSmartApWhiteList in_mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1208
    :try_start_1c
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1209
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1210
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v5, 0x40

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_31} :catch_77
    .catchall {:try_start_1c .. :try_end_31} :catchall_75

    .line 1211
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_66

    const-string v5, "#"

    .line 1214
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1215
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1216
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_63} :catch_72
    .catchall {:try_start_31 .. :try_end_63} :catchall_6f

    if-eqz v2, :cond_31

    move v0, v4

    .line 1229
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_80

    :catch_6a
    move-exception p0

    .line 1231
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :catchall_6f
    move-exception p0

    move-object v2, v3

    goto :goto_81

    :catch_72
    move-exception p0

    move-object v2, v3

    goto :goto_78

    :catchall_75
    move-exception p0

    goto :goto_81

    :catch_77
    move-exception p0

    .line 1225
    :goto_78
    :try_start_78
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    if-eqz v2, :cond_80

    .line 1229
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_6a

    :cond_80
    :goto_80
    return v0

    :goto_81
    if-eqz v2, :cond_8b

    :try_start_83
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p1

    .line 1231
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1234
    :cond_8b
    :goto_8b
    throw p0
.end method
