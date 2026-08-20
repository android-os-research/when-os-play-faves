.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;,
        Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;,
        Lcom/android/server/connectivity/Vpn$VpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$Dependencies;,
        Lcom/android/server/connectivity/Vpn$RetryScheduler;
    }
.end annotation


# static fields
.field public static final ACTION_VPN_INTERFACE_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

.field public static final ACTION_VPN_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

.field public static final ANDROID_KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field public static final CHAINING_DISABLED:I = 0x0

.field public static final CHAINING_ENABLED:I = 0x1

.field public static final DBG:Z

.field public static final EXTRA_ACTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

.field public static final EXTRA_PROFILE_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

.field public static final EXTRA_STATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

.field public static final EXTRA_TUN_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

.field public static final EXTRA_TUN_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

.field public static final EXTRA_TUN_V6_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

.field public static final EXTRA_VPN_CLIENT_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_CLIENT_TYPE_INTERNAL"

.field public static final FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field public static final LOCKDOWN_ALLOWLIST_SETTING_NAME:Ljava/lang/String; = "always_on_vpn_lockdown_whitelist"

.field public static final LOGD:Z = true

.field public static final MAX_VPN_PROFILE_SIZE_BYTES:I = 0x20000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETID_UNSET:I = 0x0

.field public static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field public static final PEM_CERT_FOOTER:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field public static final PEM_CERT_HEADER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\n"

.field public static final PEM_CERT_LINE_CHARS:I = 0x40

.field public static final PER_APP_VPN:Z = false

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final STRONSWAN_PROXY_PGK:Ljava/lang/String; = "com.samsung.sVpn"

.field public static final SYSTEM_VPN:Z = true

.field public static final TAG:Ljava/lang/String; = "Vpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field public static final TYPE_PER_APP_VPN:I = 0x1

.field public static final TYPE_SYSTEM_VPN:I = 0x0

.field public static final UCM_SERVICE:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field public static final VPN_APP_EXCLUDED:Ljava/lang/String; = "VPN_APP_EXCLUDED_"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final VPN_DEFAULT_SCORE:I = 0x65

.field public static final VPN_LAUNCH_IDLE_ALLOWLIST_DURATION_MS:J = 0xea60L

.field public static final VPN_MANAGER_EVENT_ALLOWLIST_DURATION_MS:J = 0x7530L

.field public static final VPN_PROVIDER_NAME_BASE:Ljava/lang/String; = "VpnNetworkProvider:"


# instance fields
.field public final KNOXVPN_CONTAINER_ENABLED:I

.field public KNOXVPN_FEATURE:I

.field public final KNOXVPN_MDM_ENABLED:I

.field public final knoxVpnUidRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAddress:Ljava/lang/String;

.field public mAlwaysOn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mBlockedUidsAsToldToConnectivity:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRangeParcel;",
            ">;"
        }
    .end annotation
.end field

.field public mConfig:Lcom/android/internal/net/VpnConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEgressIface:Ljava/lang/String;

.field public volatile mEnableTeardown:Z

.field public mHttpProxyInfo:Landroid/net/ProxyInfo;

.field public final mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

.field public mInterface:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsPackageTargetingAtLeastQ:Z

.field public mLegacyAddress:Ljava/lang/String;

.field public mLegacyState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLockdown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLockdownAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLooper:Landroid/os/Looper;

.field public final mNetd:Landroid/net/INetd;

.field public mNetworkAgent:Landroid/net/NetworkAgent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mNetworkInfo:Landroid/net/NetworkInfo;

.field public final mNetworkProvider:Landroid/net/NetworkProvider;

.field public final mNms:Landroid/os/INetworkManagementService;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mObserver:Landroid/net/INetworkManagementEventObserver;

.field public mOwnerUID:I

.field public mPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mProfileName:Ljava/lang/String;

.field public mStatusIntent:Landroid/app/PendingIntent;

.field public mSwifiConfig:Lcom/android/internal/net/VpnConfig;

.field public final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field public final mUserId:I

.field public final mUserIdContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;

.field public mV6Address:Ljava/lang/String;

.field public mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

.field public final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field public mVpnRules:Lcom/android/server/connectivity/VpnRules;

.field public mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/connectivity/Vpn;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEgressIface(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableTeardown(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkev2SessionCreator(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetd(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetd;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUID(Lcom/android/server/connectivity/Vpn;)I
    .registers 1

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileName(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLegacyAddress(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$magentDisconnect(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->broadcastVpnState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideNotification(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSecureWifiPackage(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSettingsVpnLocked(Lcom/android/server/connectivity/Vpn;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniCreateSecureWifi(Lcom/android/server/connectivity/Vpn;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCreateSecureWifi(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeLinkProperties(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeVpnProfileStateLocked(Lcom/android/server/connectivity/Vpn;)Landroid/net/VpnProfileState;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monKnoxVpnConnected(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->onKnoxVpnConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEventToVpnManagerApp(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowNotification(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->showNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 1

    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 307
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 17

    .line 615
    new-instance v3, Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-direct {v3}, Lcom/android/server/connectivity/Vpn$Dependencies;-><init>()V

    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    move-object v2, p2

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 623
    new-instance v8, Lcom/android/server/connectivity/Vpn$SystemServices;

    move-object v2, p2

    invoke-direct {v8, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    invoke-direct {v9}, Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/connectivity/Vpn$Dependencies;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;Lcom/android/server/connectivity/Vpn$SystemServices;Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    const/4 v1, 0x0

    .line 311
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 312
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 313
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    const/4 v2, -0x1

    .line 314
    iput v2, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    .line 315
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_MDM_ENABLED:I

    const/4 v0, 0x2

    .line 316
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_CONTAINER_ENABLED:I

    .line 333
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 352
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 375
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    .line 2280
    new-instance v3, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 4770
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 4861
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 632
    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 633
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 634
    const-class p7, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/net/ConnectivityManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 635
    const-class p7, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 636
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p7

    invoke-virtual {p2, p7, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p7

    iput-object p7, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    .line 637
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 638
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    .line 639
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/net/INetd;

    .line 640
    iput p6, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 641
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 642
    iput-object p8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    .line 643
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn;->mIkev2SessionCreator:Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;

    .line 644
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    const-string p3, "[Legacy VPN]"

    .line 646
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 647
    invoke-virtual {p0, p3, p6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 648
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    .line 650
    new-instance p3, Lcom/android/server/connectivity/VpnRules;

    invoke-direct {p3}, Lcom/android/server/connectivity/VpnRules;-><init>()V

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 654
    :try_start_8c
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p4, p3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_91} :catch_92

    goto :goto_9a

    :catch_92
    move-exception p3

    const-string p4, "Vpn"

    const-string p5, "Problem registering observer"

    .line 656
    invoke-static {p4, p5, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :goto_9a
    new-instance p3, Landroid/net/NetworkProvider;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VpnNetworkProvider:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p1, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 662
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 663
    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 664
    new-instance p1, Landroid/net/NetworkInfo;

    const/16 p2, 0x11

    const-string p3, "VPN"

    const-string p4, ""

    invoke-direct {p1, p2, v0, p3, p4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 666
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 p2, 0x4

    .line 667
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 668
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    const/16 p2, 0x1c

    .line 669
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    new-instance p2, Landroid/net/VpnTransportInfo;

    invoke-direct {p2, v2, v1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 670
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 671
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 673
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    return-void
.end method

.method public static createUidRangeForUser(I)Landroid/util/Range;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5186
    new-instance v0, Landroid/util/Range;

    const v1, 0x186a0

    mul-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "appops"

    .line 1404
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 3

    .line 2541
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 2543
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_8

    return-object v0

    .line 2548
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find IPv4 default gateway"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 1

    const-string/jumbo v0, "knox_vpn_policy"

    .line 4589
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4588
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "[Legacy VPN]"

    .line 1016
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    const/4 p0, 0x3

    if-eq p2, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const-string p0, "[Legacy VPN]"

    .line 1395
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1393
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1391
    :cond_17
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "android:activate_platform_vpn"

    .line 1416
    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1417
    invoke-static {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "android:activate_vpn"

    .line 1412
    invoke-static {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->doesPackageHaveAppop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniCreateSecureWifi(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private synthetic lambda$agentConnectForKnoxInterface$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    .line 4678
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 4679
    throw v0
.end method

.method public static uidRangesForUser(ILjava/util/Set;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 2078
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p0

    .line 2079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2081
    invoke-virtual {p0, v1}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2082
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 2365
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 2366
    monitor-exit p0

    return p1

    .line 2368
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 2369
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2370
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_4a

    .line 2043
    invoke-virtual {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, -0x1

    move p3, p2

    move p4, p3

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, p2, :cond_20

    goto :goto_34

    :cond_20
    add-int/lit8 v1, p4, 0x1

    if-eq v0, v1, :cond_35

    .line 2047
    new-instance v1, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v1, p3, p4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_34
    move p3, v0

    :cond_35
    move p4, v0

    goto :goto_d

    :cond_37
    if-eq p3, p2, :cond_b3

    .line 2052
    new-instance p0, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_4a
    if-eqz p4, :cond_ac

    .line 2055
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p3

    .line 2056
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2057
    invoke-virtual {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_77

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 2061
    :cond_77
    new-instance p4, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    move v0, p2

    goto :goto_62

    .line 2065
    :cond_8d
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt v0, p0, :cond_b3

    .line 2066
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 2070
    :cond_ac
    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b3
    :goto_b3
    return-void
.end method

.method public final agentConnect()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 1683
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v1, 0xc

    .line 1685
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/4 v1, 0x2

    .line 1687
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 1688
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "agentConnect"

    invoke-virtual {p0, v1, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1690
    new-instance v1, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v1}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/16 v2, 0x11

    .line 1691
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    const-string v2, "VPN"

    .line 1692
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v2, :cond_39

    move v2, v3

    goto :goto_3a

    :cond_39
    move v2, v4

    .line 1693
    :goto_3a
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 1694
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setVpnRequiresValidation(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 1695
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLocalRoutesExcludedForVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v1

    .line 1696
    invoke-virtual {v1}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v8

    .line 1698
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    new-array v1, v3, [I

    .line 1699
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 1700
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1704
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_9c

    const-string v2, "Vpn"

    const-string v3, "Apply Secure Wi-Fi to Secure Folder"

    .line 1706
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v3, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1709
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v3, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1710
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 1713
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanPortBypassRule()V

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->applyPortBypassRule()V

    .line 1718
    :cond_a2
    new-instance v1, Landroid/net/VpnTransportInfo;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getActiveVpnType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 1722
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z

    const/16 v2, 0xb

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    if-eqz v1, :cond_c2

    .line 1723
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_c5

    .line 1725
    :cond_c2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1728
    :goto_c5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v11, 0x0

    if-eqz v1, :cond_d1

    .line 1729
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_d2

    :cond_d1
    move-object v1, v11

    .line 1728
    :goto_d2
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    .line 1731
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1732
    new-instance v12, Lcom/android/server/connectivity/Vpn$1;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x65

    .line 1734
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    const-string v4, "VPN"

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    iput-object v12, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1743
    :try_start_101
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v2}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_106} :catch_111
    .catchall {:try_start_101 .. :try_end_106} :catchall_10f

    .line 1749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1751
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void

    :catchall_10f
    move-exception p0

    goto :goto_115

    :catch_111
    move-exception v2

    .line 1746
    :try_start_112
    iput-object v11, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1747
    throw v2
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_10f

    .line 1749
    :goto_115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    throw p0
.end method

.method public final agentConnectForKnoxInterface()V
    .registers 1

    return-void
.end method

.method public final agentDisconnect()V
    .registers 3

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanPortBypassRule()V

    .line 1774
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public final agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1766
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    :cond_5
    return-void
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 7

    monitor-enter p0

    .line 2410
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_33

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2411
    monitor-exit p0

    return v1

    .line 2413
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_33

    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 2414
    monitor-exit p0

    return v2

    .line 2415
    :cond_15
    :try_start_15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 2416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_33

    if-eqz v3, :cond_19

    monitor-exit p0

    return v2

    .line 2418
    :cond_31
    monitor-exit p0

    return v1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyBlockingRulesToUidRange(Z)V
    .registers 5

    .line 4938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_36

    :catch_8
    move-exception v0

    .line 4940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating blocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for UIDs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 4941
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn"

    .line 4940
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method public final applyPortBypassRule()V
    .registers 11

    .line 1598
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    if-eqz v0, :cond_44

    const-string v0, "Vpn"

    const-string v1, "Apply port bypass rules for Secure Wi-Fi"

    .line 1599
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v1, Lcom/android/internal/net/VpnConfig;->dport:I

    iget v5, v1, Lcom/android/internal/net/VpnConfig;->fwmark:I

    iget v6, v1, Lcom/android/internal/net/VpnConfig;->priority:I

    iget v7, v1, Lcom/android/internal/net/VpnConfig;->netTableId:I

    iget-object v8, v1, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/connectivity/VpnRules;->setTcpPortBypassRule(ZIIIILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1601
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget v3, v2, Lcom/android/internal/net/VpnConfig;->fwmark:I

    if-eq v3, v1, :cond_40

    .line 1602
    iput v1, v2, Lcom/android/internal/net/VpnConfig;->fwmark:I

    if-lez v1, :cond_40

    .line 1604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applied port bypass rules with new fwmark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_40
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    :cond_44
    return-void
.end method

.method public final broadcastVpnState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6

    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    .line 418
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "send state="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final canHaveRestrictedProfile(I)Z
    .registers 5

    .line 1755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1757
    :try_start_4
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1758
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->canHaveRestrictedProfile()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 1760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1761
    throw p0
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4360
    :cond_4
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "64:ff9b::"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "\\."

    .line 4361
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2d

    .line 4364
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const-string v1, ":"

    .line 4365
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 4367
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final cleanPortBypassRule()V
    .registers 11

    .line 1612
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_2a

    .line 1613
    iget-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    if-eqz v1, :cond_27

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    if-lez v0, :cond_27

    const-string v0, "Vpn"

    const-string v1, "Clean port bypass rules for Secure Wi-Fi"

    .line 1614
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    iget v4, v0, Lcom/android/internal/net/VpnConfig;->dport:I

    iget v5, v0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    iget v6, v0, Lcom/android/internal/net/VpnConfig;->priority:I

    iget v7, v0, Lcom/android/internal/net/VpnConfig;->netTableId:I

    iget-object v8, v0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/connectivity/VpnRules;->setTcpPortBypassRule(ZIIIILjava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x0

    .line 1617
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mSwifiConfig:Lcom/android/internal/net/VpnConfig;

    :cond_2a
    return-void
.end method

.method public cleanupObjects()V
    .registers 1

    .line 4946
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetUidListInNetworkCapabilities()V

    return-void
.end method

.method public final cleanupVpnStateLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 2315
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V

    .line 2317
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2318
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 2321
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2322
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method public final convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 3

    .line 5241
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 5242
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 5243
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->formatPemCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 5246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to convertToPemCert: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 4810
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v2, 0x1040ef0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 4811
    :cond_e
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v3, 0x1040ef1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4812
    :goto_1b
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v3, 0x1040eee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    .line 4813
    :cond_2b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040eef

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4815
    :goto_38
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080c13

    .line 4816
    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4817
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4818
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4819
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4820
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4821
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4822
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4823
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 4824
    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x62

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1972
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1975
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isDualAppEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1979
    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/Vpn;->isFullTunneling(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-nez p1, :cond_24

    const-string v1, "Vpn"

    const-string v2, "Add uid on dualAppProfile"

    .line 1981
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1986
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1990
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_57

    .line 1992
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1995
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, p1, :cond_3b

    .line 1996
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_3b

    :catchall_57
    move-exception p0

    .line 1992
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1993
    throw p0

    :cond_5c
    return-object v0
.end method

.method public declared-synchronized deleteVpnProfile(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "No package name provided"

    .line 4453
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4455
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3a

    .line 4462
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4463
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4465
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    goto :goto_25

    :cond_20
    const-string v2, "[Legacy VPN]"

    .line 4467
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 4471
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_35

    .line 4473
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    .line 4475
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    .line 4473
    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4474
    throw p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dismissConnectingNotification()V
    .registers 1

    return-void
.end method

.method public final doesPackageTargetAtLeastQ(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "[Legacy VPN]"

    .line 1438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1441
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1443
    :try_start_11
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1444
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1445
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_19} :catch_20

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 1447
    :catch_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vpn"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final enforceControlPermission()V
    .registers 3

    .line 2327
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_VPN"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceControlPermissionOrInternalCaller()V
    .registers 3

    .line 2333
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_VPN"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceNotRestrictedUser()V
    .registers 4

    .line 2552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2554
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2556
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1e

    if-nez p0, :cond_16

    .line 2560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2557
    :cond_16
    :try_start_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v2, "Restricted users cannot configure VPNs"

    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 2560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2561
    throw p0
.end method

.method public final enforceSettingsPermission()V
    .registers 3

    .line 2337
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "Unauthorized Caller"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 16

    monitor-enter p0

    .line 1798
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1cf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 1799
    monitor-exit p0

    return-object v2

    .line 1802
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnServicePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1cf

    if-nez v0, :cond_18

    .line 1803
    monitor-exit p0

    return-object v2

    .line 1806
    :cond_18
    :try_start_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_1cf

    .line 1811
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 1813
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1c2

    const/4 v5, 0x0

    .line 1817
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1a9

    const-string v5, "android.permission.BIND_VPN_SERVICE"

    .line 1821
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_1ca

    if-eqz v1, :cond_18b

    .line 1825
    :try_start_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1830
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1831
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1832
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1833
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v6

    .line 1836
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget v8, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v7, p0, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_1cf

    .line 1838
    :try_start_61
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object v8

    .line 1841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    iget-object v10, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    const-string v12, " "

    .line 1843
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 1846
    :cond_8b
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, p0, v8, v9}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_15e

    .line 1849
    new-instance v9, Lcom/android/server/connectivity/Vpn$Connection;

    invoke-direct {v9, p0, v2}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection-IA;)V

    .line 1850
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v11, 0x4000001

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v0, v9, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 1856
    iput-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1857
    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1861
    iput-object v8, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1863
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updatePortBypassConfigs()V

    :cond_ca
    if-eqz v1, :cond_e4

    .line 1873
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1874
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1876
    iget-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 1877
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    goto :goto_f3

    .line 1882
    :cond_e4
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1883
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "establish"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 1889
    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    :cond_f3
    :goto_f3
    if-eqz v4, :cond_fa

    .line 1893
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_fa
    if-eqz v3, :cond_105

    .line 1896
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    .line 1897
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1900
    :cond_105
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-boolean v8, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v0, v2, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 1902
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v5, v0, :cond_121

    .line 1903
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v9, "android:establish_vpn_service"

    iget v10, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_121} :catch_166
    .catchall {:try_start_61 .. :try_end_121} :catchall_1cf

    :cond_121
    :try_start_121
    const-string v0, "Vpn"

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Established by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_121 .. :try_end_143} :catchall_1cf

    .line 1923
    monitor-exit p0

    return-object v7

    .line 1853
    :cond_145
    :try_start_145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot bind "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_15e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one address must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_145 .. :try_end_166} :catch_166
    .catchall {:try_start_145 .. :try_end_166} :catchall_1cf

    :catch_166
    move-exception p1

    .line 1907
    :try_start_167
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1910
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eq v5, v0, :cond_171

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1914
    :cond_171
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1915
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 1916
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1917
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1918
    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 1919
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1920
    throw p1
    :try_end_18b
    .catchall {:try_start_167 .. :try_end_18b} :catchall_1cf

    .line 1822
    :cond_18b
    :try_start_18b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not require "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1819
    :cond_1a9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1815
    :cond_1c2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get PackageManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1ca
    .catchall {:try_start_18b .. :try_end_1ca} :catchall_1ca

    :catchall_1ca
    move-exception p1

    .line 1825
    :try_start_1cb
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1826
    throw p1
    :try_end_1cf
    .catchall {:try_start_1cb .. :try_end_1cf} :catchall_1cf

    :catchall_1cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final formatPemCert(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 5228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_9
    if-ge v0, p0, :cond_30

    sub-int v3, p0, v1

    const/16 v4, 0x40

    if-ge v3, v4, :cond_12

    goto :goto_13

    :cond_12
    move v3, v4

    :goto_13
    add-int/2addr v1, v3

    .line 5234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x40

    goto :goto_9

    .line 5236
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-----END CERTIFICATE-----"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getActiveVpnType()I
    .registers 2

    monitor-enter p0

    .line 2429
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 2430
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_1e

    if-nez v0, :cond_13

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2431
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1e

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x3

    :goto_1c
    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOn()Z
    .registers 2

    monitor-enter p0

    .line 780
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1025
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1026
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppExclusionList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    monitor-enter p0

    .line 5093
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 5095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4c

    .line 5097
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_29

    .line 5099
    array-length v2, p1

    if-nez v2, :cond_1a

    goto :goto_29

    .line 5101
    :cond_1a
    invoke-static {p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromDiskStableBytes([B)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 5102
    sget-object v2, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;

    invoke-static {p1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_35
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 5106
    :try_start_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_4c

    .line 5102
    monitor-exit p0

    return-object p1

    .line 5099
    :cond_29
    :goto_29
    :try_start_29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_35
    .catchall {:try_start_29 .. :try_end_2e} :catchall_33

    .line 5106
    :try_start_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4c

    .line 5099
    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    goto :goto_48

    :catch_35
    move-exception p1

    :try_start_36
    const-string v2, "Vpn"

    const-string/jumbo v3, "problem reading from stream"

    .line 5104
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    .line 5106
    :try_start_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4c

    monitor-exit p0

    return-object p1

    .line 5106
    :goto_48
    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5107
    throw p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAppUid(Ljava/lang/String;I)I
    .registers 6

    const-string v0, "[Legacy VPN]"

    .line 1421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1422
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    return p0

    .line 1424
    :cond_d
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 1427
    :try_start_18
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1c} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1c} :catch_25
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 1433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1434
    throw p0

    .line 1433
    :catch_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1942
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1943
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1944
    invoke-virtual {p0, v1, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 1945
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1948
    :cond_23
    invoke-static {v1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1949
    invoke-static {v1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3b
    return-object v0
.end method

.method public final getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 2671
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_20

    .line 2672
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 2674
    :cond_f
    new-instance p1, Ljava/lang/String;

    new-array p2, v1, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-static {p2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 2676
    :cond_20
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 2679
    array-length p1, p0

    if-gt p1, v1, :cond_2a

    goto :goto_3d

    .line 2685
    :cond_2a
    new-instance p1, Ljava/lang/String;

    array-length p2, p0

    .line 2686
    invoke-static {p0, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    .line 2685
    invoke-static {p0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public getEnableTeardown()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 687
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return p0
.end method

.method public final getKnoxVpnFeature()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    monitor-enter p0

    .line 3014
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3015
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    monitor-exit p0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 3017
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    .line 2993
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2994
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    .line 3002
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 3004
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 3005
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 3006
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 3007
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3008
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_27

    .line 3010
    :cond_25
    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdown()Z
    .registers 2

    monitor-enter p0

    .line 773
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLockdownAllowlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1033
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getNetId()I
    .registers 3

    monitor-enter p0

    .line 4854
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4855
    monitor-exit p0

    return v1

    .line 4856
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_16

    if-nez v0, :cond_10

    .line 4857
    monitor-exit p0

    return v1

    .line 4858
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetwork()Landroid/net/Network;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1465
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1466
    monitor-exit p0

    return-object v1

    .line 1467
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    if-nez v0, :cond_10

    .line 1468
    monitor-exit p0

    return-object v1

    .line 1469
    :cond_10
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 1

    .line 1453
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public final getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 4803
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_11

    .line 4804
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNotificationManager:Landroid/app/NotificationManager;

    .line 4806
    :cond_11
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public declared-synchronized getPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 764
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLATFORM_VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "No package name provided"

    .line 5151
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5152
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 5153
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRedactedLinkPropertiesOfUnderlyingNetwork(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 3032
    monitor-exit p0

    return-object p1

    .line 3033
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRedactedNetworkCapabilitiesOfUnderlyingNetwork(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 3024
    monitor-exit p0

    return-object p1

    .line 3025
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/ConnectivityManager;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSessionKeyLocked()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 4504
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmSessionKey(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public final getStateFromLegacyState(I)I
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    if-eq p1, v1, :cond_28

    .line 5123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", treat it as STATE_DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_28
    return v0

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    return v1

    :cond_2c
    return p0
.end method

.method public final getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 5275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_2b

    :cond_a
    :try_start_a
    const-string v1, "com.samsung.ucs.ucsservice"

    .line 5280
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 5282
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 5284
    iget-object p1, p1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    :cond_22
    return-object v0

    :catch_23
    move-exception p0

    const-string p1, "Vpn"

    const-string v1, "Failed to getUCMCertificate"

    .line 5289
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public final getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Vpn"

    if-eqz p2, :cond_3f

    .line 5253
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 5256
    :try_start_a
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    if-lez v1, :cond_1d

    const-string v1, "CACERT_"

    .line 5257
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 5258
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string v1, "USRCERT_"

    .line 5261
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 5262
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->convertToPemCert(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 5266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to convertToPemCert, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const-string p0, "Failed to getCcmCertificate"

    .line 5270
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;
    .registers 5

    monitor-enter p0

    .line 2402
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 2403
    monitor-exit p0

    return-object v0

    .line 2406
    :cond_a
    :try_start_a
    new-instance v0, Landroid/net/UnderlyingNetworkInfo;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/net/UnderlyingNetworkInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN_APP_EXCLUDED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    monitor-enter p0

    .line 2267
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2268
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4486
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->isCallerSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string p0, "Vpn"

    const-string/jumbo p1, "getVpnProfilePrivileged called as non-System UID "

    .line 4487
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4491
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_21

    return-object v1

    :cond_21
    const-string p1, ""

    .line 4494
    invoke-static {p1, p0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 337
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    return-object p0
.end method

.method public final getVpnTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1e

    :pswitch_3
    const-string p0, ""

    return-object p0

    :pswitch_6
    const-string p0, "IPSEC_IKEV2_RSA"

    return-object p0

    :pswitch_9
    const-string p0, "IPSEC_IKEV2_PSK"

    return-object p0

    :pswitch_c
    const-string p0, "IPSEC_HYBRID_RSA"

    return-object p0

    :pswitch_f
    const-string p0, "IPSEC_XAUTH_RSA"

    return-object p0

    :pswitch_12
    const-string p0, "IPSEC_XAUTH_PSK"

    return-object p0

    :pswitch_15
    const-string p0, "L2TP_IPSEC_RSA"

    return-object p0

    :pswitch_18
    const-string p0, "L2TP_IPSEC_PSK"

    return-object p0

    :pswitch_1b
    const-string p0, "PPTP"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public final getWifiInterfaceInfo()[Ljava/lang/Object;
    .registers 4

    .line 1543
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 1545
    :cond_6
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1546
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 1547
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1549
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x1

    .line 1550
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 1551
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 1552
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 1553
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 1554
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_3c

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3c

    const/4 v0, 0x2

    .line 1555
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    :cond_61
    return-object p0

    :catch_62
    move-exception p0

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get wifi interface info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Vpn"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getknoxVpnTypeForStrongswanProfile()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final hideNotification()V
    .registers 3

    .line 5214
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public final hideNotification(I)V
    .registers 7

    .line 4831
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 4832
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_26

    .line 4834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const v3, 0x1080c13

    .line 4836
    :try_start_15
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    .line 4838
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4839
    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2274
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_a
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2278
    :catch_a
    :goto_a
    monitor-exit p0

    return-void
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 8

    .line 799
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    const/4 v0, 0x0

    if-nez p1, :cond_7

    return v0

    .line 805
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 807
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_87

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    .line 811
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 817
    :try_start_20
    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_42

    .line 819
    :catch_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" when checking always-on support"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Vpn"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    if-eqz v2, :cond_86

    .line 821
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_4b

    goto :goto_86

    .line 825
    :cond_4b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.VpnService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 827
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 828
    invoke-virtual {v1, v2, p1, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 829
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_66

    goto :goto_86

    .line 833
    :cond_66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 834
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_6a

    const-string v1, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    .line 836
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6a

    return v0

    :cond_85
    return v4

    :cond_86
    :goto_86
    return v0

    :catchall_87
    move-exception p0

    .line 811
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    throw p0
.end method

.method public isCallerEstablishedOwnerLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isCurrentIkev2VpnLocked(Ljava/lang/String;)Z
    .registers 2

    .line 4443
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1262
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_14

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final isDualAppEnabled()Z
    .registers 2

    .line 2006
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isFullTunneling(Ljava/util/List;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2016
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isIkev2VpnRunner()Z
    .registers 1

    .line 4498
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    return p0
.end method

.method public final isRunningLocked()Z
    .registers 2

    .line 1927
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isSecureWifiPackage()Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 399
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android"

    .line 400
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const-string p0, "Vpn"

    const-string v0, "Secure Wi-Fi signature mismatched"

    .line 403
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final isSettingsVpnLocked()Z
    .registers 2

    .line 2964
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isUcmEnabled()Z
    .registers 3

    const-string/jumbo p0, "security.ucmcrypto"

    const/4 v0, 0x0

    .line 5221
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string/jumbo v1, "persist.security.ucmcrypto"

    .line 5222
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public final isVpnApp(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    const-string p0, "[Legacy VPN]"

    .line 879
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 5

    .line 2602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2603
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_14

    .line 2606
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getVpnPolicy()Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    .line 2608
    :cond_14
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    if-eqz p0, :cond_1d

    .line 2609
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x1

    .line 2611
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final loadAlwaysOnPackage()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1060
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1062
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v6, 0x1

    .line 1064
    :cond_1c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v4, "always_on_vpn_lockdown_whitelist"

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1067
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3b

    :cond_31
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1068
    :goto_3b
    invoke-virtual {p0, v2, v6, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_42

    .line 1071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1072
    throw p0
.end method

.method public final makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;
    .registers 3

    .line 5138
    new-instance p0, Landroid/net/VpnProfileState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v0}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    return-object p0
.end method

.method public final makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 2642
    :cond_4
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    .line 2644
    new-instance v1, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v1}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v2, 0x0

    .line 2645
    iput v2, v1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v2, -0x1

    .line 2646
    iput-wide v2, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 2647
    iput-object p1, v1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 2648
    iput-object p0, v1, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    const/16 p0, 0x3f8

    const/16 p1, 0x104

    .line 2657
    :try_start_1c
    invoke-virtual {v0, v1, p0, p1}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0
    :try_end_20
    .catch Landroid/security/KeyStoreException; {:try_start_1c .. :try_end_20} :catch_27

    .line 2665
    iget-wide p0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {p0, p1}, Landroid/security/KeyStore2;->makeKeystoreEngineGrantString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception p0

    const-string p1, "Vpn"

    const-string v0, "Failed to get grant for keystore key."

    .line 2659
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2660
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final makeLinkProperties()Landroid/net/LinkProperties;
    .registers 9

    .line 1473
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 1474
    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 1476
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 1478
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1480
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v3, :cond_38

    .line 1481
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1482
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1483
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    or-int/2addr v1, v5

    .line 1484
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    or-int/2addr v0, v4

    goto :goto_1a

    .line 1488
    :cond_38
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_67

    .line 1489
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1490
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1491
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1493
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_42

    .line 1494
    instance-of v4, v5, Ljava/net/Inet4Address;

    or-int/2addr v1, v4

    .line 1495
    instance-of v4, v5, Ljava/net/Inet6Address;

    or-int/2addr v0, v4

    goto :goto_42

    .line 1500
    :cond_67
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v3, :cond_8b

    .line 1501
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1502
    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1503
    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1504
    instance-of v5, v4, Ljava/net/Inet4Address;

    or-int/2addr v1, v5

    .line 1505
    instance-of v4, v4, Ljava/net/Inet6Address;

    or-int/2addr v0, v4

    goto :goto_71

    .line 1509
    :cond_8b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_a6

    .line 1512
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, v6, v5, v5, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_a6
    if-nez v0, :cond_b7

    .line 1517
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    sget-object v6, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v1, v6, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v5, v5, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1523
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1524
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v1, :cond_db

    .line 1525
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1526
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c6

    .line 1529
    :cond_db
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1531
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget p0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    if-lez p0, :cond_ef

    .line 1532
    invoke-virtual {v2, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    :cond_ef
    return-object v2
.end method

.method public final makeVpnProfileStateLocked()Landroid/net/VpnProfileState;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 5132
    new-instance v0, Landroid/net/VpnProfileState;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Vpn;->getStateFromLegacyState(I)I

    move-result v1

    .line 5133
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/net/VpnProfileState;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public final onKnoxVpnConnected()V
    .registers 7

    .line 4845
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v2

    .line 4846
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addVpnUidRanges(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4847
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/connectivity/Vpn;->showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception p0

    .line 4849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Vpn"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public onUserAdded(I)V
    .registers 5

    .line 2095
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2096
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_51

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v0, v1, :cond_51

    .line 2097
    monitor-enter p0

    .line 2098
    :try_start_13
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4e

    if-eqz v0, :cond_47

    .line 2101
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 2103
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 2104
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36
    .catchall {:try_start_1b .. :try_end_35} :catchall_4e

    goto :goto_3e

    :catch_36
    move-exception p1

    :try_start_37
    const-string v0, "Vpn"

    const-string v1, "Failed to add restricted user to owner"

    .line 2106
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2108
    :goto_3e
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_47

    .line 2109
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2112
    :cond_47
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2113
    monitor-exit p0

    goto :goto_51

    :catchall_4e
    move-exception p1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_4e

    throw p1

    :cond_51
    :goto_51
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 2124
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2125
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    if-ne v0, v1, :cond_4f

    .line 2126
    monitor-enter p0

    .line 2127
    :try_start_13
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4c

    if-eqz v0, :cond_45

    .line 2131
    :try_start_1b
    invoke-static {p1, v0}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 2132
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2133
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 2134
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_33} :catch_34
    .catchall {:try_start_1b .. :try_end_33} :catchall_4c

    goto :goto_3c

    :catch_34
    move-exception p1

    :try_start_35
    const-string v0, "Vpn"

    const-string v1, "Failed to remove restricted user to owner"

    .line 2136
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    :goto_3c
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_45

    .line 2139
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2142
    :cond_45
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2143
    monitor-exit p0

    goto :goto_4f

    :catchall_4c
    move-exception p1

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_4c

    throw p1

    :cond_4f
    :goto_4f
    return-void
.end method

.method public declared-synchronized onUserStopped()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 2152
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 2153
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 2156
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 2159
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 2160
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    monitor-enter p0

    .line 1188
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_10

    .line 1190
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    :cond_10
    if-eqz p2, :cond_15

    .line 1193
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_59

    .line 1199
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_b0

    if-nez v2, :cond_25

    .line 1200
    monitor-exit p0

    return v1

    .line 1204
    :cond_25
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string p2, "[Legacy VPN]"

    .line 1207
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1208
    invoke-static {p2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_b0

    .line 1210
    monitor-exit p0

    return v0

    .line 1212
    :cond_40
    monitor-exit p0

    return v1

    :cond_42
    :try_start_42
    const-string v2, "[Legacy VPN]"

    .line 1213
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1214
    invoke-static {v2, p1, p3}, Lcom/android/server/connectivity/Vpn;->isVpnPreConsented(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_59

    const-string p1, "[Legacy VPN]"

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_b0

    .line 1217
    monitor-exit p0

    return v1

    :cond_59
    if-eqz p2, :cond_ae

    :try_start_5b
    const-string p3, "[Legacy VPN]"

    .line 1222
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6a

    .line 1223
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6a

    goto :goto_ae

    :cond_6a
    if-eqz p1, :cond_9a

    const-string p3, "[Legacy VPN]"

    .line 1230
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_96

    const-string p1, "[Legacy VPN]"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 1231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_92

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-ne p1, p3, :cond_92

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    goto :goto_9d

    .line 1234
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    goto :goto_9d

    .line 1237
    :cond_96
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    goto :goto_9d

    .line 1243
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1249
    :goto_9d
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_a9

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_a5
    .catchall {:try_start_5b .. :try_end_a5} :catchall_b0

    if-nez p1, :cond_a9

    .line 1250
    monitor-exit p0

    return v1

    .line 1253
    :cond_a9
    :try_start_a9
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b0

    .line 1254
    monitor-exit p0

    return v0

    .line 1224
    :cond_ae
    :goto_ae
    monitor-exit p0

    return v0

    :catchall_b0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final prepareInternal(Ljava/lang/String;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v13, " to call protect() "

    const-string v14, "Vpn"

    .line 1268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1271
    :try_start_c
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v0, :cond_20

    .line 1272
    iput-object v10, v11, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 1274
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 1275
    iput-object v10, v11, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->resetNetworkCapabilities()V

    .line 1280
    :cond_20
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_11d

    if-eqz v0, :cond_49

    .line 1282
    :try_start_24
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$Connection;->-$$Nest$fgetmService(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v0

    const v1, 0xffffff

    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x1

    .line 1282
    invoke-interface {v0, v1, v2, v10, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_11d

    .line 1287
    :catch_33
    :try_start_33
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_service"

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    goto :goto_8c

    .line 1291
    :cond_49
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v0, :cond_8c

    const-string v0, "[Legacy VPN]"

    .line 1292
    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 1293
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_manager"

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v3, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v2, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 1301
    iget-object v5, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v7
    :try_end_76
    .catchall {:try_start_33 .. :try_end_76} :catchall_11d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v17, v15

    move-object v15, v10

    move-object v10, v0

    .line 1301
    :try_start_7f
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    goto :goto_86

    :cond_83
    move-wide/from16 v17, v15

    move-object v15, v10

    .line 1308
    :goto_86
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_97

    goto :goto_8f

    :cond_8c
    :goto_8c
    move-wide/from16 v17, v15

    move-object v15, v10

    .line 1312
    :goto_8f
    :try_start_8f
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_9a
    .catchall {:try_start_8f .. :try_end_96} :catchall_97

    goto :goto_b7

    :catchall_97
    move-exception v0

    goto/16 :goto_120

    :catch_9a
    move-exception v0

    .line 1314
    :try_start_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disallow UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iput-object v12, v11, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 1319
    iget v0, v11, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v11, v12, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 1320
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/Vpn;->doesPackageTargetAtLeastQ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mIsPackageTargetingAtLeastQ:Z
    :try_end_e5
    .catchall {:try_start_9b .. :try_end_e5} :catchall_97

    .line 1322
    :try_start_e5
    iget-object v0, v11, Lcom/android/server/connectivity/Vpn;->mNms:Landroid/os/INetworkManagementService;

    iget v1, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_97

    goto :goto_10a

    :catch_ed
    move-exception v0

    .line 1324
    :try_start_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allow UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :goto_10a
    iput-object v15, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1328
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "prepare"

    invoke-virtual {v11, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1329
    iget-boolean v0, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {v11, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_119
    .catchall {:try_start_ee .. :try_end_119} :catchall_97

    .line 1331
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11d
    move-exception v0

    move-wide/from16 v17, v15

    :goto_120
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1332
    throw v0
.end method

.method public final prepareStatusIntent()V
    .registers 5

    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2358
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn$Dependencies;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    throw p0
.end method

.method public declared-synchronized provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "No package name provided"

    .line 4410
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "No profile provided"

    .line 4411
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4413
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->verifyCallingUidAndPackage(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 4415
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V

    .line 4417
    iget-boolean v0, p2, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v0, :cond_21

    .line 4418
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode profiles require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object p2

    .line 4423
    array-length v0, p2

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_49

    .line 4428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_51

    .line 4430
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_44

    .line 4432
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4439
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/connectivity/Vpn;->isVpnProfilePreConsented(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_51

    monitor-exit p0

    return p1

    :catchall_44
    move-exception p1

    .line 4432
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4433
    throw p1

    .line 4424
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Profile too big"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    .line 2374
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 2375
    monitor-exit p0

    return p1

    .line 2377
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 2378
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 2379
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetNetworkCapabilities()V
    .registers 5

    .line 732
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x0

    .line 733
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    new-instance v2, Landroid/net/VpnTransportInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 734
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public resetUidListInNetworkCapabilities()V
    .registers 3

    const/4 v0, 0x0

    .line 4926
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->applyBlockingRulesToUidRange(Z)V

    .line 4927
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4929
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v1, 0x0

    .line 4930
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4931
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p0, :cond_22

    .line 4932
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_22
    return-void
.end method

.method public final saveAlwaysOnPackage()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 1041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1043
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_app"

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1043
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1045
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown"

    .line 1046
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1045
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V

    .line 1047
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string v3, "always_on_vpn_lockdown_whitelist"

    const-string v4, ","

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 1049
    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1047
    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3a

    .line 1051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    throw p0
.end method

.method public final sendBroadcastToClearConnectingNotification(I)V
    .registers 2

    return-void
.end method

.method public final sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .registers 23

    move-object v0, p0

    move-object v1, p1

    .line 848
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.action.VPN_MANAGER_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p4

    .line 849
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.net.extra.VPN_PROFILE_STATE"

    move-object/from16 v5, p6

    .line 851
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.net.extra.SESSION_KEY"

    move-object/from16 v5, p5

    .line 852
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.net.extra.UNDERLYING_NETWORK"

    move-object/from16 v5, p7

    .line 853
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

    move-object/from16 v5, p8

    .line 854
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.net.extra.UNDERLYING_LINK_PROPERTIES"

    move-object/from16 v5, p9

    .line 855
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "android.net.extra.TIMESTAMP_MILLIS"

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "android.net.category.EVENT_DEACTIVATED_BY_USER"

    .line 857
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    .line 858
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    :cond_4d
    const-string v1, "android.net.extra.ERROR_CLASS"

    move v4, p2

    .line 859
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.net.extra.ERROR_CODE"

    move/from16 v4, p3

    .line 860
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 866
    :cond_5a
    iget-object v1, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v4

    .line 867
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const-wide/16 v7, 0x7530

    iget v9, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v10, 0x0

    const/16 v11, 0x135

    const-string v12, "VpnManager event"

    move-object/from16 v6, p4

    invoke-interface/range {v4 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    const/4 v1, 0x0

    .line 871
    :try_start_73
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_79} :catch_7d

    if-eqz v0, :cond_7c

    const/4 v1, 0x1

    :cond_7c
    return v1

    :catch_7d
    move-exception v0

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service of VpnManager app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed to start"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vpn"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final sendStrongSwanInterfaceToKnoxVpn(I)V
    .registers 2

    return-void
.end method

.method public final setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/UidRangeParcel;",
            ">;)Z"
        }
    .end annotation

    .line 2240
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 2244
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2245
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRangeParcel;

    .line 2246
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Landroid/net/UidRangeParcel;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v3, v3, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 2249
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1, v0}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3b} :catch_49

    if-eqz p1, :cond_43

    .line 2256
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_48

    .line 2258
    :cond_43
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :goto_48
    return v1

    :catch_49
    move-exception p0

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for UIDs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Vpn"

    .line 2251
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 903
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 905
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 906
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_10

    move v0, v10

    goto :goto_11

    :cond_10
    move v0, v1

    .line 911
    :goto_11
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-ne p2, v2, :cond_21

    if-eqz v0, :cond_23

    :cond_21
    move v2, v10

    goto :goto_24

    :cond_23
    move v2, v1

    .line 914
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2e

    move v11, v10

    goto :goto_2f

    :cond_2e
    move v11, v1

    .line 916
    :goto_2f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z

    move-result p2
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_74

    if-nez p2, :cond_37

    .line 917
    monitor-exit p0

    return v1

    .line 920
    :cond_37
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V

    .line 924
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p2
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_74

    if-nez p2, :cond_42

    .line 925
    monitor-exit p0

    return v10

    :cond_42
    if-eqz v2, :cond_5c

    :try_start_44
    const-string v1, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_50

    .line 934
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeDisconnectedVpnProfileState()Landroid/net/VpnProfileState;

    move-result-object p2

    goto :goto_54

    .line 935
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object p2

    :goto_54
    move-object v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 932
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    :cond_5c
    if-eqz v11, :cond_72

    const-string v1, "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 942
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 940
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn;->sendEventToVpnManagerApp(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/net/VpnProfileState;Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    :try_end_72
    .catchall {:try_start_44 .. :try_end_72} :catchall_74

    .line 945
    :cond_72
    monitor-exit p0

    return v10

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAlwaysOnPackageInternal(Ljava/lang/String;ZLjava/util/List;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "[Legacy VPN]"

    .line 964
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Vpn"

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 965
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not setting legacy VPN \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as always-on."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_25
    if-eqz p3, :cond_54

    .line 970
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 972
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not setting always-on vpn, invalid allowed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    const/4 v1, 0x1

    if-eqz p1, :cond_76

    .line 980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 982
    :try_start_5b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_71

    .line 984
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_66

    move v0, v1

    goto :goto_67

    :cond_66
    const/4 v0, 0x2

    .line 990
    :goto_67
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6e

    return v3

    .line 993
    :cond_6e
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_79

    :catchall_71
    move-exception p0

    .line 984
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    throw p0

    .line 996
    :cond_76
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    move-object p1, v0

    .line 999
    :goto_79
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_80

    if-eqz p2, :cond_80

    move v3, v1

    :cond_80
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v3, :cond_90

    if-eqz p3, :cond_90

    .line 1001
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_94

    .line 1002
    :cond_90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_94
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 1005
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1006
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    goto :goto_ae

    .line 1010
    :cond_ab
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    :goto_ae
    return v1
.end method

.method public declared-synchronized setAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 5066
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 5067
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3f

    if-nez p1, :cond_d

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 5069
    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_3c

    .line 5071
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 5072
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 5073
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p1, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v1, 0x0

    .line 5074
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 5076
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5077
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3f

    :cond_3c
    const/4 p1, 0x1

    .line 5081
    monitor-exit p0

    return p1

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableTeardown(Z)V
    .registers 2

    .line 682
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 2

    monitor-enter p0

    .line 750
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 753
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 757
    iget-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz p1, :cond_10

    .line 758
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 760
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPackageAuthorization(Ljava/lang/String;I)Z
    .registers 16

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1340
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_86

    const-string v3, "[Legacy VPN]"

    .line 1341
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_86

    .line 1346
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string v5, "android:activate_platform_vpn"

    const-string v6, "android:activate_vpn"

    const-string v7, "Vpn"

    const/4 v8, 0x1

    if-eq p2, v1, :cond_47

    if-eq p2, v8, :cond_42

    const/4 v6, 0x2

    if-eq p2, v6, :cond_3d

    const/4 p0, 0x3

    if-eq p2, p0, :cond_39

    :try_start_2c
    const-string p0, "Unrecognized VPN type while granting authorization"

    .line 1367
    invoke-static {v7, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_37
    .catchall {:try_start_2c .. :try_end_31} :catchall_35

    .line 1383
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_35
    move-exception p0

    goto :goto_82

    :catch_37
    move-exception p0

    goto :goto_62

    :cond_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1359
    :cond_3d
    :try_start_3d
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    .line 1362
    :cond_42
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    .line 1353
    :cond_47
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1371
    :goto_4b
    array-length v6, v5

    move v9, v2

    :goto_4d
    if-ge v9, v6, :cond_5e

    aget-object v10, v5, v9

    .line 1372
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-ne p2, v1, :cond_57

    move v12, v8

    goto :goto_58

    :cond_57
    move v12, v2

    :goto_58
    invoke-virtual {v11, v10, v0, p1, v12}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5b} :catch_37
    .catchall {:try_start_3d .. :try_end_5b} :catchall_35

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 1383
    :cond_5e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    .line 1381
    :goto_62
    :try_start_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set app ops for package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_35

    .line 1383
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    throw p0

    :cond_86
    :goto_86
    return v2
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 5

    monitor-enter p0

    .line 2386
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 2387
    monitor-exit p0

    return p1

    .line 2390
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 2391
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Network;

    goto :goto_18

    :cond_17
    move-object p1, v1

    :goto_18
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2392
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    if-eqz v0, :cond_26

    .line 2393
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2392
    :cond_26
    invoke-virtual {p1, v1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2c

    const/4 p1, 0x1

    .line 2394
    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setVpnForcedLocked(Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2183
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_17

    .line 2186
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdownAllowlist:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2187
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    :goto_17
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_99

    .line 2192
    iget p1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 2193
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 2196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2201
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2202
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_67

    .line 2203
    new-instance v4, Landroid/net/UidRangeParcel;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v3, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2204
    :cond_67
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_30

    .line 2205
    new-instance v4, Landroid/net/UidRangeParcel;

    .line 2206
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 2205
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2210
    :cond_90
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2216
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUidsAsToldToConnectivity:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_9d

    .line 2218
    :cond_99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_9d
    const/4 p1, 0x0

    .line 2222
    invoke-virtual {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 2224
    invoke-virtual {p0, v3, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    return-void
.end method

.method public final setupIpRulesForCcMode(Ljava/lang/String;Z)V
    .registers 9

    .line 4330
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 4331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupIpRulesForCcMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEnabled(Z)V

    .line 4335
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v2, 0x1f4

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4336
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v3, 0x1194

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4337
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const/16 v4, 0x6a5

    invoke-virtual {v0, p1, v4, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4338
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string/jumbo v5, "ipsec0"

    invoke-virtual {v0, v5, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 4339
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 4340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupIpRulesForCcMode: v4="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4343
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4344
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4345
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    invoke-virtual {v0, p1, v4, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 4346
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string v2, "fe80::/64"

    invoke-virtual {v0, v2, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 4347
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    const-string v0, "2000::/4"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/connectivity/VpnRules;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 4348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setupIpRulesForCcMode: v6="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_a1} :catch_a2

    goto :goto_b7

    :catch_a2
    move-exception p0

    .line 4350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set firewall rule: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final showConnectingNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final showNotification()V
    .registers 7

    .line 5191
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v0, :cond_5

    return-void

    .line 5195
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v2, 0x1040eee

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 5196
    :cond_16
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v3, 0x1040eef

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5198
    :goto_24
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 5200
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080c13

    .line 5201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040ef0

    .line 5202
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 5203
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 5204
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5205
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v2, 0x106001c

    .line 5206
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5209
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 5210
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 5209
    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 4

    return-void
.end method

.method public startAlwaysOnVpn()Z
    .registers 15

    .line 1083
    monitor-enter p0

    .line 1084
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_a

    .line 1087
    monitor-exit p0

    return v10

    .line 1090
    :cond_a
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0, v0, v11, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 1092
    monitor-exit p0

    return v11

    .line 1097
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1098
    monitor-exit p0

    return v10

    .line 1100
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_98

    .line 1102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1105
    :try_start_28
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1107
    invoke-virtual {p0, v0, v9}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_88
    .catchall {:try_start_28 .. :try_end_31} :catchall_86

    .line 1137
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    .line 1119
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v0

    .line 1120
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-wide/32 v3, 0xea60

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    const/4 v6, 0x0

    const/16 v7, 0x135

    const-string/jumbo v8, "vpn"

    move-object v2, v9

    invoke-interface/range {v0 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_88
    .catchall {:try_start_35 .. :try_end_58} :catchall_86

    .line 1128
    :try_start_58
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5e} :catch_66
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_88
    .catchall {:try_start_58 .. :try_end_5e} :catchall_86

    if-eqz p0, :cond_61

    goto :goto_62

    :cond_61
    move v10, v11

    .line 1137
    :goto_62
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catch_66
    move-exception p0

    :try_start_67
    const-string v1, "Vpn"

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VpnService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed to start"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_82} :catch_88
    .catchall {:try_start_67 .. :try_end_82} :catchall_86

    .line 1137
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_86
    move-exception p0

    goto :goto_94

    :catch_88
    move-exception p0

    :try_start_89
    const-string v0, "Vpn"

    const-string v1, "Error starting always-on VPN"

    .line 1134
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 1137
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_94
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    throw p0

    :catchall_98
    move-exception v0

    .line 1100
    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0
.end method

.method public final declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 13

    monitor-enter p0

    .line 2942
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    const-string v0, "[Legacy VPN]"

    .line 2945
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 2946
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2949
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 2950
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnRunner()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 2951
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7

    .line 2574
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 2581
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2582
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v1

    if-eqz v1, :cond_65

    if-eqz v0, :cond_65

    const-string/jumbo v1, "ipsec"

    .line 2583
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "ppp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "tun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2584
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 2585
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p3

    if-eqz p3, :cond_5d

    .line 2589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLegacyVpn changed egress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 2587
    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing active default network"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2592
    :cond_65
    :goto_65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2594
    :try_start_69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_70

    .line 2596
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_70
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2597
    throw p0
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2698
    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2699
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_4d2

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v4, "no_config_vpn"

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_4d2

    .line 2704
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 2705
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 2706
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 2715
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->isUcmEnabled()Z

    move-result v4

    .line 2716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startLegacyVpnPrivileged: isUcmEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vpn"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4f
    const-string v5, "AndroidKeyStore"

    .line 2720
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v7, 0x0

    .line 2721
    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2722
    iget-object v8, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_4f .. :try_end_5f} :catch_4c9
    .catch Ljava/security/KeyStoreException; {:try_start_4f .. :try_end_5f} :catch_4c9
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5f} :catch_4c9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_5f} :catch_4c9

    const-string v9, "USRCERT_"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_90

    .line 2723
    :try_start_67
    iget-object v8, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 2724
    invoke-virtual {v5, v8}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v13

    if-nez v13, :cond_71

    move-object v14, v7

    goto :goto_80

    .line 2726
    :cond_71
    new-instance v14, Ljava/lang/String;

    new-array v15, v12, [Ljava/security/cert/Certificate;

    aput-object v13, v15, v11

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v13

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_80
    if-nez v14, :cond_8b

    if-eqz v4, :cond_8b

    .line 2729
    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v9, v13}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_92

    .line 2731
    :cond_8b
    invoke-virtual {v0, v8}, Lcom/android/server/connectivity/Vpn;->makeKeystoreEngineGrantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_92

    :cond_90
    move-object v8, v10

    move-object v14, v8

    .line 2735
    :goto_92
    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ad

    .line 2736
    iget-object v13, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/connectivity/Vpn;->getCaCertificateFromKeystoreAsPem(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_ae

    if-eqz v4, :cond_ae

    const-string v13, "CACERT_"

    .line 2739
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_ae

    :cond_ad
    move-object v13, v10

    .line 2743
    :cond_ae
    :goto_ae
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_da

    .line 2744
    iget-object v15, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    if-nez v5, :cond_c0

    move-object v15, v7

    goto :goto_cf

    .line 2746
    :cond_c0
    new-instance v15, Ljava/lang/String;

    new-array v7, v12, [Ljava/security/cert/Certificate;

    aput-object v5, v7, v11

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_cf
    if-nez v15, :cond_db

    if-eqz v4, :cond_db

    .line 2749
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/android/server/connectivity/Vpn;->getUcmCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_d9
    .catch Ljava/security/cert/CertificateException; {:try_start_67 .. :try_end_d9} :catch_4c9
    .catch Ljava/security/KeyStoreException; {:try_start_67 .. :try_end_d9} :catch_4c9
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_d9} :catch_4c9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_67 .. :try_end_d9} :catch_4c9

    goto :goto_db

    :cond_da
    move-object v15, v10

    :cond_db
    :goto_db
    if-eqz v14, :cond_4c1

    if-eqz v13, :cond_4c1

    if-eqz v15, :cond_4c1

    .line 2762
    iput-object v2, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 2763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") activated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :try_start_fe
    iget-object v4, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 2768
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_110} :catch_122

    move-object v5, v10

    :goto_111
    :try_start_111
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 2769
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_121} :catch_123

    goto :goto_111

    :catch_122
    move-object v5, v10

    .line 2772
    :catch_123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLegacyVpnPrivileged Egress Iface ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") doesn\'t exist"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_13f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    .line 2782
    iget v4, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v6, "1701"

    const/16 v7, 0x9

    const/4 v9, 0x5

    const/4 v11, 0x2

    if-eq v4, v12, :cond_1a0

    if-eq v4, v11, :cond_181

    if-eq v4, v9, :cond_15a

    if-eq v4, v7, :cond_154

    const/4 v4, 0x0

    goto :goto_1bb

    :cond_154
    const-string v2, "[Legacy VPN]"

    .line 2786
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    return-void

    :cond_15a
    new-array v4, v7, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v2, v4, v17

    .line 2803
    iget-object v7, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v7, v4, v12

    const-string/jumbo v7, "hybridrsa"

    aput-object v7, v4, v11

    const/4 v7, 0x3

    aput-object v13, v4, v7

    const/4 v7, 0x4

    aput-object v15, v4, v7

    iget-object v7, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v7, v4, v9

    iget-object v7, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v16, 0x6

    aput-object v7, v4, v16

    const/4 v7, 0x7

    aput-object v10, v4, v7

    const/16 v7, 0x8

    aput-object v3, v4, v7

    goto :goto_1bb

    :cond_181
    const/16 v7, 0x8

    new-array v4, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 2796
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v4, v12

    const-string/jumbo v3, "udprsa"

    aput-object v3, v4, v11

    const/4 v3, 0x3

    aput-object v8, v4, v3

    const/4 v3, 0x4

    aput-object v14, v4, v3

    aput-object v13, v4, v9

    const/4 v3, 0x6

    aput-object v15, v4, v3

    const/4 v7, 0x7

    aput-object v6, v4, v7

    goto :goto_1bb

    :cond_1a0
    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 2789
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v4, v12

    const-string/jumbo v3, "udppsk"

    aput-object v3, v4, v11

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v4, v7

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v3, v4, v7

    aput-object v6, v4, v9

    .line 2811
    :goto_1bb
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-nez v3, :cond_1c3

    .line 2812
    iput-object v10, v1, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 2815
    :cond_1c3
    iget v3, v1, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v7, 0xb

    const-string v18, "+pfs"

    const-string/jumbo v19, "nonpfs"

    const-string v20, "Enforcing"

    const-string v21, "None"

    const/4 v10, 0x3

    if-eq v3, v10, :cond_2cd

    const/4 v10, 0x4

    if-eq v3, v10, :cond_28a

    const/4 v10, 0x6

    if-eq v3, v10, :cond_250

    const/4 v10, 0x7

    if-eq v3, v10, :cond_220

    const/16 v10, 0x8

    if-eq v3, v10, :cond_1e2

    goto/16 :goto_307

    :cond_1e2
    new-array v4, v7, [Ljava/lang/String;

    .line 2844
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const-string/jumbo v3, "ikev2rsa"

    aput-object v3, v4, v12

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v4, v11

    const/4 v3, 0x3

    aput-object v8, v4, v3

    const/4 v3, 0x4

    aput-object v14, v4, v3

    aput-object v13, v4, v9

    const/4 v3, 0x6

    aput-object v15, v4, v3

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v3, v4, v8

    .line 2848
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_209

    goto :goto_20b

    :cond_209
    move-object/from16 v20, v21

    :goto_20b
    const/16 v3, 0x8

    aput-object v20, v4, v3

    .line 2849
    iget-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_214

    goto :goto_216

    :cond_214
    move-object/from16 v18, v19

    :goto_216
    const/16 v3, 0x9

    aput-object v18, v4, v3

    const/16 v3, 0xa

    aput-object v5, v4, v3

    goto/16 :goto_307

    :cond_220
    move v3, v10

    new-array v4, v3, [Ljava/lang/String;

    .line 2836
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const-string/jumbo v3, "ikev2psk"

    aput-object v3, v4, v12

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v4, v11

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v3, v4, v8

    .line 2838
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_23d

    goto :goto_23f

    :cond_23d
    move-object/from16 v20, v21

    :goto_23f
    const/4 v3, 0x4

    aput-object v20, v4, v3

    .line 2839
    iget-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_247

    goto :goto_249

    :cond_247
    move-object/from16 v18, v19

    :goto_249
    aput-object v18, v4, v9

    const/4 v3, 0x6

    aput-object v5, v4, v3

    goto/16 :goto_307

    :cond_250
    const/16 v3, 0x9

    new-array v4, v3, [Ljava/lang/String;

    .line 2854
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const-string/jumbo v3, "ikev2eap"

    aput-object v3, v4, v12

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v4, v11

    const/4 v3, 0x3

    aput-object v13, v4, v3

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v3, v4, v8

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v4, v9

    .line 2857
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_275

    goto :goto_277

    :cond_275
    move-object/from16 v20, v21

    :goto_277
    const/4 v3, 0x6

    aput-object v20, v4, v3

    .line 2858
    iget-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_27f

    goto :goto_281

    :cond_27f
    move-object/from16 v18, v19

    :goto_281
    const/4 v3, 0x7

    aput-object v18, v4, v3

    const/16 v3, 0x8

    aput-object v5, v4, v3

    goto/16 :goto_307

    :cond_28a
    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/String;

    .line 2826
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const-string/jumbo v3, "xauthrsa"

    aput-object v3, v4, v12

    aput-object v8, v4, v11

    const/4 v3, 0x3

    aput-object v14, v4, v3

    const/4 v3, 0x4

    aput-object v13, v4, v3

    aput-object v15, v4, v9

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v8, 0x6

    aput-object v3, v4, v8

    .line 2829
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_2ae

    goto :goto_2b0

    :cond_2ae
    move-object/from16 v20, v21

    :goto_2b0
    const/4 v3, 0x7

    aput-object v20, v4, v3

    .line 2830
    iget-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_2b8

    goto :goto_2ba

    :cond_2b8
    move-object/from16 v18, v19

    :goto_2ba
    const/16 v3, 0x8

    aput-object v18, v4, v3

    const/16 v3, 0x9

    aput-object v5, v4, v3

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v8, 0xa

    aput-object v5, v4, v8

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v5, v4, v7

    goto :goto_307

    :cond_2cd
    const/16 v3, 0x9

    new-array v4, v3, [Ljava/lang/String;

    .line 2817
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    const-string/jumbo v3, "xauthpsk"

    aput-object v3, v4, v12

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v4, v11

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v3, v4, v8

    .line 2819
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_2eb

    goto :goto_2ed

    :cond_2eb
    move-object/from16 v20, v21

    :goto_2ed
    const/4 v3, 0x4

    aput-object v20, v4, v3

    .line 2820
    iget-boolean v3, v1, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_2f5

    goto :goto_2f7

    :cond_2f5
    move-object/from16 v18, v19

    :goto_2f7
    aput-object v18, v4, v9

    const/4 v3, 0x6

    aput-object v5, v4, v3

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v3, v4, v5

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v5, 0x8

    aput-object v3, v4, v5

    .line 2868
    :goto_307
    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_357

    const/16 v22, 0x5

    const/16 v23, 0x5

    const/16 v24, 0x0

    .line 2870
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to VPN network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to server address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 2872
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->getVpnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed - unsecure"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    const-string v26, "Vpn"

    const-string v28, ""

    .line 2869
    invoke-static/range {v22 .. v29}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2886
    :cond_357
    iget v3, v1, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v3, :cond_3db

    if-eq v3, v12, :cond_362

    if-eq v3, v11, :cond_362

    const/4 v7, 0x0

    goto/16 :goto_46c

    :cond_362
    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-string/jumbo v5, "l2tp"

    aput-object v5, v3, v12

    .line 2905
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v5, v3, v11

    const/4 v5, 0x3

    aput-object v6, v3, v5

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v5, v3, v6

    const-string/jumbo v5, "name"

    aput-object v5, v3, v9

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v5, v3, v6

    const-string/jumbo v5, "password"

    const/4 v6, 0x7

    aput-object v5, v3, v6

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v6, 0x8

    aput-object v5, v3, v6

    const-string/jumbo v5, "linkname"

    const/16 v6, 0x9

    aput-object v5, v3, v6

    const-string/jumbo v5, "vpn"

    const/16 v6, 0xa

    aput-object v5, v3, v6

    const-string/jumbo v5, "refuse-eap"

    aput-object v5, v3, v7

    const-string/jumbo v5, "nodefaultroute"

    const/16 v6, 0xc

    aput-object v5, v3, v6

    const/16 v5, 0xd

    const-string/jumbo v6, "usepeerdns"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "idle"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string v6, "1800"

    aput-object v6, v3, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "mtu"

    aput-object v6, v3, v5

    const/16 v5, 0x11

    const-string v6, "1300"

    aput-object v6, v3, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "mru"

    aput-object v6, v3, v5

    const/16 v5, 0x13

    const-string v6, "1300"

    aput-object v6, v3, v5

    :cond_3d8
    move-object v7, v3

    goto/16 :goto_46c

    :cond_3db
    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-string/jumbo v5, "pptp"

    aput-object v5, v3, v12

    .line 2888
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v5, v3, v11

    const-string v5, "1723"

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const-string/jumbo v5, "name"

    const/4 v6, 0x4

    aput-object v5, v3, v6

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v5, v3, v9

    const-string/jumbo v5, "password"

    const/4 v6, 0x6

    aput-object v5, v3, v6

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v6, 0x7

    aput-object v5, v3, v6

    const-string/jumbo v5, "linkname"

    const/16 v6, 0x8

    aput-object v5, v3, v6

    const-string/jumbo v5, "vpn"

    const/16 v6, 0x9

    aput-object v5, v3, v6

    const-string/jumbo v5, "refuse-eap"

    const/16 v6, 0xa

    aput-object v5, v3, v6

    const-string/jumbo v5, "nodefaultroute"

    aput-object v5, v3, v7

    const-string/jumbo v5, "usepeerdns"

    const/16 v6, 0xc

    aput-object v5, v3, v6

    const/16 v5, 0xd

    const-string/jumbo v6, "idle"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string v6, "1800"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "mtu"

    aput-object v6, v3, v5

    const/16 v5, 0x10

    const-string v6, "1350"

    aput-object v6, v3, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "mru"

    aput-object v6, v3, v5

    const/16 v5, 0x12

    const-string v6, "1350"

    aput-object v6, v3, v5

    const/16 v5, 0x13

    .line 2893
    iget-boolean v6, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v6, :cond_456

    const-string v7, "+mppe"

    goto :goto_459

    :cond_456
    const-string/jumbo v7, "nomppe"

    :goto_459
    aput-object v7, v3, v5

    if-eqz v6, :cond_3d8

    const/16 v5, 0x15

    .line 2899
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    .line 2900
    array-length v3, v7

    sub-int/2addr v3, v12

    const-string v5, "-pap"

    aput-object v5, v7, v3

    .line 2914
    :goto_46c
    new-instance v3, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v3}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 2915
    iput-boolean v12, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 2916
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 2917
    iput-object v2, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2918
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2919
    iput-boolean v2, v3, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 2920
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v5, v3, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    if-eqz p2, :cond_48c

    new-array v5, v12, [Landroid/net/Network;

    aput-object p2, v5, v2

    .line 2922
    iput-object v5, v3, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 2930
    :cond_48c
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2931
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a7

    .line 2932
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v5, " +"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2934
    :cond_4a7
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4bd

    .line 2935
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v5, " +"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2937
    :cond_4bd
    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V

    return-void

    .line 2758
    :cond_4c1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4c9
    move-exception v0

    .line 2755
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to load credentials from AndroidKeyStore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2701
    :cond_4d2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Restricted users cannot establish VPNs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startLegacyVpnRunner()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2955
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "No package name provided"

    .line 4517
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4519
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 4522
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_69

    .line 4528
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnProfilePrivileged(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 4533
    invoke-virtual {p0, v2, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V

    .line 4534
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isIkev2VpnRunner()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 4538
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getSessionKeyLocked()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_4d

    .line 4540
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_69

    .line 4538
    monitor-exit p0

    return-object p1

    .line 4535
    :cond_2d
    :try_start_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mVpnRunner shouldn\'t be null and should also be an instance of Ikev2VpnRunner"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4530
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No profile found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    .line 4540
    :try_start_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4541
    throw p1

    .line 4523
    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User consent not granted for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized startVpnProfilePrivileged(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 4957
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 4958
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startPlatformVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a7

    .line 4962
    :try_start_c
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v0, "[Legacy VPN]"

    .line 4963
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4964
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 4965
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 4966
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 4970
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    goto :goto_33

    .line 4972
    :cond_2b
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p2, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 4973
    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 4975
    :goto_33
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 4976
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 4977
    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 4978
    iget-boolean v1, p1, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 4980
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_aa

    .line 4990
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_60

    .line 4985
    :pswitch_51
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 4986
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/net/Ikev2VpnProfile;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 4987
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7d

    :goto_60
    const-string v1, "Invalid platform VPN type"

    .line 4990
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const-string v0, "Vpn"

    .line 4991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VPN profile type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    const-string p1, "[Legacy VPN]"

    .line 4996
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 4997
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:establish_vpn_manager"

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_92} :catch_94
    .catchall {:try_start_c .. :try_end_92} :catchall_a7

    .line 5008
    :cond_92
    monitor-exit p0

    return-void

    :catch_94
    move-exception p1

    const/4 p2, 0x0

    .line 5003
    :try_start_96
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 5005
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v0, "VPN startup failed"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 5006
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "VPN startup failed"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a7
    .catchall {:try_start_96 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_aa
    .packed-switch 0x6
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method public declared-synchronized stopVpnProfile(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "No package name provided"

    .line 5019
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5021
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 5025
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "[Legacy VPN]"

    .line 5026
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 5028
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopVpnRunnerPrivileged()V
    .registers 3

    monitor-enter p0

    .line 2969
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSettingsVpnLocked()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    if-nez v0, :cond_9

    .line 2970
    monitor-exit p0

    return-void

    .line 2973
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v1, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2975
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    const/4 v0, 0x0

    .line 2976
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v1, :cond_1d

    const-string v0, "LegacyVpnRunner"

    .line 2981
    monitor-enter v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1f

    .line 2984
    :try_start_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1f

    .line 2986
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 5034
    :try_start_0
    sget-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;

    invoke-static {p2, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 5036
    invoke-static {p2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toDiskStableBytes(Landroid/os/PersistableBundle;)[B

    move-result-object p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_23

    .line 5042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5044
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getVpnAppExcludedForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    .line 5046
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5047
    throw p0

    :catch_23
    move-exception p0

    const-string p1, "Vpn"

    const-string/jumbo p2, "problem writing into stream"

    .line 5038
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    :try_start_4
    const-string v0, "X.509"

    .line 5299
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 5300
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    .line 5301
    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p1

    const-string v0, "Vpn"

    const-string v1, "Failed to toCertificate"

    .line 5303
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public final updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2436
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 2438
    :goto_c
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2441
    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIdContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    .line 2442
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_ac

    const/16 v5, 0x11

    const-string v6, "Vpn"

    if-nez p1, :cond_2d

    .line 2444
    :try_start_26
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_ac

    .line 2467
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2447
    :cond_2d
    :try_start_2d
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2448
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x104030c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v7, "lockdown"

    .line 2450
    iget-boolean v8, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 2451
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2452
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v8, 0xc000000

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2454
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v8, "VPN"

    invoke-direct {v0, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x1080c13

    .line 2456
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040eec

    .line 2457
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x1040ee9

    .line 2458
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2459
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo v0, "sys"

    .line 2460
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2461
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2462
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v0, 0x106001c

    .line 2463
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 2465
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_a8
    .catchall {:try_start_2d .. :try_end_a8} :catchall_ac

    .line 2467
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ac
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    throw p0
.end method

.method public final updateLinkPropertiesInPlaceIfPossible(Landroid/net/NetworkAgent;Lcom/android/internal/net/VpnConfig;)Z
    .registers 8

    .line 1629
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    const/4 v3, 0x0

    const-string v4, "Vpn"

    if-eq v0, v2, :cond_11

    const-string p0, "Handover not possible due to changes to allowBypass"

    .line 1630
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1636
    :cond_11
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1637
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_a3

    .line 1643
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->isSecureWifiPackage()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1644
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5e

    .line 1646
    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    .line 1647
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_57

    :cond_50
    const-string/jumbo v0, "secureFolder\'s config is not changed"

    .line 1651
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_57
    :goto_57
    const-string/jumbo p0, "secureFolder\'s config is changed. return false"

    .line 1648
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1654
    :cond_5e
    :goto_5e
    iget-boolean v0, p2, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v1, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    if-ne v0, v2, :cond_94

    iget v0, p2, Lcom/android/internal/net/VpnConfig;->dport:I

    iget v2, v1, Lcom/android/internal/net/VpnConfig;->dport:I

    if-ne v0, v2, :cond_94

    iget v0, p2, Lcom/android/internal/net/VpnConfig;->fwmark:I

    iget v2, v1, Lcom/android/internal/net/VpnConfig;->fwmark:I

    if-ne v0, v2, :cond_94

    iget v0, p2, Lcom/android/internal/net/VpnConfig;->priority:I

    iget v2, v1, Lcom/android/internal/net/VpnConfig;->priority:I

    if-ne v0, v2, :cond_94

    iget v0, p2, Lcom/android/internal/net/VpnConfig;->netTableId:I

    iget v2, v1, Lcom/android/internal/net/VpnConfig;->netTableId:I

    if-ne v0, v2, :cond_94

    iget-object v0, p2, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    .line 1659
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    .line 1660
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9a

    :cond_94
    const-string p0, "Handover not possible due to changes to port bypass configs"

    .line 1661
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1667
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    const/4 p0, 0x1

    return p0

    :cond_a3
    :goto_a3
    const-string p0, "Handover not possible due to changes to allowed/denied apps"

    .line 1638
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public updateLocalProxyInfo(Landroid/net/ProxyInfo;)V
    .registers 3

    .line 4691
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 4692
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 4693
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_11
    return-void
.end method

.method public final updatePortBypassConfigs()V
    .registers 6

    .line 1570
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 1571
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    const-string v3, "_"

    .line 1572
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1573
    array-length v3, v0

    if-le v3, v2, :cond_2a

    .line 1575
    :try_start_15
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_21

    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v1

    :goto_22
    iput-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    .line 1576
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_2a} :catch_2a

    .line 1581
    :catch_2a
    :cond_2a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    if-eqz v0, :cond_6b

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getWifiInterfaceInfo()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_42

    const-string v0, "Vpn"

    const-string v2, "Failed to update port bypass configs due to no wifi interface info"

    .line 1584
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    return-void

    .line 1588
    :cond_42
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/16 v4, 0x1bb

    iput v4, v3, Lcom/android/internal/net/VpnConfig;->dport:I

    const/16 v4, 0x60a

    .line 1589
    iput v4, v3, Lcom/android/internal/net/VpnConfig;->fwmark:I

    const/16 v4, 0x2cec

    .line 1590
    iput v4, v3, Lcom/android/internal/net/VpnConfig;->priority:I

    .line 1591
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    iput v1, v3, Lcom/android/internal/net/VpnConfig;->netTableId:I

    .line 1592
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    const/4 v1, 0x2

    .line 1593
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    :cond_6b
    return-void
.end method

.method public updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-static {p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyState:I

    .line 698
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object p2, Lcom/android/server/connectivity/Vpn$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_63

    const/4 v0, 0x3

    if-eq p2, v0, :cond_63

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4c

    .line 720
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez p2, :cond_44

    goto :goto_74

    .line 721
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPN can only go to CONNECTING state when the agent is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state argument "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 714
    :cond_63
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p2, :cond_74

    .line 715
    invoke-virtual {p2}, Landroid/net/NetworkAgent;->unregister()V

    .line 716
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_74

    .line 708
    :cond_6d
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p2, :cond_74

    .line 709
    invoke-virtual {p2}, Landroid/net/NetworkAgent;->markConnected()V

    .line 728
    :cond_74
    :goto_74
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method public final updateUidListInNetworkCapabilities()V
    .registers 5

    .line 4915
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 4916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uidRange going to be updated is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for profile "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vpn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4918
    :cond_44
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 4919
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4920
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz p0, :cond_5e

    .line 4921
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_5e
    return-void
.end method

.method public updateUidRangesToPerAppVpn(ZLjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToPerAppVpn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_40

    .line 4868
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 4870
    :cond_40
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 4872
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method

.method public updateUidRangesToUserVpn(ZI)V
    .registers 5

    .line 4877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToUserVpn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x186a0

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, p2, -0x1

    const v1, 0x1869f

    add-int/2addr v0, v1

    if-eqz p1, :cond_40

    .line 4882
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 4884
    :cond_40
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4886
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method

.method public updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUidRangesToUserVpnWithBlackList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    return-void

    .line 4895
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4897
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4899
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->createUidRangeForUser(I)Landroid/util/Range;

    move-result-object p1

    .line 4900
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 4901
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_4f

    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 4905
    :cond_4f
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v3, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_3a

    .line 4909
    :cond_67
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p2, v0, :cond_87

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->knoxVpnUidRanges:Ljava/util/Set;

    new-instance v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {v1, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4910
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->updateUidListInNetworkCapabilities()V

    return-void
.end method

.method public validateRequiredFeatures(Lcom/android/internal/net/VpnProfile;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4385
    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch p1, :pswitch_data_1e

    return-void

    .line 4390
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.software.ipsec_tunnels"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 4392
    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Ikev2VpnProfile(s) requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final verifyCallingUidAndPackage(Ljava/lang/String;)V
    .registers 4

    .line 4372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4373
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_d

    return-void

    .line 4374
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
