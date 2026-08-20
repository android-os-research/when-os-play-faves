.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.super Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;
    }
.end annotation


# static fields
.field public static final ADD_CAPTIVE_EXEMPTS_RULES:I = 0x1

.field public static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final DBG:Z

.field public static final ERROR_TYPE:Ljava/lang/String; = "errorType"

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final INVALID_UID:I = -0x1

.field public static final KNOXVPN_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.knoxvpn.date"

.field public static final MAP_BUNDLE_INTERFACE_NAME:Ljava/lang/String; = "bundle_interface_name"

.field public static final MAP_BUNDLE_INTERFACE_TYPE:Ljava/lang/String; = "bundle_interface_type"

.field public static final MAP_BUNDLE_PROFILE_NAME:Ljava/lang/String; = "bundle_profile_name"

.field public static final MAP_BUNDLE_USB_STATUS:Ljava/lang/String; = "bundle_usb_status"

.field public static final MAP_BUNDLE_V4_ADDRESS:Ljava/lang/String; = "bundle_v4_address"

.field public static final MAP_BUNDLE_V6_ADDRESS:Ljava/lang/String; = "bundle_v6_address"

.field public static final MAP_KEY_CAPTIVE:Ljava/lang/String; = "captive"

.field public static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field public static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field public static final MAP_KEY_PAC_OPERATION:Ljava/lang/String; = "pac_operation"

.field public static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field public static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field public static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field public static final MAP_KEY_VALUESTRING:Ljava/lang/String; = "value_string"

.field public static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final NULL_OBJECT:Ljava/lang/Object;

.field public static final PACKAGE_LIST:Ljava/lang/String; = "packageList"

.field public static final REMOVE_CAPTIVE_EXEMPTS_RULES:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KnoxVpnEngineService"

.field public static final TETHER_AUTH_TAG:Ljava/lang/String; = "KnoxVpnTetherAuthentication"

.field public static final USER_ID:Ljava/lang/String; = "userID"

.field public static final VPN_RETURN_INT_ERROR:I = -0x1

.field public static final VPN_RETURN_INT_SUCCESS:I

.field public static volatile mIsCaptiveExempt:Z

.field public static mNetdService:Landroid/net/INetd;

.field public static mOemNetdService:Lcom/android/internal/net/IOemNetd;


# instance fields
.field public isDeviceBootCompleted:Z

.field public mAMS:Lcom/android/server/am/ActivityManagerService;

.field public final mCaptiveExemptLock:Ljava/lang/Object;

.field public mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEnterpriseDeviceManagerService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIgnoreConnectCheckForChaining:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

.field public mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field public mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

.field public mUsbManager:Landroid/hardware/usb/UsbManager;

.field public mVpnClientStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVpnConnectionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mVpnInfoPolicy:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

.field public mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field public receiver:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

.field public vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field public vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 182
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    const/4 v0, 0x0

    .line 263
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIsCaptiveExempt:Z

    .line 7729
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 216
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 218
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 220
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 222
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mEnterpriseDeviceManagerService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 224
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 228
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 230
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 232
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 234
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 236
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 238
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPowerManager:Landroid/os/PowerManager;

    .line 240
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 242
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 246
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->receiver:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    .line 249
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnConnectionList:Ljava/util/HashMap;

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnClientStatus:Ljava/util/List;

    .line 255
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 257
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 259
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    .line 261
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mCaptiveExemptLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isDeviceBootCompleted:Z

    .line 5847
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 331
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;)V
    .registers 4

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 216
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 218
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 220
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 222
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mEnterpriseDeviceManagerService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 224
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 228
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 230
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 232
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 234
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 236
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 238
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPowerManager:Landroid/os/PowerManager;

    .line 240
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 242
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 246
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->receiver:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    .line 249
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnConnectionList:Ljava/util/HashMap;

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnClientStatus:Ljava/util/List;

    .line 255
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 257
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 259
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    .line 261
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mCaptiveExemptLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isDeviceBootCompleted:Z

    .line 5847
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v0, "KnoxVpnEngineService"

    const-string v1, "Initializing in constructor"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    .line 337
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 339
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 340
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 341
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Ljava/util/concurrent/ConcurrentHashMap;

    .line 344
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 345
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getVpnProfileConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 346
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getKnoxVpnStorageProviderInstance()Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 347
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getKnoxVpnApiValidationInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 348
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 349
    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 351
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHandlerThread()V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleKnoxVpnBuildUpdate()V

    .line 357
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 359
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->writeVersionInProperties()V

    return-void
.end method

.method public static connectNativeNetdService()V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "netd"

    .line 365
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_10

    return-void

    .line 369
    :cond_10
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const/4 v0, 0x0

    .line 371
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_26

    .line 374
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "KnoxVpnEngineService"

    const-string v1, "Can\'t connect to NativeNetdService netd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public static getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 3

    .line 380
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    return-object v0

    .line 382
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 383
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->connectNativeNetdService()V

    .line 384
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_36

    .line 386
    :try_start_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnEngineService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_36
    :goto_36
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method private synthetic lambda$registerNetworkCallback$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5871
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 5872
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 5873
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 5874
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRangeParcel;",
            ">;)[",
            "Landroid/net/UidRangeParcel;"
        }
    .end annotation

    .line 7446
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 7448
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRangeParcel;

    .line 7449
    new-instance v3, Landroid/net/UidRangeParcel;

    iget v4, v2, Landroid/net/UidRangeParcel;->start:I

    iget v2, v2, Landroid/net/UidRangeParcel;->stop:I

    invoke-direct {v3, v4, v2}, Landroid/net/UidRangeParcel;-><init>(II)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_25
    return-object v0
.end method


# virtual methods
.method public final _getSharedUidPackges(Ljava/lang/String;ILandroid/content/pm/IPackageManager;Ljava/util/List;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1308
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized addAllPackages(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2741
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized addBlockingRulesForPackages()V
    .registers 1

    monitor-enter p0

    .line 4546
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3023
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addExemptRulesForUid(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final addMiscRulesForProfile(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final addPackages(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3073
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addUidToExemptList(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public declared-synchronized addVpnUidRanges(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 7100
    monitor-exit p0

    return-void
.end method

.method public allowAppsToMakeDnsQueryForNetId()V
    .registers 1

    return-void
.end method

.method public declared-synchronized allowAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 9

    monitor-enter p0

    .line 3842
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkCallingUidPermission(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 3844
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateIfNonLegacyUserAndCheckIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9d

    if-nez v0, :cond_11

    const/16 p1, 0x8c

    .line 3845
    monitor-exit p0

    return p1

    .line 3850
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->allowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_9d

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1d

    .line 3852
    monitor-exit p0

    return v0

    .line 3855
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_9d

    if-nez v1, :cond_29

    const/16 p1, 0x6c

    .line 3858
    monitor-exit p0

    return p1

    .line 3861
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_99
    .catchall {:try_start_29 .. :try_end_2d} :catchall_9d

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 3862
    monitor-exit p0

    return v0

    .line 3865
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUsbTetheringForProfileInDb(Ljava/lang/String;I)V

    .line 3866
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTethering(I)V

    .line 3867
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->registerNetdTetherEventListener(Z)V

    .line 3868
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->enableKnoxVpnFlagForTether(Z)V

    .line 3870
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTetherAuth(I)V

    .line 3871
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUsbTetherAuthDetails(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 3873
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v4, "com.samsung.knox.vpn.tether.auth"

    invoke-virtual {v2, p2, v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addOrRemoveAppsFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3875
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result p1

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->bindTetherAuthService(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3877
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object p1

    .line 3878
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    .line 3879
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result p3

    if-eqz p1, :cond_9b

    if-nez p2, :cond_7d

    if-ne p3, v3, :cond_7d

    const-string p2, "KnoxVpnTetherAuthentication"

    const-string p3, "Applying rules to drop tether packets after allowAuthUsbTetheringOverVpn API is called and before vpn comes up"

    .line 3882
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForDroppingTetherPackets(Ljava/lang/String;)V

    goto :goto_9b

    :cond_7d
    if-eqz p2, :cond_9b

    if-ne p3, v3, :cond_9b

    const-string p2, "KnoxVpnTetherAuthentication"

    const-string/jumbo p3, "start tether auth process after allowAuthUsbTetheringOverVpn API is called"

    .line 3885
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getIpAddressForUsbTetheringInterface()Ljava/util/List;

    move-result-object p2

    .line 3887
    iget-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v1

    invoke-virtual {p3, v1, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_98} :catch_99
    .catchall {:try_start_32 .. :try_end_98} :catchall_9d

    goto :goto_9b

    :catch_99
    const/16 v0, 0x65

    .line 3893
    :cond_9b
    :goto_9b
    monitor-exit p0

    return v0

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allowNoAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 12

    monitor-enter p0

    .line 3782
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkCallingUidPermission(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_98

    const/16 v1, 0x8d

    .line 3786
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_f} :catch_96
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_94
    .catchall {:try_start_7 .. :try_end_f} :catchall_98

    if-nez v2, :cond_13

    .line 3787
    monitor-exit p0

    return v1

    .line 3795
    :cond_13
    :try_start_13
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateIfNonLegacyUserAndCheckIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_98

    if-nez v0, :cond_1f

    const/16 p1, 0x8c

    .line 3796
    monitor-exit p0

    return p1

    .line 3801
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->allowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_98

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2c

    .line 3803
    monitor-exit p0

    return p1

    .line 3806
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_98

    if-nez v0, :cond_38

    const/16 p1, 0x6c

    .line 3809
    monitor-exit p0

    return p1

    .line 3812
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_90
    .catchall {:try_start_38 .. :try_end_3c} :catchall_98

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 3813
    monitor-exit p0

    return p1

    .line 3816
    :cond_41
    :try_start_41
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUsbTetheringForProfileInDb(Ljava/lang/String;I)V

    .line 3817
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTethering(I)V

    .line 3818
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->registerNetdTetherEventListener(Z)V

    .line 3819
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->enableKnoxVpnFlagForTether(Z)V

    .line 3821
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object v7

    .line 3822
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 3823
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    if-eqz v7, :cond_92

    if-nez v4, :cond_74

    if-ne v0, v2, :cond_74

    const-string p2, "KnoxVpnEngineService"

    const-string v0, "Applying rules to drop tether packets after enableUsbTethering API is called and before vpn comes up"

    .line 3826
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForDroppingTetherPackets(Ljava/lang/String;)V

    goto :goto_92

    :cond_74
    if-eqz v4, :cond_92

    if-ne v0, v2, :cond_92

    .line 3829
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/net/IVpnManager;->getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3830
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkPartWithMask(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 3831
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVirtualInterfaceType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForUsbTethering(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8f} :catch_90
    .catchall {:try_start_41 .. :try_end_8f} :catchall_98

    goto :goto_92

    :catch_90
    const/16 p1, 0x65

    .line 3837
    :cond_92
    :goto_92
    monitor-exit p0

    return p1

    .line 3792
    :catch_94
    monitor-exit p0

    return v1

    .line 3790
    :catch_96
    monitor-exit p0

    return v1

    :catchall_98
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 801
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    .line 802
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    .line 804
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    if-lez v0, :cond_17

    const-string v1, ", "

    .line 806
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    :cond_17
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    const-string p1, "]"

    .line 811
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final bindKnoxVpnInterface(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final blockIncomingICMPPackets(Z)V
    .registers 2

    return-void
.end method

.method public final checkCallingUidPermission(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public checkChainingStatus(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final checkExistsEmailPackageInProfiles(ILjava/util/HashMap;Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public checkIfCallerIsVpnVendor(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final checkIfLegacyUser(I)Z
    .registers 4

    const/4 p0, 0x0

    .line 7618
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7619
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    .line 7626
    :catch_e
    :cond_e
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check to see userId type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxVpnEngineService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return p0
.end method

.method public checkIfLocalProxyPortExists(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public checkIfUidIsExempted(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final checkIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z
    .registers 6

    .line 7656
    iget-object p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_35

    .line 7657
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v1, "KnoxVpnEngineService"

    if-eqz p1, :cond_2e

    .line 7658
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_2e

    .line 7661
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 7662
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isMethodAllowedForVendorSettings(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "checkIfVendorAllowed: settings vendor allowed"

    .line 7663
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2e
    const-string p0, "checkIfVendorAllowed: settings vendor not allowed"

    .line 7667
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_35
    return v0
.end method

.method public checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public final checkToUpdateDb()V
    .registers 1

    return-void
.end method

.method public final createProcessKillNotification(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 905
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deleteUIDFromPackageData(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public denyAppsToMakeDnsQueryForNetId()V
    .registers 1

    return-void
.end method

.method public declared-synchronized disallowUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    monitor-enter p0

    .line 3898
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkCallingUidPermission(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_92

    const/16 v1, 0x8d

    .line 3902
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz v2, :cond_2b

    .line 3904
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v4
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_15} :catch_90
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_8e
    .catchall {:try_start_7 .. :try_end_15} :catchall_92

    if-nez v4, :cond_19

    .line 3905
    monitor-exit p0

    return v3

    .line 3907
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbtetherAuth()I

    move-result v2

    if-nez v2, :cond_2b

    .line 3909
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_27} :catch_90
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_8e
    .catchall {:try_start_19 .. :try_end_27} :catchall_92

    if-nez v2, :cond_2b

    .line 3910
    monitor-exit p0

    return v1

    .line 3920
    :cond_2b
    :try_start_2b
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateIfNonLegacyUserAndCheckIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_92

    if-nez v0, :cond_37

    const/16 p1, 0x8c

    .line 3921
    monitor-exit p0

    return p1

    .line 3926
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->disallowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    move-result p1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_92

    if-eq p1, v3, :cond_41

    .line 3928
    monitor-exit p0

    return p1

    .line 3931
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_92

    if-nez v0, :cond_4d

    const/16 p1, 0x6c

    .line 3934
    monitor-exit p0

    return p1

    .line 3937
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUsbTetheringForProfileInDb(Ljava/lang/String;I)V

    .line 3938
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTethering(I)V

    .line 3939
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->registerNetdTetherEventListener(Z)V

    .line 3940
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->enableKnoxVpnFlagForTether(Z)V

    .line 3942
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesForUsbTethering(ILjava/lang/String;)V

    .line 3944
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbtetherAuth()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8c

    .line 3946
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUsbTetherAuthDetails(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 3947
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUsbTetherAuth(I)V

    .line 3948
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->unbindTetherAuthService(Z)V

    .line 3949
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v1, "com.samsung.knox.vpn.tether.auth"

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addOrRemoveAppsFromBatteryOptimization(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_89} :catch_8a
    .catchall {:try_start_4d .. :try_end_89} :catchall_92

    goto :goto_8c

    :catch_8a
    const/16 p1, 0x65

    .line 3955
    :cond_8c
    :goto_8c
    monitor-exit p0

    return p1

    .line 3917
    :catch_8e
    monitor-exit p0

    return v1

    .line 3915
    :catch_90
    monitor-exit p0

    return v1

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 9073
    monitor-exit p0

    return-void
.end method

.method public final getAMSInstance()Lcom/android/server/am/ActivityManagerService;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActivate(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAllPackages(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAllRangedPackages(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1586
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChainingEnabledForProfile(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 570
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 572
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceNameForUid(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKnoxVpnProfileType(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageListNoInternetPermission(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "packageUid"

    .line 2710
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2712
    :try_start_8
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo v3, "vpnNoInternetPermission"

    const-string/jumbo v4, "profileName"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 2720
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 2721
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2722
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 2723
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_2e

    .line 2724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2725
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2726
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    array-length v3, v2

    move v4, v6

    :goto_5e
    if-ge v4, v3, :cond_2e

    aget-object v5, v2, v4

    .line 2728
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_65} :catch_68

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :catch_68
    :cond_68
    return-object v1
.end method

.method public final getPortForProfileName(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProfileNameForUid(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProxyInfoForUid(I)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSharedUidPackges([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUidPidEnabled(ILjava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public final getUsbManager()Landroid/hardware/usb/UsbManager;
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_11

    .line 645
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 647
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method public declared-synchronized getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1710
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVPNState(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final declared-synchronized getVPNTransitionState(Ljava/lang/String;)I
    .registers 2

    monitor-enter p0

    .line 7845
    monitor-exit p0

    const/4 p0, -0x1

    return p0
.end method

.method public getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVirtualInterfaceType(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final getVpnInfoPolicy()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnInfoPolicy:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    if-nez v0, :cond_c

    .line 652
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getVpnInfoPolicyInstance()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnInfoPolicy:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    .line 654
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnInfoPolicy:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    return-object p0
.end method

.method public final getVpnInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVpnManagerService()Landroid/net/IVpnManager;
    .registers 1

    .line 552
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mInjector:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->getVpnManagerServiceInstance()Landroid/net/IVpnManager;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3635
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1133
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleActionAdminChanged(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized handleActionClearData(Landroid/os/Bundle;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "android.intent.extra.UID"

    .line 5702
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5703
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5704
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5705
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5706
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 5707
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_74

    .line 5708
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    if-eqz v3, :cond_31

    .line 5709
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 5710
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 5711
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    const-string v3, "KnoxVpnEngineService"

    .line 5712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding to vpn client after end-user cleared the data for client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with uid "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;I)Z
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_76

    .line 5719
    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleActionEthernetChanged(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6174
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleActionLockBootCompleted(I)V
    .registers 2

    monitor-enter p0

    .line 6889
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleActionMobileChanged(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6058
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleActionPackageAdded(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6529
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized handleActionPackageRemoved(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6783
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleActionUsbTethering(Landroid/os/Bundle;)V
    .registers 6

    monitor-enter p0

    .line 5723
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 5724
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_69

    .line 5726
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 5727
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 5728
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bundle_usb_status"

    .line 5729
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_39

    goto :goto_69

    :cond_39
    if-ne p1, v3, :cond_69

    if-eqz v0, :cond_4c

    .line 5734
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 5736
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesForUsbTethering(ILjava/lang/String;)V

    .line 5738
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbtetherAuth()I

    move-result p1

    if-ne p1, v3, :cond_69

    const-string p1, "KnoxVpnTetherAuthentication"

    const-string/jumbo v0, "usb tether auth process is going to be stopped after usb or usb tethering is disabled"

    .line 5740
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-virtual {p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->stopTetheringAuthProcess(Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_62
    .catchall {:try_start_1 .. :try_end_5f} :catchall_60

    goto :goto_69

    :catchall_60
    move-exception p1

    goto :goto_6b

    :catch_62
    :try_start_62
    const-string p1, "KnoxVpnEngineService"

    const-string v0, "Exception occured while trying to enable usb tethering after the usb cable is attached"

    .line 5749
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_60

    .line 5751
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :goto_6b
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleActionUserRemoved(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6949
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleActionWifiChanged(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 5944
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized handleCaptivePortal(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 5880
    monitor-exit p0

    return-void
.end method

.method public final handleChainingScenarioForStartConnection(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final handleChainingScenarioForStopConnection(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized handleConnectivityAction(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6289
    monitor-exit p0

    return-void
.end method

.method public final handleKnoxVpnBuildUpdate()V
    .registers 1

    return-void
.end method

.method public final handleUserScreenUnlock()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized handleVpnInterfaceState(Landroid/os/Bundle;)V
    .registers 2

    monitor-enter p0

    .line 6415
    monitor-exit p0

    return-void
.end method

.method public final hasVpnInterface(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final implementsVpnService(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final initializeHandlerThread()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized initializeHashtable()V
    .registers 1

    monitor-enter p0

    .line 4374
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized initializeVpnDataAndVendors()V
    .registers 1

    monitor-enter p0

    .line 883
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized initializeVpnVendorForUserAfterBootComplete(I)V
    .registers 2

    monitor-enter p0

    .line 4328
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized initializeVpnVendorForUserAfterLockBootComplete(I)V
    .registers 2

    monitor-enter p0

    .line 4296
    monitor-exit p0

    return-void
.end method

.method public final isMethodAllowedForVendorSettings(Ljava/lang/String;)Z
    .registers 6

    .line 7680
    sget-object p0, Lcom/samsung/android/knox/net/vpn/KnoxVpnPolicyConstants;->ALLOWED_METHODS_VENDOR_SETTINGS:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 7681
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public final isNetworkConnected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isProxyConfiguredForKnoxVpn(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isProxyServicePackage(ILjava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isUsbTetheringOverVpnEnabled(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 4

    monitor-enter p0

    .line 3960
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkCallingUidPermission(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 3962
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateIfNonLegacyUserAndCheckIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    if-nez v0, :cond_11

    const/16 p1, 0x8c

    .line 3963
    monitor-exit p0

    return p1

    .line 3968
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUsbTetheringOverVpnEnabledValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_32

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1d

    .line 3970
    monitor-exit p0

    return p1

    .line 3973
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_32

    if-nez p1, :cond_29

    const/16 p1, 0x6c

    .line 3976
    monitor-exit p0

    return p1

    .line 3979
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUsbTethering()I

    move-result p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_2e
    .catchall {:try_start_29 .. :try_end_2d} :catchall_32

    goto :goto_30

    :catch_2e
    const/16 p1, 0x65

    .line 3983
    :goto_30
    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final killRunningProcessToApplyProxy(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final logVpnVendor(Landroid/content/ComponentName;)V
    .registers 14

    const-string/jumbo v0, "packageName"

    const-string v1, "KnoxVpnEngineService"

    const-string/jumbo v2, "vpnVendor"

    if-nez p1, :cond_b

    return-void

    .line 9231
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9232
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 9233
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_c8

    .line 9236
    :cond_21
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_41

    .line 9237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN service name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pkgname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string v4, "com.samsung.android.knox.net.vpn.KnoxONSVpnService"

    .line 9242
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_4c

    const/4 p1, 0x2

    goto :goto_4d

    :cond_4c
    move p1, v4

    .line 9248
    :goto_4d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 9250
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v5, v6, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5d} :catch_c9

    const-string/jumbo v10, "namespace"

    if-eqz v8, :cond_8c

    .line 9252
    :try_start_62
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_69

    goto :goto_8c

    .line 9259
    :cond_69
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6f} :catch_c9

    .line 9261
    :try_start_6f
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_c9

    goto :goto_79

    :catch_78
    move v8, v7

    :goto_79
    and-int v9, v8, p1

    if-nez v9, :cond_a1

    or-int v7, v8, p1

    .line 9266
    :try_start_7f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9267
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {v7, v2, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_a0

    .line 9253
    :cond_8c
    :goto_8c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 9254
    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9256
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {v0, v2, v9, v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    :goto_a0
    move v7, v4

    :cond_a1
    if-eqz v7, :cond_e2

    .line 9272
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_VPN"

    const-string v5, "API:logVpnVendor"

    invoke-direct {v0, v2, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v2, "vndrPkgN"

    .line 9273
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "New"

    and-int/2addr p1, v4

    if-eqz p1, :cond_bb

    const-string v0, "Old"

    .line 9277
    :cond_bb
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "NS"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9278
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_c7} :catch_c9

    goto :goto_e2

    :cond_c8
    :goto_c8
    return-void

    :catch_c9
    move-exception p0

    .line 9281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to log vendor namespace "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    return-void
.end method

.method public final migrateForAddall(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
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
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final printProfileVpnMap()V
    .registers 1

    return-void
.end method

.method public final profileFailInfoBeSaved(ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 11

    .line 765
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 768
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "profileName"

    .line 769
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, 0x133

    .line 771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "errorType"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "_"

    .line 772
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "vendorName"

    if-eqz v1, :cond_45

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_45

    .line 773
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 775
    :cond_45
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :goto_48
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "containerID"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "packageList"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string/jumbo p1, "vpnConnectionFail"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    .line 781
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz p1, :cond_88

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add profile in database (vpnConnectionFail): status is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "profile Name is"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxVpnEngineService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    return-void
.end method

.method public final refreshDomainInHashMap(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final registerNetworkCallback()V
    .registers 1

    return-void
.end method

.method public final removeAddAllPackageInfofromDatabase(Ljava/lang/String;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized removeAllPackages(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2848
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3545
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3111
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeExemptRulesForUid(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final removeExemptedUidDetailsAfterUninstall(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public final removeFromHashMapByProfileName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final removeMiscRulesForProfile(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final removePackageListByUid(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public final removePackagesFromDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final removePackagesFromPermissionCheckDb(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2344
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeProcessKillNotification(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final removeProfileFromKeyStore(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final removeUidFromExemptList(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public final removeVpnInterface(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1175
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized removeVpnUidRanges(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 6299
    monitor-exit p0

    return-void
.end method

.method public final resetInterfaceParameter(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final runAllVpnService()V
    .registers 1

    return-void
.end method

.method public final sendBindDisconnectedIntent(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public final sendBindSuccessIntent(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public final sendMessageToHandler(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final sendVpnConnectionFailIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 723
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v5

    .line 724
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "_"

    if-eqz v0, :cond_74

    .line 728
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 730
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 731
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 732
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUserPackageListForProfile(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    goto :goto_25

    .line 734
    :cond_40
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_25

    .line 735
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt v8, v3, :cond_6a

    add-int/lit8 v8, v1, 0x1

    .line 736
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    aput-object v7, v6, v1

    goto :goto_72

    :cond_6a
    add-int/lit8 v8, v1, 0x1

    .line 738
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    :goto_72
    move v1, v8

    goto :goto_25

    :cond_74
    new-array v0, v1, [Ljava/lang/String;

    move-object v6, v0

    .line 746
    :cond_77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.ACTION_RECREATE_VPN_PROFILE_FAIL"

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v7, "com.samsung.android.knox.intent.extra.EXTRA_VENDOR_NAME"

    if-eqz v1, :cond_9a

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v1, v3, :cond_9a

    .line 749
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9d

    .line 751
    :cond_9a
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :goto_9d
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_PROFILE_NAME"

    .line 754
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_USER_ID"

    .line 755
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_PACKAGE_LIST"

    .line 756
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Vpn Connection Fail intent - profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnEngineService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    .line 761
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->profileFailInfoBeSaved(ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public final setActivate(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setCommonProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public final setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6

    return-void
.end method

.method public setInitialTimeToTunnelEstablishment(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method

.method public final setPropertiesWithLocalEntry(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 6

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1664
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 3586
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setupIntentFilter()V
    .registers 1

    return-void
.end method

.method public showToastVpnEULA()V
    .registers 1

    return-void
.end method

.method public final startChainedProfile(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized startConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1820
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized startVpnConnectionForAllClients()V
    .registers 1

    monitor-enter p0

    .line 5175
    monitor-exit p0

    return-void
.end method

.method public final startVpnConnectionForBindedClient(Ljava/lang/String;Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;)V
    .registers 3

    return-void
.end method

.method public final declared-synchronized startVpnConnectionForClient(I)V
    .registers 2

    monitor-enter p0

    .line 5218
    monitor-exit p0

    return-void
.end method

.method public startVpnForPerApplication(Ljava/lang/String;Ljava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public startVpnForUserwideVpn(Ljava/lang/String;IZ)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public final declared-synchronized startVpnProfile(Ljava/lang/String;)I
    .registers 2

    monitor-enter p0

    .line 7338
    monitor-exit p0

    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized stopConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1919
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final stopStrongwanProxyConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public final declared-synchronized stopVpnConnectionAfterAdminRemoval(I)V
    .registers 2

    monitor-enter p0

    .line 5012
    monitor-exit p0

    return-void
.end method

.method public final stopVpnConnectionForAirplaneMode()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized stopVpnConnectionForClient(I)V
    .registers 2

    monitor-enter p0

    .line 5264
    monitor-exit p0

    return-void
.end method

.method public final syncVpnProfile(Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final toJSONObject(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 7

    const-string/jumbo p0, "packageList"

    const-string/jumbo v0, "vendorName"

    const-string/jumbo v1, "profileName"

    const-string v2, "errorType"

    .line 786
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 788
    :try_start_10
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "userID"

    const-string v1, "containerID"

    .line 791
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    const-string p0, "KnoxVpnEngineService"

    const-string/jumbo p1, "toJSONObject(): JSONException"

    .line 794
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_45
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterFilterList()V
    .registers 1

    return-void
.end method

.method public final unsetDnsSystemProperty(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public updateBlockingRules(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final updateIfNonLegacyUserAndCheckIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)Z
    .registers 4

    .line 7642
    iget v0, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfLegacyUser(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 7643
    iput p2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 7645
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfVendorAllowed(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result p0

    return p0
.end method

.method public final updateNotification(Ljava/lang/String;IZ)V
    .registers 4

    return-void
.end method

.method public final updatePackageData(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final updateProxyRules(ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final updateRulesToExemptUid(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    return-void
.end method

.method public final validateAdminAndVendorForProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public final validateProfilesForVendor(Ljava/lang/String;Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;)V
    .registers 3

    return-void
.end method

.method public final writeAddAllPackageToDB(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public final writePackageToDB(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public final writePackagestoPermissionCheckDb(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method
