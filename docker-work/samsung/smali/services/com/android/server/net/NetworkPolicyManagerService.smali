.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;,
        Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;,
        Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field public static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field public static final ACTION_SNOOZE_TETHERING_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

.field public static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field public static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field public static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field public static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field public static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field public static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field public static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field public static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field public static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field public static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field public static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field public static final ATTR_METERED:Ljava/lang/String; = "metered"

.field public static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field public static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field public static final ATTR_NETWORK_TYPES:Ljava/lang/String; = "networkTypes"

.field public static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field public static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field public static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field public static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field public static final ATTR_SUBSCRIBER_ID_MATCH_RULE:Ljava/lang/String; = "subscriberIdMatchRule"

.field public static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field public static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field public static final ATTR_TEMPLATE_METERED:Ljava/lang/String; = "templateMetered"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field public static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field public static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field public static final ATTR_XML_UTILS_NAME:Ljava/lang/String; = "name"

.field public static final BILLING_CYCLE_SETTING_COMPONENT:Ljava/lang/String; = "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.BillingCycleSettingsActivity"

.field public static final BLOCKED_REASON_FIREWALL_DATA:I = 0x200

.field public static final BLOCKED_REASON_FIREWALL_WIFI:I = 0x100

.field public static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field public static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field public static final CHAIN_TOGGLE_NONE:I = 0x0

.field public static final DB_USER_RESTRICT_BACKGROUND_UIDLIST:Ljava/lang/String; = "user_restrict_background_uidlist"

.field public static KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String; = null

.field public static KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String; = null

.field public static KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String; = null

.field public static KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String; = null

.field public static KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String; = null

.field public static KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String; = null

.field public static KEY_SM_EXTRAS_SUBID:Ljava/lang/String; = null

.field public static KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String; = null

.field public static KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String; = null

.field public static KEY_SM_PROVIDER_METHOR_UPDATE_POLICY:Ljava/lang/String; = null

.field public static KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String; = null

.field public static KEY_USAGE_PLAN_LIST:Ljava/lang/String; = null

.field public static final LOGD:Z

.field public static final LOGV:Z

.field public static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field public static final MSG_CHECK_BACKGROUND_RESTRICTTION_ON_PSM:I = 0x3ed

.field public static final MSG_CHECK_TETHERING_WARNING_CHANGED:I = 0x3ef

.field public static final MSG_CLEAR_SUBSCRIPTION_PLANS:I = 0x16

.field public static final MSG_LIMIT_REACHED:I = 0x5

.field public static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field public static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field public static final MSG_ON_APPLICATION_KILL:I = 0x34

.field public static final MSG_POLICIES_CHANGED:I = 0xd

.field public static final MSG_POWER_SAVE_WHITELIST_CHANGED:I = 0x3eb

.field public static final MSG_REMOVE_INTERFACE_QUOTAS:I = 0xb

.field public static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field public static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field public static final MSG_RULES_CHANGED:I = 0x1

.field public static final MSG_SET_DEVICE_IDLE_MODE:I = 0x3ee

.field public static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field public static final MSG_SHOW_FIREWALL_PERMISSION_TOAST:I = 0x33

.field public static final MSG_STATS_PROVIDER_WARNING_OR_LIMIT_REACHED:I = 0x14

.field public static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field public static final MSG_SUBSCRIPTION_PLANS_CHANGED:I = 0x13

.field public static final MSG_UIDS_BLOCKED_REASONS_CHANGED:I = 0x17

.field public static final MSG_UID_BLOCKED_REASON_CHANGED:I = 0x15

.field public static final MSG_UPDATE_INTERFACE_QUOTAS:I = 0xa

.field public static final NO_UPDATE_SNOOZE_TIME:I = 0x0

.field public static final OFF_PEAK_DATA_WARNING_COMPONENT:Ljava/lang/String; = "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.OffPeakDataWarningActivity"

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field public static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field public static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field public static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field public static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field public static final QUOTA_UNLIMITED_DEFAULT:J

.field public static final SAMSUNG_APPS_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.Main"

.field public static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field public static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field public static final TAG_FIREWALL_POLICY:Ljava/lang/String; = "firewall-policy"

.field public static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field public static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field public static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field public static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field public static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field public static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final TAG_XML_UTILS_INT_ARRAY:Ljava/lang/String; = "int-array"

.field public static final TETHERING_DATA_WARNING_SIM_SLOT_0:Ljava/lang/String; = "tethering_data_warning_sim_slot_0"

.field public static final TETHERING_DATA_WARNING_SIM_SLOT_1:Ljava/lang/String; = "tethering_data_warning_sim_slot_1"

.field public static final TYPE_LIMIT:I = 0x23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_RAPID:I = 0x2d
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_WARNING:I = 0x22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_WARNING_TETHERING:I = -0x5

.field public static final UDS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.uds"

.field public static final UID_MSG_GONE:I = 0x65

.field public static final UID_MSG_STATE_CHANGED:I = 0x64

.field public static final UID_TETHERING:I = -0x5

.field public static final UPDATE_SNOOZE_TIME:I = 0x1

.field public static final VERSION_ADDED_CYCLE:I = 0xb

.field public static final VERSION_ADDED_INFERRED:I = 0x7

.field public static final VERSION_ADDED_METERED:I = 0x4

.field public static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field public static final VERSION_ADDED_NETWORK_TYPES:I = 0xc

.field public static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field public static final VERSION_ADDED_SNOOZE:I = 0x2

.field public static final VERSION_ADDED_TIMEZONE:I = 0x6

.field public static final VERSION_INIT:I = 0x1

.field public static final VERSION_LATEST:I = 0xe

.field public static final VERSION_REMOVED_SUBSCRIPTION_PLANS:I = 0xe

.field public static final VERSION_SPLIT_SNOOZE:I = 0x5

.field public static final VERSION_SUPPORTED_CARRIER_USAGE:I = 0xd

.field public static final VERSION_SWITCH_APP_ID:I = 0x8

.field public static final VERSION_SWITCH_UID:I = 0xa

.field public static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field public static isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mFirewallPoliciesLock:Ljava/lang/Object;

.field public static final mFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation
.end field


# instance fields
.field public volatile isOffPeakObserverRegisted:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveNetworkType:I

.field public final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field public final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field public mChargingState:Z

.field public final mChargingStateReceiver:Landroid/content/BroadcastReceiver;

.field public mCheckedAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mClock:Ljava/time/Clock;

.field public mConnManager:Landroid/net/ConnectivityManager;

.field public mConnReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDdsChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mDefaultDataPhoneId:I

.field public final mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

.field public volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mFirewallPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerCallback:Landroid/os/Handler$Callback;

.field public mHasEpdgCall:Z

.field public final mIPm:Landroid/content/pm/IPackageManager;

.field public final mInternetPermissionMap:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public volatile mIsVideoCall:Z

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadedRestrictBackground:Z

.field public final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field public volatile mLowPowerStandbyActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public mMergedSubscriberIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMeteredIfacesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMeteredIfacesLock:Ljava/lang/Object;

.field public final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

.field public final mNetIdToSubId:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mNetworkManager:Landroid/os/INetworkManagementService;

.field public volatile mNetworkManagerReady:Z

.field public final mNetworkMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field public final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public final mNetworkRoaming:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public mNetworkStats:Landroid/app/usage/NetworkStatsManager;

.field public mNetworkToIfaces:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOffPeakContentObserver:Landroid/database/ContentObserver;

.field public final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public mPhoneStateListenerVideoCall:Landroid/telephony/PhoneStateListener;

.field public final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field public mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field public volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public mRestrictBackgroundBeforeBsm:Z

.field public volatile mRestrictBackgroundChangedInBsm:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public mRestrictBackgroundLowPowerMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

.field public volatile mRestrictedNetworkingMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public mSetSubscriptionPlansIdCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public final mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field public final mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

.field public final mSubIdToCarrierConfig:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuppressDefaultPolicy:Z

.field public volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mTetherListener:Landroid/net/TetheringManager$TetheringEventCallback;

.field public mTetheringNotiSnooze:J

.field public mTetheringState:Z

.field public mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mTetheringWarningObserver:Landroid/database/ContentObserver;

.field public final mTmpUidBlockedState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidBlockedState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidBlockedState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidEventHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field public final mUidEventThread:Lcom/android/server/ServiceThread;

.field public final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field public final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mUidRulesFirstLock:Ljava/lang/Object;

.field public final mUidState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkPolicyManager$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidStateCallbackInfos:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidStateCallbackInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field public mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mVideoCallLimitAlreadySent:Z

.field public mVideoCallWarningAlreadySent:Z

.field public final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field public preTotalBytes:J


# direct methods
.method public static synthetic $r8$lambda$0BX8RDdI-EIEJgKhIhSXPSU2NJ4(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$networkScoreAndNetworkManagementServiceReady$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0xpsiX8dAP33QNXj0A23SjNzpqg(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$updateNetworks$3(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3f6a8yEn_Srzq-Np0gL568wBWuQ(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$updateRulesForRestrictPowerUL$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fIHe5YXQqf040AMKF2-3fusqtM(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$initService$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$By5Iv77Tz2tDgp-KjMM3ME3LPtA(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$handleDeviceIdleModeChangedUL$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CrbqViKc5IGxDXvpLQWCZR6vx-E(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$updateRulesForRestrictBackgroundUL$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYbv9UOeWV3jR3LTVp1-0lpsVH8(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$systemReady$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZhzmA6ALLTrn1acHm72_R8M0JE(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$updateRestrictedModeAllowlistUL$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPPJ9BNgMtDU0rsBON6vl-sW50Y(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$checkToInitOffPeakConfig$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmD-B-4bGWKX8btkDkVSxjtOHJM(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$isKorOperator$11(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j0Jrb7o1a4v-G_OBQcbg-qBrQOw(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$forEachUid$8(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$naHjeVatjK19CSjywT8_JYdgW1w(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->lambda$new$10(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveNetworkType(Lcom/android/server/net/NetworkPolicyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveNotifs(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdminDataAvailableLatch(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChargingState(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckedAppSet(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCheckedAppSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/time/Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnManager(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDataPhoneId(Lcom/android/server/net/NetworkPolicyManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternetPermissionMap(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMeteredIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMeteredRestrictedUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkMetered(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkRoaming(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkToIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubIdToSubscriberId(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubscriberIdToSlotId(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveNetworkType(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmChargingState(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultDataPhoneId(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasEpdgCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsVideoCall(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTetheringNotiSnooze(Lcom/android/server/net/NetworkPolicyManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTetheringState(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVideoCallLimitAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVideoCallWarningAlreadySent(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDefaultRestrictBackgroundAllowlistUidsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchangePowerSaveMode(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOffPeakEnable(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkOffPeakEnable(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckToInitOffPeakConfig(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkToInitOffPeakConfig(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchMeteredIfacesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSubscriptionOverride(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSubscriptionPlansChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUidPoliciesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureActiveCarrierPolicyAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mforEachUid(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPrimarySubscriptionPlanLocked(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)J
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mhandleCheckFireWallPermission(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misNaGsm(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateCarrierPolicyCycleAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFirewallPolicyNL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallPolicyNL(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceLimit(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetUidFirewallRules(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceLimit(Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSubscriptionPlansInternal(Lcom/android/server/net/NetworkPolicyManagerService;I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNetworkToIfacesNL(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/ArraySet;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkToIfacesNL(ILandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateNetworksInternal(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerSaveWhitelistUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRestrictionRulesForUidUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRulesForAppIdleParoleUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRulesForGlobalChangeAL(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRulesForRestrictPowerUL(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRulesForTempWhitelistChangeUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupgradeWifiMeteredOverride(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverride()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetKEY_IS_IN_OFF_PEAK_TIME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetKEY_SM_EXTRAS_SUBID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetKEY_SM_PROVIDER_CONTENT_URI()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetKEY_SM_PROVIDER_METHOR_UPDATE_POLICY()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_POLICY:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOGD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOGV()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetisOffPeakEnable()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 380
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 381
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 464
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 472
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    .line 779
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 809
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v0, "unlimited_data_plan_warn_switch"

    .line 810
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String;

    const-string/jumbo v0, "usage_plan_choose"

    .line 811
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_USAGE_PLAN_LIST:Ljava/lang/String;

    const-string/jumbo v0, "off_peak_start_time"

    .line 812
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String;

    const-string/jumbo v0, "off_peak_end_time"

    .line 813
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String;

    const-string/jumbo v0, "off_peak_data_switch"

    .line 814
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String;

    const-string/jumbo v0, "is_in_off_peak_time"

    .line 815
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    const-string/jumbo v0, "off_peak_data_limit"

    .line 816
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm.dcapi"

    .line 817
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

    const-string/jumbo v0, "subId"

    .line 818
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

    const-string/jumbo v0, "updatePolicyFromSM"

    .line 819
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_POLICY:Ljava/lang/String;

    const-string/jumbo v0, "updateAlarmFromSM"

    .line 820
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String;

    const-string/jumbo v0, "only_show_limit_alert"

    .line 821
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .registers 13

    .line 887
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 888
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    invoke-direct {v8, p1}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 887
    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;ZLcom/android/server/net/NetworkPolicyManagerService$Dependencies;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 952
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 463
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCheckedAppSet:Ljava/util/HashSet;

    .line 565
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 566
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 584
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 589
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 593
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 599
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 602
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 606
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 610
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 612
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 614
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 616
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 618
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    .line 620
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    .line 622
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 626
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 638
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 646
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 649
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 652
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 659
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 665
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 673
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 677
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    .line 679
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 682
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 686
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 690
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    .line 693
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    .line 697
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    .line 701
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 704
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 707
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    .line 711
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 715
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 721
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    .line 729
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 732
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 750
    new-instance v1, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v1}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 753
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 766
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 780
    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    const/4 v1, 0x0

    .line 786
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 787
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 788
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 789
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 790
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 799
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 808
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    .line 829
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    .line 831
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 832
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 833
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    .line 880
    new-instance v2, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v3, "updateNetworkEnabledNL()"

    const-string/jumbo v4, "isUidNetworkingBlocked()"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 1343
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1395
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1407
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1429
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1453
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1491
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback-IA;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 1525
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1552
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1590
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1636
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2170
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2350
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 5738
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 6012
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 7207
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListenerVideoCall:Landroid/telephony/PhoneStateListener;

    .line 7296
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Landroid/content/BroadcastReceiver;

    .line 7781
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 7810
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetherListener:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 7828
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$21;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Landroid/database/ContentObserver;

    .line 7850
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$22;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$22;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "missing context"

    .line 953
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "missing activityManager"

    .line 954
    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/app/IActivityManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo p2, "missing networkManagement"

    .line 955
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 956
    const-class p2, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerWhitelistManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const-string/jumbo p2, "missing Clock"

    .line 957
    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p5

    check-cast p2, Ljava/time/Clock;

    iput-object p5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    const-string/jumbo p2, "user"

    .line 958
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 959
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 960
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 962
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "NetworkPolicy"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 964
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 967
    new-instance p2, Lcom/android/server/ServiceThread;

    const-string p4, "NetworkPolicy.uid"

    const/4 p5, -0x2

    invoke-direct {p2, p4, p5, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 969
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 970
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 972
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    const-string/jumbo p2, "missing Dependencies"

    .line 973
    invoke-static {p8, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    .line 975
    new-instance p2, Landroid/util/AtomicFile;

    new-instance p4, Ljava/io/File;

    const-string/jumbo p5, "netpolicy.xml"

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p5, "net-policy"

    invoke-direct {p2, p4, p5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 978
    new-instance p2, Landroid/util/AtomicFile;

    new-instance p4, Ljava/io/File;

    const-string p5, "firewallpolicy.xml"

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p5, "firewall-policy"

    invoke-direct {p2, p4, p5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    .line 981
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 982
    const-class p2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/NetworkStatsManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 983
    new-instance p2, Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p2, p1, p3}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 985
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance p2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {p2, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl-IA;)V

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs addAll(Landroid/util/ArraySet;[I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3936
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 3937
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method public static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4

    .line 6402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x1040373

    .line 6404
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6403
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 6405
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.net.NETWORK_TEMPLATE"

    .line 6406
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 6394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 6395
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    .line 6396
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6397
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildSnoozeTetheringWarningIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 7863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 7864
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7865
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 6386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 6387
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    .line 6388
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6389
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3

    .line 2868
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2869
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 2870
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 2871
    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4

    .line 6411
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x104030e

    .line 6413
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6412
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 6414
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    .line 6416
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.net.NETWORK_TEMPLATE"

    .line 6418
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildViewDataUsageIntentSM(Ljava/lang/String;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3

    .line 6435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6436
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 6437
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.net.NETWORK_TEMPLATE"

    .line 6438
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildViewDataUsageIntentUDS(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3

    .line 6424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    .line 6425
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6426
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.uds"

    .line 6427
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    .line 6428
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkStateSnapshot;",
            ")V"
        }
    .end annotation

    .line 2516
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 6490
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 6492
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-void
.end method

.method public static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 6483
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 6485
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-void
.end method

.method public static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .registers 3

    if-eqz p0, :cond_6

    .line 6826
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_6
    return p2
.end method

.method public static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 896
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 897
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    return-object v0
.end method

.method public static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 892
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;",
            ">;I)",
            "Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;"
        }
    .end annotation

    .line 6831
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez v0, :cond_10

    .line 6833
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>()V

    .line 6834
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public static getRestrictedModeFirewallRule(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static isSystem(I)Z
    .registers 2

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$checkToInitOffPeakConfig$9(I)V
    .registers 7

    const-string v0, "NetworkPolicy"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_63

    .line 7460
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 7461
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakObserverRegisted:Landroid/util/SparseArray;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7462
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7463
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Landroid/database/ContentObserver;

    .line 7462
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7466
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkOffPeakEnable(I)V

    .line 7467
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7468
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_EXTRAS_SUBID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7470
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_CONTENT_URI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_SM_PROVIDER_METHOR_UPDATE_ALARM:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_5c} :catch_5d

    goto :goto_63

    :catch_5d
    move-exception p0

    const-string v1, " call to smart manager has exception "

    .line 7473
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7476
    :cond_63
    :goto_63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOffPeakPlanConfig SubscriptionId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isoffpeakEnable:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7476
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$forEachUid$8(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 5155
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    .line 5156
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 5157
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_15

    const/4 p3, 0x1

    .line 5158
    invoke-virtual {p0, v0, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_16

    :cond_15
    return-void

    .line 5163
    :cond_16
    :goto_16
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 5164
    invoke-interface {p2, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private synthetic lambda$handleDeviceIdleModeChangedUL$5(I)V
    .registers 3

    .line 5049
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5050
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 5051
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$initService$0(Z)V
    .registers 3

    .line 1136
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    .line 1139
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static synthetic lambda$isKorOperator$11(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 7842
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$networkScoreAndNetworkManagementServiceReady$1(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private synthetic lambda$new$10(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 5

    if-nez p2, :cond_a

    const-string p0, "NetworkPolicy"

    const-string p1, "event is null return"

    .line 7783
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7786
    :cond_a
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 7787
    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 7789
    invoke-virtual {p0, p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkFireWallPermission(Ljava/lang/String;I)V

    :cond_14
    return-void
.end method

.method private synthetic lambda$systemReady$2(Ljava/lang/Runnable;)V
    .registers 2

    .line 1337
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$updateNetworks$3(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 2211
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$updateRestrictedModeAllowlistUL$4(I)V
    .registers 4

    .line 4667
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4668
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)I

    move-result v1

    .line 4670
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v1

    if-eqz v1, :cond_12

    .line 4675
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 4677
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private synthetic lambda$updateRulesForRestrictBackgroundUL$7(I)V
    .registers 2

    .line 5126
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method private synthetic lambda$updateRulesForRestrictPowerUL$6(I)V
    .registers 2

    .line 5115
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method public static normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate;"
        }
    .end annotation

    .line 3604
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 3606
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3607
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 3608
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_41

    .line 3609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated merged list detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_41
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3613
    invoke-static {v0, v3}, Lcom/android/net/module/util/CollectionUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 3616
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 3617
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    .line 3618
    invoke-virtual {p1, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    .line 3619
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    .line 3620
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    :cond_7c
    return-object p0
.end method

.method public static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 5

    .line 1563
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-ne v0, p1, :cond_15

    .line 1565
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_16

    :cond_15
    const/4 v1, 0x1

    :cond_16
    if-eqz v1, :cond_1f

    .line 1567
    invoke-virtual {p2}, Landroid/net/Network;->getNetId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1f
    return v1
.end method


# virtual methods
.method public final addAllowedPackagesDuringDataSaving(I)Z
    .registers 14

    .line 7341
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7344
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigAllowedPackagesDuringDataSaving"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NetworkPolicy"

    if-eqz v1, :cond_ee

    .line 7347
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ee

    const-string v4, ","

    .line 7348
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v4, "Apply DataSaver Whitelist."

    .line 7350
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    move v5, v4

    .line 7351
    :goto_28
    array-length v6, v1

    if-ge v4, v6, :cond_ec

    .line 7352
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 7353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    :try_start_46
    invoke-virtual {v0, v6, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_e8

    .line 7357
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 7358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7359
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 7360
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_9b

    .line 7361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to default restricted background allowlist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 7363
    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7361
    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7365
    :cond_9b
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_e8

    if-eqz v9, :cond_ce

    .line 7367
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding default package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to restrict background allowlist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    const/4 v9, 0x4

    .line 7369
    invoke-virtual {p0, v7, v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_d2} :catch_d4

    move v5, v8

    goto :goto_e8

    .line 7374
    :catch_d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No ApplicationInfo for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    :goto_e8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    :cond_ec
    move v2, v5

    goto :goto_f3

    :cond_ee
    const-string p0, "cscAllowDataSaverList is null."

    .line 7379
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f3
    return v2
.end method

.method public addDefaultRestrictBackgroundAllowlistUidsUL()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1018
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_26

    .line 1022
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1023
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_22

    if-eqz v4, :cond_20

    goto :goto_22

    :cond_20
    move v4, v2

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v4, 0x1

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_26
    return v4
.end method

.method public final addDefaultRestrictBackgroundAllowlistUidsUL(I)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 1030
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1032
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v0

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addAllowedPackagesDuringDataSaving(I)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 1038
    :goto_14
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_f1

    .line 1039
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1040
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_42

    .line 1041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking restricted background exemption for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/high16 v8, 0x100000

    const/4 v9, 0x1

    .line 1045
    :try_start_45
    invoke-virtual {v1, v5, v8, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_49} :catch_d5

    .line 1051
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v10

    if-nez v10, :cond_65

    .line 1052
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultRestrictBackgroundAllowlistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    .line 1056
    :cond_65
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 1057
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    if-eqz v6, :cond_9c

    .line 1059
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to default restricted background allowlist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 1061
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1059
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_9c
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_ed

    if-eqz v6, :cond_cf

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding default package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to restrict background allowlist"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    const/4 v2, 0x4

    .line 1066
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    move v2, v9

    goto :goto_ed

    .line 1047
    :catch_d5
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v6, :cond_ed

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No ApplicationInfo for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    :goto_ed
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    :cond_f1
    return v2
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6445
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .registers 4

    .line 3528
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3529
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/NetworkPolicy;

    .line 3530
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public final addSdkSandboxUidsIfNeeded(Landroid/util/SparseIntArray;)V
    .registers 8

    .line 6212
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    .line 6213
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, p0, :cond_25

    .line 6215
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 6216
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 6217
    invoke-static {v3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 6218
    invoke-static {v3}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6222
    :cond_25
    :goto_25
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v1, p0, :cond_39

    .line 6223
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    .line 6224
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 6225
    invoke-virtual {p1, p0, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_39
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 6

    .line 3320
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3326
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3327
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    or-int/2addr p2, v1

    if-eq v1, p2, :cond_25

    const/4 v2, 0x1

    .line 3330
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 3331
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 3333
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_27

    throw p0

    .line 3323
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot apply policy to UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final adjustOffPeakEndTime(JJJJ)J
    .registers 9

    cmp-long p0, p3, p1

    if-gez p0, :cond_f

    const p0, 0x5265c00

    int-to-long p0, p0

    add-long/2addr p3, p0

    add-long/2addr p5, p3

    cmp-long p2, p5, p7

    if-lez p2, :cond_f

    move-wide p3, p0

    :cond_f
    return-wide p3
.end method

.method public final applyFirewallRules(II)V
    .registers 7

    and-int/lit8 v0, p2, 0x1

    const-string v1, "NetworkPolicy"

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 7583
    :try_start_7
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 7584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3d

    .line 7587
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 7588
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apply FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    return-void
.end method

.method public bindConnectivityManager()V
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "missing ConnectivityManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public final broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .registers 8

    .line 6085
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 6086
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 6088
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 6089
    array-length v0, p2

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_31

    aget-object v2, p2, v1

    .line 6090
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6092
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 6093
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6094
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_31
    return-void
.end method

.method public buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2848
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 2850
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result p2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v2

    .line 2851
    new-instance p2, Landroid/net/NetworkPolicy;

    .line 2852
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v12}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2854
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2855
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_37

    .line 2856
    :try_start_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2857
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_34

    .line 2858
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    return-object p2

    :catchall_34
    move-exception p0

    .line 2857
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0

    :catchall_37
    move-exception p0

    .line 2858
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 3

    .line 2162
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 2163
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result p1

    .line 2162
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public final changePowerSaveMode()Z
    .registers 5

    .line 7333
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 7334
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 7335
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v0, p0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    return v2
.end method

.method public final varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .registers 7

    .line 3476
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 3477
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method public final checkFireWallPermission(Ljava/lang/String;I)V
    .registers 5

    .line 7771
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    const-string p0, "NetworkPolicy"

    const-string/jumbo p1, "handler is null return"

    .line 7772
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/16 v1, 0x33

    .line 7775
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7776
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7777
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 7778
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final checkOffPeakEnable(I)V
    .registers 11

    .line 7482
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 7484
    :goto_22
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_LIMIT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 7486
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_IS_IN_OFF_PEAK_TIME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_5e

    move p0, v1

    goto :goto_5f

    :cond_5e
    move p0, v2

    .line 7488
    :goto_5f
    sget-object v7, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_6e

    if-eqz p0, :cond_6e

    cmp-long p0, v3, v5

    if-lez p0, :cond_6e

    move v2, v1

    :cond_6e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final checkToInitOffPeakConfig(I)V
    .registers 4

    .line 7458
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchBlockedReasonChanged(Landroid/net/INetworkPolicyListener;III)V
    .registers 5

    .line 5732
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onBlockedReasonChanged(III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3

    .line 5687
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .registers 3

    .line 5696
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III[I)V
    .registers 6

    .line 5714
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III[I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 5723
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 5705
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 4

    .line 5678
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4271
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "NetworkPolicy"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 4273
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4275
    new-instance p2, Landroid/util/ArraySet;

    array-length v0, p3

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 4276
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_25

    aget-object v3, p3, v2

    .line 4277
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4279
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeNetstatsFiles()V

    .line 4280
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4281
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_46b

    :try_start_2e
    const-string v2, "--unsnooze"

    .line 4282
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 4283
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_3e
    if-ltz p2, :cond_4e

    .line 4284
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->clearSnooze()V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3e

    .line 4287
    :cond_4e
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    const-string p0, "Cleared snooze timestamps"

    .line 4289
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_468

    :try_start_57
    monitor-exit p3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_46b

    return-void

    :cond_59
    :try_start_59
    const-string p2, "System ready: "

    .line 4293
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Restrict background: "

    .line 4294
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Restrict power: "

    .line 4295
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Device idle: "

    .line 4296
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Restricted networking mode: "

    .line 4297
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "Low Power Standby mode: "

    .line 4298
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 4299
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_98
    .catchall {:try_start_59 .. :try_end_98} :catchall_468

    :try_start_98
    const-string v2, "Metered ifaces: "

    .line 4300
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4301
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4302
    monitor-exit p2
    :try_end_a3
    .catchall {:try_start_98 .. :try_end_a3} :catchall_465

    .line 4304
    :try_start_a3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRestrictBackgroundLowPowerMode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRestrictBackgroundBeforeBsm: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLoadedRestrictBackground: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4308
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRestrictBackgroundChangedInBsm: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4310
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Network policies:"

    .line 4311
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4312
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move p2, v1

    .line 4313
    :goto_10e
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p2, v2, :cond_128

    .line 4314
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10e

    .line 4316
    :cond_128
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4318
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Subscription plans:"

    .line 4319
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4320
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move p2, v1

    .line 4321
    :goto_137
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_181

    .line 4322
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscriber ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4324
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4325
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    .line 4326
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 4327
    array-length v3, v2

    move v4, v1

    :goto_171
    if-ge v4, v3, :cond_17b

    aget-object v5, v2, v4

    .line 4328
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_171

    .line 4331
    :cond_17b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_137

    .line 4333
    :cond_181
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4335
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Active subscriptions:"

    .line 4336
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4337
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move p2, v1

    .line 4338
    :goto_190
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_1c4

    .line 4339
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4340
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4343
    invoke-static {v3}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4342
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_190

    .line 4345
    :cond_1c4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4347
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4348
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 4349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged subscriptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4350
    invoke-static {v2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4349
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d0

    .line 4354
    :cond_1f9
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    if-lez p2, :cond_236

    .line 4355
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTetheringWarningBytes: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTetheringNotiSnooze: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4362
    :cond_236
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Policy for UIDs:"

    .line 4363
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4365
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    move v2, v1

    :goto_248
    if-ge v2, p2, :cond_270

    .line 4367
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 4368
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const-string v5, "UID="

    .line 4369
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4370
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, " policy="

    .line 4371
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4372
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4373
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_248

    .line 4375
    :cond_270
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4377
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_2ab

    const-string v2, "Power save whitelist (except idle) app ids:"

    .line 4379
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4380
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_284
    if-ge v2, p2, :cond_2a8

    const-string v3, "UID="

    .line 4382
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4383
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    .line 4384
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4385
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 4386
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_284

    .line 4388
    :cond_2a8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4391
    :cond_2ab
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_2e3

    const-string v2, "Power save whitelist app ids:"

    .line 4393
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_2bc
    if-ge v2, p2, :cond_2e0

    const-string v3, "UID="

    .line 4396
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4397
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    .line 4398
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4399
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 4400
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2bc

    .line 4402
    :cond_2e0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4405
    :cond_2e3
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_31b

    const-string v2, "App idle whitelist app ids:"

    .line 4407
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4408
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_2f4
    if-ge v2, p2, :cond_318

    const-string v3, "UID="

    .line 4410
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4411
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    .line 4412
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 4414
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f4

    .line 4416
    :cond_318
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4419
    :cond_31b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_345

    const-string v2, "Default restrict background allowlist uids:"

    .line 4421
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4422
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_32c
    if-ge v2, p2, :cond_342

    const-string v3, "UID="

    .line 4424
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4425
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4426
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32c

    .line 4428
    :cond_342
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4431
    :cond_345
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_36f

    const-string v2, "Default restrict background allowlist uids revoked by users:"

    .line 4433
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_356
    if-ge v2, p2, :cond_36c

    const-string v3, "UID="

    .line 4436
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4437
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4438
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_356

    .line 4440
    :cond_36c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4443
    :cond_36f
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_399

    const-string v2, "Low Power Standby allowlist uids:"

    .line 4445
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v1

    :goto_380
    if-ge v2, p2, :cond_396

    const-string v3, "UID="

    .line 4448
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4449
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4450
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_380

    .line 4452
    :cond_396
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4455
    :cond_399
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4456
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-static {v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 4457
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_3a6
    .catchall {:try_start_a3 .. :try_end_3a6} :catchall_468

    .line 4458
    :try_start_3a6
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 4459
    monitor-exit v2
    :try_end_3ac
    .catchall {:try_start_3a6 .. :try_end_3ac} :catchall_462

    :try_start_3ac
    const-string v2, "Status for all known UIDs:"

    .line 4461
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4462
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4463
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move v3, v1

    :goto_3b9
    if-ge v3, v2, :cond_408

    .line 4465
    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    const-string v5, "UID="

    .line 4466
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4467
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 4469
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicyManager$UidState;

    if-nez v5, :cond_3d7

    const-string v5, " state={null}"

    .line 4471
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3e3

    :cond_3d7
    const-string v6, " state="

    .line 4473
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager$UidState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4477
    :goto_3e3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_3e6
    .catchall {:try_start_3ac .. :try_end_3e6} :catchall_468

    .line 4478
    :try_start_3e6
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez v4, :cond_3f6

    const-string v4, " blocked_state={null}"

    .line 4480
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3fe

    :cond_3f6
    const-string v6, " blocked_state="

    .line 4482
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4485
    :goto_3fe
    monitor-exit v5
    :try_end_3ff
    .catchall {:try_start_3e6 .. :try_end_3ff} :catchall_405

    .line 4486
    :try_start_3ff
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_402
    .catchall {:try_start_3ff .. :try_end_402} :catchall_468

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b9

    :catchall_405
    move-exception p0

    .line 4485
    :try_start_406
    monitor-exit v5
    :try_end_407
    .catchall {:try_start_406 .. :try_end_407} :catchall_405

    :try_start_407
    throw p0

    .line 4488
    :cond_408
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Admin restricted uids for metered data:"

    .line 4490
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4491
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4492
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_419
    if-ge v1, p2, :cond_447

    .line 4494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_419

    .line 4497
    :cond_447
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4499
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4500
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4502
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4503
    monitor-exit v0
    :try_end_458
    .catchall {:try_start_407 .. :try_end_458} :catchall_468

    .line 4504
    :try_start_458
    monitor-exit p3
    :try_end_459
    .catchall {:try_start_458 .. :try_end_459} :catchall_46b

    .line 4505
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4506
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :catchall_462
    move-exception p0

    .line 4459
    :try_start_463
    monitor-exit v2
    :try_end_464
    .catchall {:try_start_463 .. :try_end_464} :catchall_462

    :try_start_464
    throw p0
    :try_end_465
    .catchall {:try_start_464 .. :try_end_465} :catchall_468

    :catchall_465
    move-exception p0

    .line 4302
    :try_start_466
    monitor-exit p2
    :try_end_467
    .catchall {:try_start_466 .. :try_end_467} :catchall_465

    :try_start_467
    throw p0

    :catchall_468
    move-exception p0

    .line 4503
    monitor-exit v0
    :try_end_46a
    .catchall {:try_start_467 .. :try_end_46a} :catchall_468

    :try_start_46a
    throw p0

    :catchall_46b
    move-exception p0

    .line 4504
    monitor-exit p3
    :try_end_46d
    .catchall {:try_start_46a .. :try_end_46d} :catchall_46b

    throw p0
.end method

.method public final enableFirewallChainUL(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 6300
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 6301
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_11

    return-void

    .line 6305
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6307
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 6308
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_2a

    goto :goto_2a

    :catch_21
    move-exception p0

    const-string p1, "NetworkPolicy"

    const-string/jumbo p2, "problem enable firewall chain"

    .line 6310
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2a
    :goto_2a
    return-void
.end method

.method public final varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .registers 4

    .line 3485
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 3486
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requires one of the following permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 3487
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .registers 8

    .line 3829
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3835
    :try_start_9
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 3836
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_9d

    .line 3838
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_25

    .line 3842
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    :cond_25
    const/4 v0, 0x0

    if-eqz p2, :cond_3b

    const-string v1, "config_plans_package_override_string"

    .line 3849
    invoke-virtual {p2, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3850
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3851
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    return-void

    .line 3857
    :cond_3b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object p2

    .line 3858
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 3859
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    return-void

    .line 3864
    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3865
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 3866
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_71

    return-void

    .line 3871
    :cond_71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fw.sub_plan_owner."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3872
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_93

    .line 3873
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    return-void

    .line 3878
    :cond_93
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string p2, "NetworkPolicy"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_9d
    move-exception p0

    .line 3838
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3839
    throw p0
.end method

.method public final enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V
    .registers 11

    .line 3883
    array-length p0, p1

    if-nez p0, :cond_b

    const-string p0, "NetworkPolicy"

    const-string p1, "Received empty plans list. Clearing existing SubscriptionPlans."

    .line 3884
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3888
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object p0

    .line 3889
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3890
    invoke-static {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 3892
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 3894
    :goto_1f
    array-length v5, p1

    if-ge v3, v5, :cond_84

    .line 3895
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    .line 3896
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move v7, v2

    .line 3897
    :goto_2e
    array-length v8, v5

    if-ge v7, v8, :cond_6d

    .line 3899
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 3901
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 3902
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subscription plan contains duplicate network types."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3906
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid network type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3911
    :cond_6d
    array-length v6, v5

    array-length v7, p0

    if-ne v6, v7, :cond_73

    const/4 v4, 0x1

    goto :goto_79

    .line 3915
    :cond_73
    invoke-static {v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    move-result v5

    if-eqz v5, :cond_7c

    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 3916
    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Multiple subscription plans defined for a single network type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    if-eqz v4, :cond_87

    return-void

    .line 3924
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No generic subscription plan that applies to all network types."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .registers 31

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 1883
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v9, v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Landroid/net/NetworkPolicy;I)V

    .line 1884
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v10, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 1886
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    .line 1887
    invoke-virtual {v10, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1888
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1891
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v4, -0x5

    const v6, 0x1080078

    const/4 v13, 0x4

    const/high16 v14, 0xc000000

    const/4 v15, 0x0

    if-eq v0, v4, :cond_390

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_31f

    const v3, 0x10403e2

    const/16 v4, 0xa

    const-string v5, "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.BillingCycleSettingsActivity"

    packed-switch v0, :pswitch_data_440

    return-void

    .line 2019
    :pswitch_4c
    iget-object v0, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    if-eq v0, v11, :cond_61

    if-eq v0, v13, :cond_59

    if-eq v0, v4, :cond_61

    return-void

    :cond_59
    const v0, 0x10403ee

    .line 2025
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_68

    :cond_61
    const v0, 0x10403e1

    .line 2022
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2030
    :goto_68
    iget-wide v3, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v1, v3

    const v3, 0x10403e0

    new-array v4, v11, [Ljava/lang/Object;

    .line 2031
    iget-object v5, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2033
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz v16, :cond_78

    const/16 v13, 0x8

    .line 2032
    :cond_78
    invoke-static {v5, v1, v2, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v15

    .line 2031
    invoke-virtual {v12, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2035
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 2036
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2037
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 2039
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 2041
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 2042
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0xc000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    .line 2046
    :cond_b0
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v15, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    .line 1985
    :pswitch_bb
    iget-object v0, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    if-eq v0, v11, :cond_d0

    if-eq v0, v13, :cond_c8

    if-eq v0, v4, :cond_d0

    return-void

    :cond_c8
    const v0, 0x10403ef

    .line 1991
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d4

    .line 1988
    :cond_d0
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d4
    const v1, 0x10403df

    .line 1996
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1998
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, 0x1080a77

    .line 1999
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2002
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz v2, :cond_ef

    .line 2003
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntentSM(Ljava/lang/String;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_f5

    .line 2005
    :cond_ef
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 2008
    :goto_f5
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_112

    .line 2009
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0xc000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    .line 2013
    :cond_112
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v15, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    :pswitch_11d
    const v0, 0x10403eb

    .line 1896
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v4, v11, [Ljava/lang/Object;

    .line 1898
    iget-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1899
    invoke-static {v14, v1, v2, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v15

    const v13, 0x10403ea

    .line 1898
    invoke-virtual {v12, v13, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1901
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const v6, 0x104030e

    .line 1904
    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1905
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz v14, :cond_231

    .line 1906
    iget-object v4, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1907
    iget-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_UNLIMITED_DATA_PLAN_WARN_SWITCH:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v11, :cond_18c

    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1909
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_USAGE_PLAN_LIST:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v13, "unlimited"

    .line 1910
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    move v3, v11

    goto :goto_18d

    :cond_18c
    move v3, v15

    .line 1911
    :goto_18d
    iget-object v13, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_ONLY_SHOW_LIMIT_ALERT:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1ad

    move v11, v13

    goto :goto_1ae

    :cond_1ad
    move v11, v15

    :goto_1ae
    new-array v14, v13, [Ljava/lang/Object;

    .line 1913
    iget-object v13, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v5

    const/16 v5, 0x8

    .line 1914
    invoke-static {v13, v1, v2, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    const v1, 0x10403ea

    .line 1913
    invoke-virtual {v12, v1, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1915
    invoke-virtual {v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable(I)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 1917
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1918
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v13

    .line 1919
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, p1

    move-wide v3, v13

    move v11, v5

    move-wide/from16 v5, v19

    .line 1920
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytesForOffPeak(ILandroid/net/NetworkPolicy;JJ)J

    move-result-wide v0

    .line 1921
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403ec

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1922
    invoke-static {v4, v0, v1, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    .line 1921
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v5, "com.samsung.android.sm_cn/com.samsung.android.sm.datausage.ui.BillingCycle.OffPeakDataWarningActivity"

    goto :goto_233

    :cond_215
    if-eqz v3, :cond_227

    .line 1926
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10403ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_224
    move-object/from16 v5, v19

    goto :goto_233

    :cond_227
    if-eqz v11, :cond_232

    const v2, 0x10403e2

    .line 1929
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_224

    :cond_231
    move-object v1, v4

    :cond_232
    move-object v5, v6

    .line 1935
    :goto_233
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1936
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1935
    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1937
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1941
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz v2, :cond_255

    .line 1942
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntentSM(Ljava/lang/String;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_25b

    .line 1944
    :cond_255
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1947
    :goto_25b
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_277

    .line 1948
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    const/high16 v22, 0xc000000

    const/16 v23, 0x0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v19, v3

    move-object/from16 v21, v2

    invoke-static/range {v19 .. v24}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_282

    .line 1952
    :cond_277
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1956
    :goto_282
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "udsState"

    invoke-static {v2, v3, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_294

    const/4 v2, 0x1

    goto :goto_295

    :cond_294
    move v2, v15

    .line 1957
    :goto_295
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UDS2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_306

    if-nez v2, :cond_306

    const-string v2, "NetworkPolicy"

    const-string v3, "Ultra data saving mode enabled"

    .line 1958
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.uds"

    .line 1960
    invoke-virtual {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x1040e21

    const v6, 0x1080c03

    if-nez v4, :cond_2e1

    const-string v4, "Ultra data saving mode didnt install then go to Galaxy app"

    .line 1961
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->jumpToSamsungApps(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1963
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1964
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v6, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_306

    .line 1966
    :cond_2e1
    invoke-virtual {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_306

    const-string v3, "Ultra data saving mode installed then go to Devicecare"

    .line 1967
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntentUDS(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1969
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1970
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v6, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1976
    :cond_306
    :goto_306
    iget-boolean v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    if-nez v2, :cond_409

    iget-boolean v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v2, :cond_409

    .line 1977
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1978
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    .line 1979
    iput-boolean v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    goto/16 :goto_409

    :cond_31f
    move v2, v11

    const v0, 0x10403e5

    .line 2052
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v3, :cond_33f

    const v1, 0x10403e3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2054
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2055
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v15

    .line 2054
    invoke-virtual {v12, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_346

    :cond_33f
    const v1, 0x10403e4

    .line 2057
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2060
    :goto_346
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2062
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2063
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2062
    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2064
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2067
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 2069
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_383

    .line 2070
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v3

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    .line 2074
    :cond_383
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_409

    :cond_390
    const v0, 0x10403eb

    .line 2081
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x10403e8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v11, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2083
    invoke-static {v11, v1, v2, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    .line 2082
    invoke-virtual {v12, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x10403e9

    .line 2084
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2085
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2087
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeTetheringWarningIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2088
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2091
    iget-object v2, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 2093
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_3fe

    .line 2094
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    const/high16 v20, 0xc000000

    const/16 v21, 0x0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v17, v3

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_409

    .line 2098
    :cond_3fe
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v15, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2109
    :cond_409
    :goto_409
    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2110
    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2111
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2112
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2114
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 2115
    invoke-virtual {v9}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2114
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2116
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_440
    .packed-switch 0x22
        :pswitch_11d
        :pswitch_bb
        :pswitch_4c
    .end packed-switch
.end method

.method public final ensureActiveCarrierPolicyAL()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2785
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveCarrierPolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 2788
    :goto_11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 2789
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2790
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2792
    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2d
    return-void
.end method

.method public final ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2807
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2808
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2809
    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 2810
    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2811
    invoke-virtual {v0, v2}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2812
    invoke-virtual {v0, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2813
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_26
    const-string v4, "NetworkPolicy"

    if-ltz v3, :cond_60

    .line 2814
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2815
    invoke-virtual {v5, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2816
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p0, :cond_5c

    .line 2817
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Found template "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " which matches subscriber "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2817
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return v1

    :cond_5d
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 2824
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No policy for subscriber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    invoke-static {p2}, Lcom/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; generating default policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2824
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultCarrierPolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object p1

    .line 2828
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    return v2
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 11

    .line 6498
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6500
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 6505
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 6507
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v1

    :goto_28
    const/4 v3, 0x1

    if-eqz p1, :cond_40

    .line 6512
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 6510
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    .line 6511
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    .line 6512
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 6513
    :cond_40
    array-length p1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_43
    if-ge v5, p1, :cond_63

    aget-object v6, v0, v5

    .line 6517
    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    :cond_57
    const-wide/16 v7, -0x1

    .line 6518
    iput-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 6519
    iput-boolean v4, v6, Landroid/net/NetworkPolicy;->inferred:Z

    .line 6520
    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 6523
    :cond_63
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 6526
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 6528
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_control_apps"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 6530
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object p1

    array-length v0, p1

    move v1, v4

    :goto_7a
    if-ge v1, v0, :cond_84

    aget v2, p1, v1

    .line 6531
    invoke-virtual {p0, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 6534
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->removeTagFileInNetstats()V

    return-void
.end method

.method public final findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .registers 16

    .line 1803
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->isAnyCallbackReceived()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 1805
    :cond_a
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;

    move-result-object p1

    .line 1806
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    move p5, p2

    move-wide v2, p3

    move-wide v4, v2

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStats$Bucket;

    .line 1807
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_1d

    .line 1811
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result p5

    move-wide v2, v6

    goto :goto_1d

    :cond_3d
    cmp-long p1, v2, p3

    if-lez p1, :cond_68

    const-wide/16 p3, 0x2

    .line 1817
    div-long/2addr v4, p3

    cmp-long p1, v2, v4

    if-lez p1, :cond_68

    .line 1818
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 1819
    array-length p3, p1

    const/4 p4, 0x1

    if-ne p3, p4, :cond_68

    .line 1821
    :try_start_58
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    aget-object p1, p1, p2

    const p2, 0x4c2200

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    :cond_68
    return-object v1
.end method

.method public final findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1844
    :goto_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 1845
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1846
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1847
    new-instance v4, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v4}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 1848
    invoke-virtual {v4, v0}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v4

    .line 1849
    invoke-virtual {v4, v3}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 1850
    invoke-virtual {v3, v4}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 1851
    invoke-virtual {v3, v4}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 1852
    invoke-virtual {v3, v2}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v3

    .line 1853
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v2

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_40
    const/4 p0, -0x1

    return p0
.end method

.method public final forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 10

    const-wide/32 v0, 0x200000

    .line 5133
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forEachUid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    :try_start_1d
    const-string/jumbo p1, "list-users"

    .line 5140
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_6a

    .line 5142
    :try_start_23
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_65

    .line 5144
    :try_start_29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo p1, "iterate-uids"

    .line 5146
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_6a

    .line 5148
    :try_start_32
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 5150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3f
    if-ge v3, v2, :cond_59

    .line 5152
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 5153
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 5154
    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v6, v5, v4, p2}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;)V

    invoke-virtual {p1, v6, v4}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_60

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 5168
    :cond_59
    :try_start_59
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6a

    .line 5171
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_60
    move-exception p0

    .line 5168
    :try_start_61
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5169
    throw p0

    :catchall_65
    move-exception p0

    .line 5144
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5145
    throw p0
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    .line 5171
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5172
    throw p0
.end method

.method public getAllFirewallRuleMobileData()[I
    .registers 7

    .line 7634
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7635
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "return WifiOnlyUidList"

    .line 7636
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 7638
    :goto_11
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 7639
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 7640
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_43

    .line 7643
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "NetworkPolicy"

    .line 7644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifiOnlyUidList uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 7647
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_59

    .line 7648
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0

    :catchall_59
    move-exception p0

    .line 7647
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public getAppIdleWhitelist()[I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5242
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5245
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 5246
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_22

    .line 5248
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 5250
    :cond_22
    monitor-exit v0

    return-object v2

    :catchall_24
    move-exception p0

    .line 5251
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final getBackgroundDataRestrictList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7653
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "user_restrict_background_uidlist"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_38

    const-string v1, ";"

    .line 7655
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 7656
    :goto_1b
    array-length v2, p0

    if-ge v1, v2, :cond_38

    .line 7657
    aget-object v2, p0, v1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 7658
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_38
    return-object v0
.end method

.method public final getBlockedReasons(I)I
    .registers 3

    .line 6849
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6850
    :try_start_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_11

    .line 6853
    :cond_f
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 6854
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return p2

    :cond_3
    const-string/jumbo p0, "monthly_data_cycle_day_int"

    .line 2267
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_e

    return p2

    .line 2272
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 2273
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    if-lt p0, v1, :cond_21

    .line 2274
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    if-le p0, p1, :cond_20

    goto :goto_21

    :cond_20
    return p0

    .line 2275
    :cond_21
    :goto_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final getEffectiveBlockedReasons(I)I
    .registers 3

    .line 6840
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6841
    :try_start_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_11

    .line 6844
    :cond_f
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 6845
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getFirewallRuleMobileData(I)Z
    .registers 7

    .line 7705
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v1, "NetworkPolicy"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7706
    sget-object p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter p0

    .line 7707
    :try_start_c
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const-string v2, "NetworkPolicy"

    .line 7708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirewallRuleMobileData UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " policy:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_36

    move v1, p1

    .line 7709
    :cond_36
    monitor-exit p0

    return v1

    :catchall_38
    move-exception p1

    .line 7710
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public getFirewallRuleWifi(I)Z
    .registers 7

    .line 7715
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v1, "NetworkPolicy"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7716
    sget-object p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter p0

    .line 7717
    :try_start_c
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const-string v2, "NetworkPolicy"

    .line 7718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirewallRuleWifi UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " policy:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_36

    const/4 v1, 0x1

    .line 7719
    :cond_36
    monitor-exit p0

    return v1

    :catchall_38
    move-exception p1

    .line 7720
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public getHandlerForTesting()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2218
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-wide p2

    :cond_3
    const-string v0, "data_limit_threshold_bytes_long"

    .line 2332
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-nez p1, :cond_12

    return-wide v2

    :cond_12
    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide p0

    return-wide p0

    :cond_1b
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_38

    .line 2339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    :cond_38
    return-wide v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 3

    .line 4260
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4261
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 4263
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 6

    .line 3535
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3537
    :try_start_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_2e

    .line 3541
    :catch_14
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2e

    new-array p0, v0, [Landroid/net/NetworkPolicy;

    return-object p0

    .line 3549
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3550
    :try_start_31
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3551
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    :goto_39
    if-ge v0, v1, :cond_48

    .line 3553
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 3555
    :cond_48
    monitor-exit p1

    return-object v2

    :catchall_4a
    move-exception p0

    .line 3556
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_31 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final getPlatformDefaultLimitBytes()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPlatformDefaultWarningBytes()J
    .registers 5

    .line 2833
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00dc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_15

    return-wide v2

    .line 2838
    :cond_15
    sget-object p0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {p0, v0, v1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 6766
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 6767
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 6768
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 6769
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v3

    if-eqz v3, :cond_1f

    return-object v2

    .line 6774
    :cond_1f
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 6775
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v4}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_36

    return-object v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 3775
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3778
    :try_start_c
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3779
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getRestrictBackgroundByCaller()I
    .registers 4

    .line 3740
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result p0

    return p0
.end method

.method public final getRestrictBackgroundInLowerPowerMode()Z
    .registers 4

    .line 7319
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v1, "ro.csc.country_code"

    .line 7321
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "China"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NetworkPolicy"

    if-eqz v1, :cond_27

    if-nez v0, :cond_27

    const-string p0, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    .line 7322
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 7326
    :cond_27
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object p0

    iget-boolean p0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 7328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRestrictBackgroundInLowerPowerMode: enabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getRestrictBackgroundStatus(I)I
    .registers 3

    .line 3746
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 3747
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundStatusInternal(I)I

    move-result p0

    return p0
.end method

.method public final getRestrictBackgroundStatusInternal(I)I
    .registers 6

    .line 3751
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3753
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2c

    .line 3756
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_27

    .line 3758
    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v3, v2, :cond_14

    .line 3762
    monitor-exit v0

    return v1

    .line 3764
    :cond_14
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v3, :cond_1a

    .line 3765
    monitor-exit v0

    return v2

    .line 3767
    :cond_1a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_25

    const/4 v1, 0x2

    .line 3769
    :cond_25
    monitor-exit v0

    return v1

    :catchall_27
    move-exception p0

    .line 3758
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3759
    throw p0

    :catchall_2c
    move-exception p0

    .line 3770
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final getSubIdLocked(Landroid/net/Network;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 6761
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .registers 3

    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    .line 3949
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3950
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3951
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result p1

    .line 3952
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 3953
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 18

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3973
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    const-string v3, "fw.fake_plan"

    .line 3975
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3976
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_428

    .line 3977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "month_hard"

    .line 3978
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x5

    if-eqz v1, :cond_df

    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 3980
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile"

    .line 3981
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3982
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v3, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3984
    invoke-virtual {v2, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 3985
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    const-wide/16 v11, 0x24

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3984
    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3986
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3979
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 3988
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile Happy"

    .line 3989
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3990
    invoke-virtual {v1, v4, v5, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3992
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 3993
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 3992
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 3994
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3987
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 3996
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile, Charged after limit"

    .line 3997
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 3998
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4000
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4001
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4000
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4002
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3995
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41b

    :cond_df
    const-string/jumbo v1, "month_soft"

    .line 4003
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_1a3

    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 4005
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile is the carriers name who this plan belongs to"

    .line 4006
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    .line 4007
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4009
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4011
    invoke-virtual {v3, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    .line 4012
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 4011
    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4013
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4004
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 4015
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile, Throttled after limit"

    .line 4016
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4017
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4019
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    .line 4020
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 4019
    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4021
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4014
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 4023
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile, No data connection after limit"

    .line 4024
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4025
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4027
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4028
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4027
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4029
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4022
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41b

    :cond_1a3
    const-string/jumbo v1, "month_over"

    .line 4031
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_261

    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 4033
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile is the carriers name who this plan belongs to"

    .line 4034
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4035
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v4, 0x6

    .line 4037
    invoke-virtual {v3, v4, v5}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    .line 4038
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 4037
    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4039
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4032
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 4041
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile, Throttled after limit"

    .line 4042
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4043
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4045
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    .line 4046
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 4045
    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4047
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4040
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2017-03-14T00:00:00.000Z"

    .line 4049
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile, No data connection after limit"

    .line 4050
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4051
    invoke-virtual {v3, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 4053
    invoke-virtual {v2, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4054
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4053
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4055
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4048
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41b

    :cond_261
    const-string/jumbo v1, "month_none"

    .line 4057
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_283

    const-string v1, "2007-03-14T00:00:00.000Z"

    .line 4059
    invoke-static {v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile"

    .line 4060
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4061
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4058
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41b

    :cond_283
    const-string/jumbo v1, "prepaid"

    .line 4062
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x200

    const-wide/16 v4, 0x3

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0x14

    if-eqz v1, :cond_2dd

    .line 4064
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 4065
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 4064
    invoke-static {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile"

    .line 4066
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 4067
    invoke-virtual {v3, v13, v14}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 4069
    invoke-virtual {v2, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4070
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4069
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4071
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4063
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41b

    :cond_2dd
    const-string/jumbo v1, "prepaid_crazy"

    .line 4072
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3cc

    .line 4074
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 4075
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    .line 4074
    invoke-static {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v3, "G-Mobile Anytime"

    .line 4076
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 4077
    invoke-virtual {v3, v13, v14}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 4079
    invoke-virtual {v2, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4080
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4079
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4081
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4073
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4083
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 4084
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 4083
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile Nickel Nights"

    .line 4085
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "5\u00a2/GB between 1-5AM"

    .line 4086
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x5

    .line 4087
    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0xf

    .line 4089
    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4090
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    const-wide/16 v11, 0x1e

    invoke-virtual {v4, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4089
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4091
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4082
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4093
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 4094
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 4093
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile Bonus 3G"

    .line 4095
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "Unlimited 3G data"

    .line 4096
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x1

    .line 4097
    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v5, 0x12c

    .line 4099
    invoke-virtual {v2, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v5

    .line 4100
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 4099
    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4101
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4092
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41b

    :cond_3cc
    const-string/jumbo v1, "unlimited"

    .line 4102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41b

    .line 4104
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 4105
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 4104
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-string v2, "G-Mobile Awesome"

    .line 4106
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    .line 4107
    invoke-virtual {v1, v2, v3, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v6, 0x32

    .line 4109
    invoke-virtual {v2, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    .line 4110
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 4109
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v1

    .line 4111
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 4103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4113
    :cond_41b
    :goto_41b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    return-object v0

    .line 4116
    :cond_428
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4120
    :try_start_42b
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4121
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46b

    .line 4122
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_46b

    .line 4123
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_44a

    goto :goto_46b

    :cond_44a
    const-string v0, "NetworkPolicy"

    .line 4126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not returning plans because caller "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4128
    monitor-exit v3

    return-object v0

    .line 4124
    :cond_46b
    :goto_46b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v3

    return-object v0

    :catchall_475
    move-exception v0

    .line 4130
    monitor-exit v3
    :try_end_477
    .catchall {:try_start_42b .. :try_end_477} :catchall_475

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .registers 4

    .line 4199
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 4203
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4204
    :try_start_b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 4205
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p0

    .line 4200
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final getTetheringWarningBytes(Ljava/lang/String;)J
    .registers 2

    .line 7846
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7847
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-wide/16 p0, -0x1

    goto :goto_17

    :cond_13
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_17
    return-wide p0
.end method

.method public final getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6351
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->isAnyCallbackReceived()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 6352
    :cond_b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTotalBytesForOffPeak(ILandroid/net/NetworkPolicy;JJ)J
    .registers 33

    move-object/from16 v9, p0

    move/from16 v0, p1

    .line 7388
    iget-object v1, v9, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_START_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x4ef6d80

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 7390
    iget-object v1, v9, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->KEY_OFF_PEAK_DATA_END_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x1808580

    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 7392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7394
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/32 v14, 0x5265c00

    rem-long/2addr v2, v14

    sub-long v7, v0, v2

    const-wide/16 v0, 0x0

    move-wide/from16 v16, p3

    move-wide v5, v0

    :goto_59
    cmp-long v0, v16, v7

    if-gtz v0, :cond_8c

    .line 7396
    iget-object v3, v9, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object/from16 v4, p2

    iget-object v1, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    add-long v20, v10, v16

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-wide v1, v10

    move-object/from16 v18, v3

    move-wide v3, v12

    move-wide v14, v5

    move-wide v5, v7

    move-wide/from16 v24, v10

    move-wide v9, v7

    move-wide/from16 v7, p5

    .line 7397
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->adjustOffPeakEndTime(JJJJ)J

    move-result-wide v0

    add-long v22, v16, v0

    .line 7396
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    add-long v5, v14, v0

    const-wide/32 v0, 0x5265c00

    add-long v16, v16, v0

    move-wide v14, v0

    move-wide v7, v9

    move-wide/from16 v10, v24

    move-object/from16 v9, p0

    goto :goto_59

    :cond_8c
    move-wide v14, v5

    move-wide v9, v7

    .line 7399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getTotalBytesForOffPeak() for offpeak todayStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalBytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v14
.end method

.method public final getUidBytes(Landroid/net/NetworkTemplate;JJII)J
    .registers 19

    move-object v0, p0

    .line 6359
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->isAnyCallbackReceived()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_c

    return-wide v2

    .line 6362
    :cond_c
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeps:Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;

    move-result-object v0

    .line 6363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStats$Bucket;

    .line 6364
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v4

    move/from16 v5, p6

    if-ne v4, v5, :cond_40

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    move-result v4

    move/from16 v6, p7

    if-ne v4, v6, :cond_19

    .line 6365
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v9

    add-long/2addr v7, v9

    add-long/2addr v2, v7

    goto :goto_19

    :cond_40
    move/from16 v6, p7

    goto :goto_19

    :cond_43
    return-wide v2
.end method

.method public final getUidForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 6752
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0x402000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return p0

    :catch_e
    const/4 p0, -0x1

    return p0
.end method

.method public getUidPolicy(I)I
    .registers 5

    .line 3405
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3408
    :try_start_c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 3409
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getUidsWithPolicy(I)[I
    .registers 7

    .line 3414
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 3417
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3418
    :goto_f
    :try_start_f
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 3419
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3420
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez p1, :cond_27

    if-eqz v4, :cond_2a

    :cond_27
    and-int/2addr v4, p1

    if-eqz v4, :cond_2e

    .line 3423
    :cond_2a
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3426
    :cond_31
    monitor-exit v2

    return-object v1

    :catchall_33
    move-exception p0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-wide p2

    :cond_3
    const-string v0, "data_warning_threshold_bytes_long"

    .line 2299
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-nez p1, :cond_12

    return-wide v2

    :cond_12
    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide p0

    return-wide p0

    :cond_1b
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_38

    .line 2306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    :cond_38
    return-wide v0
.end method

.method public final handleBlockedReasonsChanged(III)V
    .registers 5

    .line 5660
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 5661
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->postBlockedReasonsChangedMsg(III)V

    return-void
.end method

.method public final handleCheckFireWallPermission(Ljava/lang/String;I)V
    .registers 9

    .line 7724
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCheckedAppSet:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 7727
    :cond_18
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCheckedAppSet:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7728
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7729
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 7730
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_de

    if-eqz v1, :cond_de

    const-string v2, "android"

    .line 7731
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto/16 :goto_de

    :cond_4a
    const/4 v2, 0x1

    .line 7736
    :try_start_4b
    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_4f} :catch_da

    .line 7741
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_d9

    if-nez p1, :cond_59

    goto/16 :goto_d9

    .line 7745
    :cond_59
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7747
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 7748
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_82

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7749
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    move-result v4

    if-nez v4, :cond_82

    const p1, 0x1040b9f

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v5

    .line 7750
    invoke-virtual {v3, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ca

    .line 7751
    :cond_82
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v2, :cond_c8

    .line 7752
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleWifi(I)Z

    move-result p2

    if-eqz p2, :cond_91

    return-void

    .line 7755
    :cond_91
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 7756
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    array-length p2, p1

    move v1, v5

    :goto_9f
    if-ge v1, p2, :cond_b9

    aget-object v4, p1, v1

    .line 7757
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_b6

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 7758
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_b6

    return-void

    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_b9
    const p1, 0x1040ba0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v5

    aput-object v0, p2, v2

    .line 7763
    invoke-virtual {v3, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ca

    :cond_c8
    const-string p1, ""

    .line 7765
    :goto_ca
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d9

    .line 7766
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_d9
    :goto_d9
    return-void

    :catch_da
    move-exception p0

    .line 7738
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_de
    :goto_de
    return-void
.end method

.method public final handleDeviceIdleModeChangedUL(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    .line 5044
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5046
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "updateRulesForRestrictPower"

    .line 5048
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    goto :goto_1d

    .line 5058
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleDeviceIdleModeDisabledUL()V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    .line 5061
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5062
    throw p0
.end method

.method public final handleDeviceIdleModeDisabledUL()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-string/jumbo v0, "handleDeviceIdleModeDisabledUL"

    const-wide/32 v1, 0x200000

    .line 5067
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5069
    :try_start_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5070
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_9d

    .line 5071
    :try_start_11
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_84

    .line 5073
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 5074
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 5075
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_2f

    goto :goto_81

    :cond_2f
    and-int/lit8 v8, v8, -0x3

    .line 5078
    iput v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5079
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5080
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 5081
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v9, :cond_63

    const-string v9, "NetworkPolicy"

    .line 5082
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleDeviceIdleModeDisabled("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "); newUidBlockedState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", oldEffectiveBlockedReasons="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    :cond_63
    iget v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-eq v8, v9, :cond_81

    .line 5087
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 5088
    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 5089
    iget v8, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5090
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v8

    iput v8, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5091
    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5093
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v7, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-virtual {v8, v6, v7}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 5097
    :cond_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_11 .. :try_end_85} :catchall_9a

    .line 5098
    :try_start_85
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_96

    .line 5099
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5100
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_96
    .catchall {:try_start_85 .. :try_end_96} :catchall_9d

    .line 5103
    :cond_96
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_9a
    move-exception p0

    .line 5097
    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw p0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p0

    .line 5103
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5104
    throw p0
.end method

.method public handleNetworkPoliciesUpdateAL(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2406
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2408
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2409
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    return-void
.end method

.method public final handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6796
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_20

    .line 6800
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 6801
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    goto :goto_b

    :cond_1f
    return-void

    .line 6805
    :cond_20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6806
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 6807
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    goto :goto_24

    .line 6810
    :cond_42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_46
    :goto_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6811
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 6812
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    goto :goto_46

    :cond_64
    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 4513
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4514
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 4513
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleUidChanged(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "onUidStateChanged"

    const-wide/32 v7, 0x200000

    .line 6033
    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6040
    :try_start_d
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_4f

    .line 6041
    :try_start_10
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_4c

    .line 6042
    :try_start_13
    iget v6, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->uid:I

    .line 6043
    iget v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 6044
    iget-wide v13, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    .line 6045
    iget v5, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    const/4 v3, 0x0

    .line 6046
    iput-boolean v3, v1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 6047
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_49

    .line 6051
    :try_start_1f
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    move v11, v6

    move v12, v4

    move-wide v2, v13

    move v15, v5

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJI)V

    move-object/from16 v1, p0

    move-wide v10, v2

    move v2, v6

    move v3, v4

    move v12, v4

    move v13, v5

    move-wide v4, v10

    move v14, v6

    move v6, v13

    .line 6053
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(IIJI)Z

    move-result v1

    .line 6055
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v14, v10, v11}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 6056
    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_4c

    if-eqz v1, :cond_45

    .line 6060
    :try_start_3e
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    invoke-virtual {v0, v14, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4f

    .line 6063
    :cond_45
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_49
    move-exception v0

    .line 6047
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0

    :catchall_4c
    move-exception v0

    .line 6056
    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    .line 6063
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 6064
    throw v0
.end method

.method public handleUidGone(I)V
    .registers 6

    const-string/jumbo v0, "onUidGone"

    const-wide/32 v1, 0x200000

    .line 6068
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6071
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    .line 6072
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 6073
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1b

    if-eqz v3, :cond_17

    const/4 v0, 0x0

    .line 6077
    :try_start_14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    .line 6080
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1b
    move-exception p0

    .line 6073
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 6080
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6081
    throw p0
.end method

.method public final hasInternetPermissionUL(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 5293
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    .line 5298
    :cond_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16

    move v1, v0

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 5300
    :goto_17
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    return v0
.end method

.method public final hasRestrictedModeAccess(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 4751
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.NETWORK_STACK"

    .line 4753
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    .line 4754
    invoke-interface {p0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_20

    if-nez p0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :catch_20
    :cond_20
    return v0
.end method

.method public final initOffPeakContentObserver()V
    .registers 3

    .line 7427
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public final initService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 19

    move-object/from16 v1, p0

    const-string/jumbo v0, "systemReady"

    const-wide/32 v2, 0x200000

    .line 1074
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1075
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    const/4 v0, -0x2

    .line 1078
    :try_start_14
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "NetworkPolicy"

    const-string v1, "bandwidth controls disabled, unable to enforce policy"

    .line 1080
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_2ce

    .line 1309
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1086
    :cond_2b
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->buildFirewall()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_2ce

    goto :goto_39

    :catch_31
    move-exception v0

    :try_start_32
    const-string v5, "NetworkPolicy"

    const-string v6, "buildFirewall exception"

    .line 1088
    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    :goto_39
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz v0, :cond_40

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initOffPeakContentObserver()V

    .line 1098
    :cond_40
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1099
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1100
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1103
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-virtual {v0, v5}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 1106
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_68
    .catchall {:try_start_32 .. :try_end_68} :catchall_2ce

    .line 1107
    :try_start_68
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_2cb

    .line 1108
    :try_start_6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 1109
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1110
    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1131
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 1134
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {v0, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver$RestrictedModeListener;)V

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedModeObserver:Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    .line 1141
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->isRestrictedModeEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    const/4 v0, 0x1

    .line 1143
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 1151
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 1152
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 1153
    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v7, :cond_c0

    .line 1154
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v7, :cond_c0

    .line 1155
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 1157
    :cond_c0
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL()Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1176
    :cond_d3
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    const-string/jumbo v8, "init_service"

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    const/4 v7, 0x0

    .line 1177
    invoke-virtual {v1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1179
    monitor-exit v6
    :try_end_e3
    .catchall {:try_start_6b .. :try_end_e3} :catchall_2c8

    .line 1180
    :try_start_e3
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_2cb

    .line 1183
    :try_start_e4
    sget-object v5, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_2ce

    .line 1184
    :try_start_e7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readFirewallPolicyAL()V

    .line 1185
    monitor-exit v5
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_2c5

    .line 1192
    :try_start_eb
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v8, 0x23

    const/4 v9, 0x5

    const-string v10, "android"

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/app/ActivityManagerInternal;->registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1194
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_fe} :catch_fe
    .catchall {:try_start_eb .. :try_end_fe} :catchall_2ce

    .line 1200
    :catch_fe
    :try_start_fe
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1202
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1205
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1206
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.NETWORK_STACK"

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v9, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1209
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 1210
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "package"

    .line 1211
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1212
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1215
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.UID_REMOVED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v8, v10, v9}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1219
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.USER_ADDED"

    .line 1220
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.USER_REMOVED"

    .line 1221
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1225
    new-instance v5, Landroid/os/HandlerExecutor;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1226
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v6, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v12

    const-wide/16 v13, 0x0

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 1228
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v12

    const-wide/16 v13, 0x0

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 1232
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v8, v9, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1234
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v8, v9, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1238
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1240
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1243
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1245
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1248
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    new-instance v6, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v6}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1249
    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1248
    invoke-virtual {v5, v6, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1251
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    invoke-direct {v6, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener-IA;)V

    invoke-interface {v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1252
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1f5
    .catchall {:try_start_fe .. :try_end_1f5} :catchall_2ce

    .line 1253
    :try_start_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 1254
    monitor-exit v5
    :try_end_1f9
    .catchall {:try_start_1f5 .. :try_end_1f9} :catchall_2c2

    .line 1257
    :try_start_1f9
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    new-instance v6, Landroid/os/HandlerExecutor;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v5, v6, v8}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1267
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1269
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.os.action.CHARGING"

    .line 1270
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.os.action.DISCHARGING"

    .line 1271
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1272
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1276
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1277
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListenerVideoCall:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x800

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-wide/16 v5, 0x0

    .line 1281
    iput-wide v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    move-result v5

    if-eqz v5, :cond_2bb

    .line 1286
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tethering_data_warning_sim_slot_0"

    .line 1287
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Landroid/database/ContentObserver;

    .line 1286
    invoke-virtual {v5, v6, v0, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1290
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    .line 1291
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Landroid/database/ContentObserver;

    .line 1290
    invoke-virtual {v5, v6, v0, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1294
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1296
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v5, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1298
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "tethering_data_warning_sim_slot_0"

    invoke-virtual {v1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    invoke-virtual {v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-wide/16 v5, -0x1

    .line 1304
    iput-wide v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J
    :try_end_2bb
    .catchall {:try_start_1f9 .. :try_end_2bb} :catchall_2ce

    .line 1309
    :cond_2bb
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2c2
    move-exception v0

    .line 1254
    :try_start_2c3
    monitor-exit v5
    :try_end_2c4
    .catchall {:try_start_2c3 .. :try_end_2c4} :catchall_2c2

    :try_start_2c4
    throw v0
    :try_end_2c5
    .catchall {:try_start_2c4 .. :try_end_2c5} :catchall_2ce

    :catchall_2c5
    move-exception v0

    .line 1185
    :try_start_2c6
    monitor-exit v5
    :try_end_2c7
    .catchall {:try_start_2c6 .. :try_end_2c7} :catchall_2c5

    :try_start_2c7
    throw v0
    :try_end_2c8
    .catchall {:try_start_2c7 .. :try_end_2c8} :catchall_2ce

    :catchall_2c8
    move-exception v0

    .line 1179
    :try_start_2c9
    monitor-exit v6
    :try_end_2ca
    .catchall {:try_start_2c9 .. :try_end_2ca} :catchall_2c8

    :try_start_2ca
    throw v0

    :catchall_2cb
    move-exception v0

    .line 1180
    monitor-exit v5
    :try_end_2cd
    .catchall {:try_start_2ca .. :try_end_2cd} :catchall_2cb

    :try_start_2cd
    throw v0
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_2ce

    :catchall_2ce
    move-exception v0

    .line 1309
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1311
    throw v0
.end method

.method public final isAllowlistedFromLowPowerStandbyUL(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4910
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isBandwidthControlEnabled()Z
    .registers 3

    .line 6374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6376
    :try_start_4
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 6381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6382
    throw p0

    :catch_13
    const/4 p0, 0x0

    .line 6381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final isKorOperator()Z
    .registers 13

    const-string/jumbo p0, "ro.csc.sales_code"

    const-string v0, "NONE"

    .line 7839
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SKC"

    const-string v1, "KTC"

    const-string v2, "LUC"

    const-string v3, "KOO"

    const-string v4, "SKT"

    const-string v5, "SKO"

    const-string v6, "KTT"

    const-string v7, "KTO"

    const-string v8, "LGT"

    const-string v9, "LUO"

    const-string v10, "K06"

    const-string v11, "K01"

    .line 7840
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7842
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final isNaGsm()Z
    .registers 2

    const/4 v0, 0x0

    .line 7188
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isNaGsm(Ljava/lang/String;)Z
    .registers 5

    .line 7193
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    .line 7194
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p1, :cond_42

    const-string v2, "ALL"

    .line 7195
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_42

    :cond_19
    const-string v2, "ATT"

    .line 7199
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "TMO"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "MTR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "ASR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_39
    if-eqz p0, :cond_4d

    .line 7200
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return v1

    :cond_42
    :goto_42
    if-eqz p0, :cond_4d

    const-string p1, "GSM-USA"

    .line 7196
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return v1

    :cond_4d
    return v0
.end method

.method public final isOffPeakEnable(I)Z
    .registers 4

    if-gez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 7419
    :cond_4
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 7420
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkOffPeakEnable(I)V

    .line 7422
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current subid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isoffpeakEnable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7423
    sget-object p0, Lcom/android/server/net/NetworkPolicyManagerService;->isOffPeakEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .registers 3

    .line 2132
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 2137
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    const-string p0, "NetworkPolicy"

    const-string p1, "Package isnt existed"

    .line 2139
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isRestrictedByAdminUL(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 6819
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 6820
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6819
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1a

    .line 6821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isRestrictedModeEnabled()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4653
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4654
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4655
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .registers 4

    .line 2146
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2149
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2150
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1b

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1b

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_17} :catch_1e

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_36

    :cond_1b
    const/4 p0, 0x1

    move v0, p0

    goto :goto_36

    :catch_1e
    move-exception p0

    .line 2155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSystemApp NameNotFoundException : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method

.method public isUidForeground(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4523
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4524
    :try_start_3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 4525
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final isUidForegroundOnRestrictBackgroundUL(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4530
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4531
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p0

    return p0
.end method

.method public final isUidForegroundOnRestrictPowerUL(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4536
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4537
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p0

    return p0
.end method

.method public isUidIdle(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    .line 5257
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result p0

    return p0
.end method

.method public final isUidIdle(II)Z
    .registers 9

    .line 5261
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_f

    .line 5262
    :try_start_7
    invoke-static {p2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 5264
    monitor-exit v0

    return v2

    .line 5266
    :cond_f
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 5268
    monitor-exit v0

    return v2

    .line 5270
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3e

    .line 5272
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 5273
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p2, :cond_3c

    .line 5276
    array-length v1, p2

    move v3, v2

    :goto_2c
    if-ge v3, v1, :cond_3c

    aget-object v4, p2, v3

    .line 5277
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v4, p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3c
    const/4 p0, 0x1

    return p0

    :catchall_3e
    move-exception p0

    .line 5270
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .registers 11

    .line 6539
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 6541
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6543
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6544
    :try_start_12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    move v5, v4

    goto :goto_21

    .line 6546
    :cond_1f
    iget v5, v3, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    :goto_21
    if-nez p2, :cond_27

    const p2, 0xffff

    and-int/2addr v5, p2

    .line 6552
    :cond_27
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_5d

    .line 6553
    :try_start_2a
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3b

    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 6554
    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3b

    and-int/lit16 v5, v5, 0x100

    .line 6558
    :cond_3b
    iget v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNetworkType:I

    if-nez v6, :cond_4a

    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 6559
    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_4a

    and-int/lit16 v5, v5, 0x200

    .line 6563
    :cond_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_5a

    .line 6565
    :try_start_4b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(ILcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 6566
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5d

    .line 6568
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    if-eqz v5, :cond_59

    move v4, v7

    :cond_59
    return v4

    :catchall_5a
    move-exception p0

    .line 6563
    :try_start_5b
    monitor-exit p2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0

    :catchall_5d
    move-exception p0

    .line 6566
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .registers 5

    .line 6575
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6576
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6577
    :try_start_c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    const/4 p1, 0x0

    if-nez p0, :cond_19

    move p0, p1

    goto :goto_1b

    .line 6579
    :cond_19
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    :goto_1b
    const/high16 v1, -0x10000

    and-int/2addr p0, v1

    if-eqz p0, :cond_21

    const/4 p1, 0x1

    .line 6581
    :cond_21
    monitor-exit v0

    return p1

    :catchall_23
    move-exception p0

    .line 6582
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final isUidTop(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4542
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager$UidState;

    .line 4543
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p0

    return p0
.end method

.method public final isUidValidForAllowlistRulesUL(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5206
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isUidValidForDenylistRulesUL(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_11

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_11

    .line 5197
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final isWhitelistedFromPowerSaveExceptIdleUL(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4901
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4902
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isWhitelistedFromPowerSaveUL(IZ)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4886
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4887
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 4888
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v3

    :goto_1a
    if-nez p2, :cond_26

    if-nez v0, :cond_24

    .line 4890
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_24
    move v2, v3

    :cond_25
    move v0, v2

    :cond_26
    return v0
.end method

.method public jumpToSamsungApps(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 2121
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.app.samsungapps"

    const-string v1, "com.sec.android.app.samsungapps.Main"

    .line 2122
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "directcall"

    const/4 v1, 0x1

    .line 2123
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "CallerType"

    .line 2124
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "GUID"

    .line 2125
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x14000020

    .line 2126
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public final maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2230
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateCarrierPolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_c
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2235
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 2236
    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 2237
    invoke-virtual {p2, v0}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object p2

    .line 2238
    invoke-virtual {p2, v0}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object p2

    .line 2239
    invoke-virtual {p2, p1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object p2

    .line 2240
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_32
    if-ltz v2, :cond_53

    .line 2241
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2242
    invoke-virtual {v0, p2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2243
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 2244
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    :cond_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_32

    :cond_53
    return v1
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .registers 4

    const/4 v0, 0x1

    .line 1315
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 1316
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method

.method public final normalizePoliciesNL()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3561
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public final normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3566
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3567
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_52

    aget-object v2, p1, v1

    if-nez v2, :cond_e

    goto :goto_4f

    .line 3573
    :cond_e
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizeTemplate(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3574
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    if-eqz v3, :cond_28

    .line 3575
    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_4f

    :cond_28
    if-eqz v3, :cond_48

    .line 3577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    :cond_48
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_52
    return-void
.end method

.method public final notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1866
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1867
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1868
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public notifyStatsProviderWarningOrLimitReached()V
    .registers 3

    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    .line 3963
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3965
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3966
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v1, :cond_12

    monitor-exit v0

    return-void

    .line 3967
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_1f

    .line 3968
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_1f
    move-exception p0

    .line 3967
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1874
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final notifyVideoCallOverLimit(Landroid/net/NetworkTemplate;)V
    .registers 5

    .line 7273
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "notifyVideoCallOverLimit()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v0, "NetworkPolicy"

    .line 7275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matchRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AlreadySent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7276
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3d

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3d

    goto :goto_5a

    .line 7279
    :cond_3d
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-nez p1, :cond_5a

    .line 7280
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7282
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7283
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 7284
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7285
    :try_start_52
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 7286
    monitor-exit p1

    goto :goto_5a

    :catchall_57
    move-exception p0

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw p0

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onApplicationKill(Ljava/lang/String;I)V
    .registers 5

    .line 7795
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    const-string p0, "NetworkPolicy"

    const-string/jumbo p1, "handler is null return"

    .line 7796
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/16 v1, 0x34

    .line 7799
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7800
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7801
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 7802
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onUidDeletedUL(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5314
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5316
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_63

    .line 5317
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->onUidBlockedReasonsChanged(II)V

    .line 5319
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5320
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5321
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5322
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5323
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5324
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5325
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5326
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5327
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5328
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5330
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5331
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidStateCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5332
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_60

    .line 5335
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_60
    move-exception p0

    .line 5332
    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0

    :catchall_63
    move-exception p0

    .line 5316
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 8

    .line 3641
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3642
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3643
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_55

    .line 3645
    :try_start_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    if-eqz v4, :cond_3a

    const/16 p1, 0x22

    if-eq p2, p1, :cond_31

    const/16 p1, 0x23

    if-eq p2, p1, :cond_2e

    const/16 p1, 0x2d

    if-ne p2, p1, :cond_25

    .line 3658
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    goto :goto_33

    .line 3661
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unexpected type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3655
    :cond_2e
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_33

    .line 3652
    :cond_31
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    :goto_33
    const/4 p1, 0x1

    .line 3664
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3665
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_52

    .line 3666
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_55

    return-void

    .line 3647
    :cond_3a
    :try_start_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to find policy for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_52
    move-exception p0

    .line 3665
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    .line 3666
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final postBlockedReasonsChangedMsg(III)V
    .registers 5

    .line 5666
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 5667
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x15

    .line 5666
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5668
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final postUidRulesChangedMsg(II)V
    .registers 4

    .line 5672
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 5673
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final readFirewallPolicyAL()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation

    .line 7495
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "readFirewallPolicyAL"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    :cond_c
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 7499
    :try_start_12
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 7500
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 7502
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_79

    .line 7503
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1c

    const-string v3, "firewall-policy"

    .line 7505
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "uid"

    .line 7506
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "policy"

    .line 7507
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 7509
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v5, 0x0

    .line 7510
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 7511
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    goto :goto_1c

    .line 7513
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_68} :catch_73
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_68} :catch_6b
    .catchall {:try_start_12 .. :try_end_68} :catchall_69

    goto :goto_1c

    :catchall_69
    move-exception p0

    goto :goto_7d

    :catch_6b
    move-exception p0

    :try_start_6c
    const-string/jumbo v2, "problem reading firewall policy"

    .line 7522
    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    :catch_73
    const-string/jumbo p0, "miss firewall policy file"

    .line 7520
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_69

    .line 7524
    :cond_79
    :goto_79
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_7d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 7525
    throw p0
.end method

.method public final readPolicyAL()V
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2939
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v2, "NetworkPolicy"

    if-eqz v1, :cond_e

    const-string/jumbo v1, "readPolicyAL()"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_e
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2943
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2944
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2945
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    .line 2949
    :try_start_23
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_29} :catch_2df
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2d6
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d3

    .line 2950
    :try_start_29
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 2954
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v7, 0x1

    move v8, v7

    const/4 v9, 0x0

    .line 2959
    :goto_35
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    if-eq v10, v7, :cond_243

    .line 2960
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_3f} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3f} :catch_2ce
    .catchall {:try_start_29 .. :try_end_3f} :catchall_2cb

    const-string/jumbo v12, "whitelist"

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v10, v14, :cond_234

    :try_start_46
    const-string/jumbo v10, "policy-list"

    .line 2962
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    const-string/jumbo v8, "version"

    .line 2964
    invoke-static {v4, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    if-lt v8, v13, :cond_63

    const-string/jumbo v10, "restrictBackground"

    .line 2966
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_63

    move v10, v7

    goto :goto_64

    :cond_63
    const/4 v10, 0x0

    :goto_64
    iput-boolean v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    move v14, v7

    move-object v7, v1

    goto/16 :goto_23f

    :cond_6a
    const-string/jumbo v10, "network-policy"

    .line 2967
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18c

    const-string/jumbo v10, "networkTemplate"

    .line 2968
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "subscriberId"

    .line 2969
    invoke-interface {v4, v1, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    if-lt v8, v12, :cond_8d

    const-string/jumbo v12, "networkId"

    .line 2974
    invoke-interface {v4, v1, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8e

    :cond_8d
    move-object v12, v1

    :goto_8e
    const/16 v13, 0xd

    if-lt v8, v13, :cond_a1

    const-string/jumbo v13, "subscriberIdMatchRule"

    .line 2980
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v15, "templateMetered"

    .line 2982
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    goto :goto_ae

    :cond_a1
    if-ne v10, v7, :cond_ac

    const-string v10, "Update template match rule from mobile to carrier and force to metered"

    .line 2988
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xa

    move v15, v7

    goto :goto_ad

    :cond_ac
    const/4 v15, -0x1

    :goto_ad
    const/4 v13, 0x0

    :goto_ae
    const/16 v6, 0xb

    if-lt v8, v6, :cond_d9

    const-string v6, "cycleStart"

    .line 2998
    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cycleEnd"

    .line 2999
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "cyclePeriod"

    .line 3000
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3001
    new-instance v1, Landroid/util/RecurrenceRule;

    .line 3002
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3003
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v7

    .line 3004
    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v14

    invoke-direct {v1, v6, v7, v14}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object/from16 v19, v1

    const/4 v7, 0x0

    goto :goto_f7

    :cond_d9
    const-string v1, "cycleDay"

    .line 3006
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x6

    if-lt v8, v6, :cond_ea

    const-string v6, "cycleTimezone"

    const/4 v7, 0x0

    .line 3009
    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_ed

    :cond_ea
    const/4 v7, 0x0

    const-string v6, "UTC"

    .line 3013
    :goto_ed
    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_f7
    const-string/jumbo v1, "warningBytes"

    .line 3015
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v20

    const-string/jumbo v1, "limitBytes"

    .line 3016
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v17, -0x1

    const/4 v1, 0x5

    if-lt v8, v1, :cond_114

    const-string/jumbo v6, "lastLimitSnooze"

    .line 3019
    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v24

    :goto_111
    move-wide/from16 v26, v24

    goto :goto_121

    :cond_114
    const/4 v6, 0x2

    if-lt v8, v6, :cond_11f

    const-string/jumbo v6, "lastSnooze"

    .line 3021
    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v24

    goto :goto_111

    :cond_11f
    move-wide/from16 v26, v17

    :goto_121
    const/4 v6, 0x4

    if-lt v8, v6, :cond_12e

    const-string/jumbo v6, "metered"

    .line 3027
    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move/from16 v28, v6

    goto :goto_136

    :cond_12e
    const/4 v6, 0x1

    if-eq v10, v6, :cond_134

    const/16 v28, 0x0

    goto :goto_136

    :cond_134
    const/16 v28, 0x1

    :goto_136
    if-lt v8, v1, :cond_142

    const-string/jumbo v1, "lastWarningSnooze"

    .line 3039
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v24, v16

    goto :goto_144

    :cond_142
    move-wide/from16 v24, v17

    :goto_144
    const/4 v1, 0x7

    if-lt v8, v1, :cond_151

    const-string/jumbo v1, "inferred"

    .line 3045
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    move/from16 v29, v1

    goto :goto_153

    :cond_151
    const/16 v29, 0x0

    .line 3049
    :goto_153
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v10}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 3051
    invoke-virtual {v1, v15}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    if-nez v13, :cond_169

    .line 3054
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3055
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3056
    invoke-virtual {v1, v6}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    :cond_169
    if-eqz v12, :cond_172

    .line 3059
    invoke-static {v12}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 3061
    :cond_172
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 3062
    invoke-static {v1}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v6

    if-eqz v6, :cond_208

    .line 3063
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v10, Landroid/net/NetworkPolicy;

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v29}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v6, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_208

    :cond_18c
    move-object v7, v1

    const-string/jumbo v1, "uid-policy"

    .line 3067
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_194
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_194} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_194} :catch_2ce
    .catchall {:try_start_46 .. :try_end_194} :catchall_2cb

    const-string v6, "; ignoring"

    const-string/jumbo v10, "unable to apply policy to UID "

    const-string/jumbo v13, "policy"

    const-string/jumbo v14, "uid"

    if-eqz v1, :cond_1ca

    .line 3068
    :try_start_1a1
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 3069
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 3071
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_1b4

    const/4 v12, 0x0

    .line 3072
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_208

    .line 3074
    :cond_1b4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    :cond_1ca
    const-string v1, "app-policy"

    .line 3076
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    const-string v1, "appId"

    .line 3077
    invoke-static {v4, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 3078
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    .line 3082
    invoke-static {v12, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 3083
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_1eb

    .line 3084
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_208

    .line 3086
    :cond_1eb
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    .line 3088
    :cond_201
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20a

    const/4 v9, 0x1

    :cond_208
    :goto_208
    const/4 v14, 0x1

    goto :goto_23f

    :cond_20a
    const-string/jumbo v1, "restrict-background"

    .line 3090
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    if-eqz v9, :cond_21e

    .line 3091
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x1

    .line 3092
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_208

    :cond_21e
    const-string/jumbo v1, "revoked-restrict-background"

    .line 3093
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_208

    if-eqz v9, :cond_208

    .line 3094
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 3095
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    invoke-virtual {v6, v1, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_23f

    :cond_234
    move v14, v7

    move-object v7, v1

    if-ne v10, v13, :cond_23f

    .line 3098
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23f

    const/4 v9, 0x0

    :cond_23f
    :goto_23f
    move-object v1, v7

    move v7, v14

    goto/16 :goto_35

    .line 3105
    :cond_243
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v12, 0x0

    :goto_248
    if-ge v12, v1, :cond_2c7

    .line 3107
    invoke-virtual {v5, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3108
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_27c

    .line 3110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ignoring restrict-background-allowlist for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " because its policy is "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3110
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_2c4

    .line 3114
    :cond_27c
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_2ae

    or-int/lit8 v6, v6, 0x4

    .line 3116
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_2a9

    .line 3117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "new policy for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a9
    const/4 v7, 0x0

    .line 3118
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_2c4

    :cond_2ae
    const/4 v7, 0x0

    .line 3120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to update policy on UID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c4
    .catch Ljava/io/FileNotFoundException; {:try_start_1a1 .. :try_end_2c4} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_2c4} :catch_2ce
    .catchall {:try_start_1a1 .. :try_end_2c4} :catchall_2cb

    :goto_2c4
    add-int/lit8 v12, v12, 0x1

    goto :goto_248

    .line 3130
    :cond_2c7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2e6

    :catchall_2cb
    move-exception v0

    move-object v1, v3

    goto :goto_2e8

    :catch_2ce
    move-exception v0

    move-object v1, v3

    goto :goto_2d8

    :catch_2d1
    move-object v1, v3

    goto :goto_2e0

    :catchall_2d3
    move-exception v0

    move-object v7, v1

    goto :goto_2e8

    :catch_2d6
    move-exception v0

    move-object v7, v1

    :goto_2d8
    :try_start_2d8
    const-string/jumbo v3, "problem reading network policy"

    .line 3128
    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e3

    :catch_2df
    move-object v7, v1

    .line 3126
    :goto_2e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_2e3
    .catchall {:try_start_2d8 .. :try_end_2e3} :catchall_2e7

    .line 3130
    :goto_2e3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_2e6
    return-void

    :catchall_2e7
    move-exception v0

    :goto_2e8
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3131
    throw v0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 4

    .line 3493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    .line 3496
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3497
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final removeFirewallPolicyNL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation

    .line 7572
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_12

    .line 7574
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 7575
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeFirewallPolicyAL()V

    .line 7576
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    :cond_12
    return-void
.end method

.method public final removeFirewallRules(II)V
    .registers 7

    and-int/lit8 v0, p2, 0x1

    const-string v1, "NetworkPolicy"

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    .line 7598
    :try_start_7
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 7599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3f

    .line 7602
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 7603
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remove FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    return-void
.end method

.method public final removeInterfaceLimit(Ljava/lang/String;)V
    .registers 3

    .line 6138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_f

    goto :goto_f

    :catch_6
    move-exception p0

    const-string p1, "NetworkPolicy"

    const-string/jumbo v0, "problem removing interface quota"

    .line 6140
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_f
    :goto_f
    return-void
.end method

.method public final removeInterfaceQuotasAsync(Ljava/lang/String;)V
    .registers 3

    .line 6133
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeTagFileInNetstats()V
    .registers 7

    const-string p0, "NetworkPolicy"

    const-string/jumbo v0, "remove tag file  in netStats"

    .line 7899
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7901
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/apexdata/com.android.tethering/netstats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7902
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 7903
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    .line 7904
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uid_tag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 7905
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_36

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_36
    move-exception v0

    const-string/jumbo v1, "writeNetstatsFiles, Copy error: "

    .line 7911
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7912
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 6

    .line 3338
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3344
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3345
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    not-int p2, p2

    and-int/2addr p2, v1

    if-eq v1, p2, :cond_26

    const/4 v2, 0x1

    .line 3348
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 3349
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 3351
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p0

    .line 3341
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot apply policy to UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeUidStateUL(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4605
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_35

    .line 4607
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager$UidState;

    .line 4608
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz v1, :cond_35

    const/4 v0, 0x0

    .line 4610
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    .line 4611
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_22

    .line 4612
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4614
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v0, :cond_29

    .line 4615
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4617
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4618
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-eqz v0, :cond_33

    .line 4619
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public removeUserStateUL(IZZ)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3437
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 3441
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ltz v0, :cond_26

    .line 3442
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3443
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_23

    .line 3444
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    move v3, v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_26
    new-array v0, v2, [I

    move v4, v2

    .line 3451
    :goto_29
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 3452
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 3453
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_41

    .line 3454
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 3458
    :cond_44
    array-length p1, v0

    if-lez p1, :cond_55

    .line 3459
    array-length p1, v0

    :goto_48
    if-ge v2, p1, :cond_54

    aget v3, v0, v2

    .line 3460
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_54
    move v3, v1

    .line 3464
    :cond_55
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_60

    .line 3466
    :try_start_5a
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    goto :goto_60

    :catchall_5e
    move-exception p0

    goto :goto_69

    :cond_60
    :goto_60
    if-eqz p2, :cond_67

    if-eqz v3, :cond_67

    .line 3469
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3471
    :cond_67
    monitor-exit p1

    return v3

    :goto_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_5e

    throw p0
.end method

.method public final resetUidFirewallRules(I)V
    .registers 5

    .line 6321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6323
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6325
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6327
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6329
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6331
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x7

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6333
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 6334
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 6335
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 6336
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_39} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_39} :catch_52

    goto :goto_52

    :catch_3a
    move-exception v0

    .line 6338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6342
    :catch_52
    :goto_52
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 6343
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    :cond_5f
    return-void
.end method

.method public final sendRestrictBackgroundChangedMsg()V
    .registers 4

    .line 3733
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3734
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3735
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAppIdleWhitelist(IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5215
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5218
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_16

    .line 5220
    monitor-exit v0

    return-void

    .line 5223
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_3e

    .line 5225
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    if-eqz p2, :cond_28

    .line 5227
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2d

    .line 5229
    :cond_28
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_2d
    const/4 p2, -0x1

    .line 5231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 5232
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_39

    .line 5234
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5236
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    .line 5234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5235
    throw p0

    :catchall_3e
    move-exception p0

    .line 5236
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public setDebugUid(I)V
    .registers 2

    .line 4518
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->setDebugUid(I)V

    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .registers 6

    .line 3784
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setDeviceIdleMode"

    const-wide/32 v1, 0x200000

    .line 3785
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3787
    :try_start_12
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_43

    .line 3788
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_1e

    .line 3789
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_40

    .line 3805
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 3791
    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3792
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3793
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2c

    .line 3796
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleDeviceIdleModeChangedUL(Z)V

    .line 3798
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_40

    if-eqz p1, :cond_36

    :try_start_2f
    const-string/jumbo p0, "net"

    .line 3800
    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_3c

    :cond_36
    const-string/jumbo p0, "net"

    .line 3802
    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_43

    .line 3805
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_40
    move-exception p0

    .line 3798
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    .line 3805
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3806
    throw p0
.end method

.method public final setFirewallPolicyNL(IIZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 7561
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_d

    .line 7563
    :cond_8
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_d
    if-eqz p3, :cond_12

    .line 7566
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writeFirewallPolicyAL()V

    :cond_12
    return-void
.end method

.method public setFirewallRuleMobileData(IZ)V
    .registers 8

    .line 7612
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7613
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7614
    :try_start_c
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const-string v2, "NetworkPolicy"

    .line 7615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleMobileData UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez p2, :cond_4a

    and-int/lit8 p2, v1, 0x1

    if-nez p2, :cond_56

    or-int/lit8 p2, v1, 0x1

    .line 7619
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 7620
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    goto :goto_56

    :cond_4a
    and-int/lit8 p2, v1, 0x1

    if-eqz p2, :cond_56

    and-int/lit8 p2, v1, -0x2

    .line 7625
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 7626
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 7629
    :cond_56
    :goto_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .registers 5

    .line 7689
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7690
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7691
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleMobileData(IZ)V

    goto :goto_11

    :cond_35
    return-void
.end method

.method public setFirewallRuleWifi(IZ)V
    .registers 8

    .line 7667
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7668
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7669
    :try_start_c
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const-string v2, "NetworkPolicy"

    .line 7670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleWifi UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p2, :cond_4b

    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_57

    or-int/lit8 p2, v1, 0x2

    .line 7674
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 7675
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    goto :goto_57

    :cond_4b
    and-int/lit8 p2, v1, 0x2

    if-eqz p2, :cond_57

    and-int/lit8 p2, v1, -0x3

    .line 7680
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyNL(IIZ)V

    .line 7681
    invoke-virtual {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 7684
    :cond_57
    :goto_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_c .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public setFirewallRuleWifiMap(Ljava/util/Map;)V
    .registers 5

    .line 7697
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7698
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7699
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleWifi(IZ)V

    goto :goto_11

    :cond_35
    return-void
.end method

.method public final setInterfaceLimit(Ljava/lang/String;J)V
    .registers 4

    .line 6124
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_f

    goto :goto_f

    :catch_6
    move-exception p0

    const-string p1, "NetworkPolicy"

    const-string/jumbo p2, "problem setting interface quota"

    .line 6126
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_f
    :goto_f
    return-void
.end method

.method public final setInterfaceQuotasAsync(Ljava/lang/String;JJ)V
    .registers 14

    .line 6115
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(Ljava/lang/String;JJLcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas-IA;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6116
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setMeteredNetworkAllowlist(IZ)V
    .registers 6

    .line 6164
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkAllowlist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6166
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 6167
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V

    .line 6168
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6169
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v0

    .line 6170
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 6171
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredAllowlistChanged(IZ)V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_41} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_41} :catch_60

    goto :goto_60

    :catch_42
    move-exception p0

    .line 6174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem setting allowlist ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") rules for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_60
    :cond_60
    :goto_60
    return-void
.end method

.method public final setMeteredNetworkDenylist(IZ)V
    .registers 6

    .line 6147
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkDenylist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 6150
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V

    .line 6151
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6152
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v0

    .line 6153
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p2}, Landroid/os/INetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 6154
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/net/NetworkPolicyLogger;->meteredDenylistChanged(IZ)V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_41} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_41} :catch_60

    goto :goto_60

    :catch_42
    move-exception p0

    .line 6157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem setting denylist ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") rules for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_60
    :cond_60
    :goto_60
    return-void
.end method

.method public final setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6735
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6736
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6737
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6738
    invoke-virtual {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_c

    .line 6740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 6743
    :cond_26
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 6744
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6745
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 6746
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 6747
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 6

    .line 3512
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3516
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 3517
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    .line 3518
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    const/4 p1, 0x0

    .line 3519
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3520
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_20

    .line 3521
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_23

    .line 3523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    .line 3520
    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw p0

    :catchall_23
    move-exception p0

    .line 3521
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 3523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3524
    throw p0
.end method

.method public final setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 5

    .line 2471
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2472
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .registers 11

    .line 2479
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 2480
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_77

    .line 2485
    :cond_f
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 2486
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 2487
    :goto_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 2488
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2489
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2490
    new-instance v7, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v7}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 2491
    invoke-virtual {v7, v3}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v7

    .line 2492
    invoke-virtual {v7, v6}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2493
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2494
    invoke-virtual {v6, v1}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    .line 2495
    invoke-virtual {v6, v5}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v6

    .line 2497
    invoke-virtual {p1, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 2498
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2501
    :cond_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_19 .. :try_end_59} :catchall_78

    .line 2504
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2505
    :goto_63
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_77

    .line 2506
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->get(I)I

    move-result p1

    .line 2507
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 2501
    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public setRestrictBackground(Z)V
    .registers 10

    const-string/jumbo v0, "setRestrictBackground"

    const-wide/32 v1, 0x200000

    .line 3671
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3673
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_42

    .line 3677
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3d

    .line 3678
    :try_start_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 3679
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_3a

    .line 3681
    :try_start_33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_42

    .line 3684
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3a
    move-exception p0

    .line 3679
    :try_start_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 3681
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3682
    throw p0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    .line 3684
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3685
    throw p0
.end method

.method public final setRestrictBackgroundUL(ZLjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-string/jumbo v0, "setRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    .line 3690
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3692
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v0, :cond_28

    const-string p0, "NetworkPolicy"

    .line 3694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setRestrictBackgroundUL: already "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_98

    .line 3728
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_28
    :try_start_28
    const-string v0, "NetworkPolicy"

    .line 3697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    iget-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3699
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3703
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_98

    .line 3705
    :try_start_4e
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {p1, v0}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_76

    const-string p1, "NetworkPolicy"

    .line 3706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_72} :catch_76
    .catchall {:try_start_4e .. :try_end_72} :catchall_98

    .line 3728
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 3717
    :catch_76
    :cond_76
    :try_start_76
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3718
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {p1, p2, v0}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3720
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz p1, :cond_87

    const/4 p1, 0x1

    .line 3721
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3723
    :cond_87
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8a
    .catchall {:try_start_76 .. :try_end_8a} :catchall_98

    .line 3724
    :try_start_8a
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 3725
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3726
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_95

    .line 3728
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_95
    move-exception p0

    .line 3726
    :try_start_96
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    :try_start_97
    throw p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p0

    .line 3728
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3729
    throw p0
.end method

.method public setSubscriptionOverride(III[IJLjava/lang/String;)V
    .registers 16

    .line 4211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, p7}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 4213
    new-instance p7, Landroid/util/ArraySet;

    invoke-direct {p7}, Landroid/util/ArraySet;-><init>()V

    .line 4214
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {p7, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 4215
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4218
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_47

    aget v4, p4, v3

    .line 4219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 4220
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_44

    :cond_2d
    const-string v5, "NetworkPolicy"

    .line 4222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSubscriptionOverride removing invalid network type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4228
    :cond_47
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p4

    .line 4229
    :try_start_4a
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object p7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_53

    if-eqz p7, :cond_ad

    .line 4231
    :cond_53
    invoke-virtual {p7}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result p7

    const/4 v3, -0x1

    if-eq p7, v3, :cond_ad

    .line 4235
    monitor-exit p4
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_b5

    .line 4239
    iget-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo p7, "netpolicy_override_enabled"

    invoke-static {p4, p7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p4

    if-eqz p4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v2

    :goto_6c
    if-nez v1, :cond_70

    if-nez p3, :cond_ac

    .line 4242
    :cond_70
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 4243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4244
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4246
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 4247
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x10

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x0

    cmp-long p1, p5, v0

    if-lez p1, :cond_ac

    .line 4249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4250
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_ac
    return-void

    .line 4232
    :cond_ad
    :try_start_ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b5
    move-exception p0

    .line 4235
    monitor-exit p4
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_b5

    throw p0
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 14

    .line 4136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 4137
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V

    .line 4139
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p2, v1

    .line 4140
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4143
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4145
    :try_start_1a
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a

    .line 4147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4150
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyLogger;->subscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 4147
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    throw p0
.end method

.method public final setSubscriptionPlansInternal(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 11

    .line 4155
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4156
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_82

    .line 4157
    :try_start_6
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4158
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4160
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 4162
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL(ILjava/lang/String;)Z

    .line 4163
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateCarrierPolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_38

    :cond_22
    const-string v2, "NetworkPolicy"

    .line 4165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing subscriberId for subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const/4 v2, 0x1

    .line 4168
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 4170
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 4172
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 4173
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4174
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4176
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4178
    iget p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIdCounter:I

    .line 4179
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_7c

    .line 4181
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {p0, v2, p1, p2, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4184
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_6 .. :try_end_7d} :catchall_7f

    .line 4185
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_82

    return-void

    :catchall_7f
    move-exception p0

    .line 4184
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw p0

    :catchall_82
    move-exception p0

    .line 4185
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public setSubscriptionPlansOwner(ILjava/lang/String;)V
    .registers 5

    .line 4193
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "NetworkPolicy"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "persist.sys.sub_plan_owner."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUidFirewallRuleUL(III)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    .line 6258
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRuleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2c
    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    .line 6264
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_63

    :catchall_35
    move-exception p0

    goto :goto_8f

    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_40

    .line 6266
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_63

    :cond_40
    const/4 v2, 0x3

    if-ne p1, v2, :cond_49

    .line 6268
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_63

    :cond_49
    const/4 v2, 0x4

    if-ne p1, v2, :cond_52

    .line 6270
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_63

    :cond_52
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5b

    .line 6272
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_63

    :cond_5b
    const/4 v2, 0x7

    if-ne p1, v2, :cond_63

    .line 6274
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_35

    .line 6278
    :cond_63
    :goto_63
    :try_start_63
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6279
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V

    .line 6280
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 6281
    invoke-static {p2}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p2

    .line 6282
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 6283
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_81
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_81} :catch_82
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_81} :catch_8b
    .catchall {:try_start_63 .. :try_end_81} :catchall_35

    goto :goto_8b

    :catch_82
    move-exception p0

    :try_start_83
    const-string p1, "NetworkPolicy"

    const-string/jumbo p2, "problem setting firewall uid rules"

    .line 6286
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_35

    .line 6291
    :catch_8b
    :cond_8b
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_8f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6292
    throw p0
.end method

.method public final setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .registers 7

    .line 6235
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->addSdkSandboxUidsIfNeeded(Landroid/util/SparseIntArray;)V

    .line 6237
    :try_start_3
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 6238
    new-array v1, v0, [I

    .line 6239
    new-array v2, v0, [I

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1e

    .line 6241
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    .line 6242
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 6244
    :cond_1e
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {p2, p1, v1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 6245
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_28} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_32

    goto :goto_32

    :catch_29
    move-exception p0

    const-string p1, "NetworkPolicy"

    const-string/jumbo p2, "problem setting firewall uid rules"

    .line 6247
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_32
    :goto_32
    return-void
.end method

.method public final setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 6204
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    :cond_5
    if-eqz p3, :cond_f

    const/4 p2, 0x1

    if-ne p3, p2, :cond_b

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 6207
    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    :cond_f
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 8

    .line 3299
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3304
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3305
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_32

    .line 3307
    :try_start_16
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, p2, :cond_28

    const/4 v4, 0x1

    .line 3309
    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 3310
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2d

    .line 3313
    :cond_28
    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3315
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    .line 3313
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3314
    throw p0

    :catchall_32
    move-exception p0

    .line 3315
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw p0

    .line 3302
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot apply policy to UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUidPolicyUncheckedUL(IIIZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3356
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 3359
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_77

    :cond_c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-ne p3, v1, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v0

    :goto_17
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1c

    move p2, v1

    goto :goto_1d

    :cond_1c
    move p2, v0

    :goto_1d
    if-ne p3, v4, :cond_21

    move v4, v1

    goto :goto_22

    :cond_21
    move v4, v0

    :goto_22
    if-nez v2, :cond_2d

    .line 3366
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v2, :cond_2b

    if-nez p2, :cond_2b

    goto :goto_2d

    :cond_2b
    move v2, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v2, v1

    :goto_2e
    if-nez v3, :cond_39

    .line 3367
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_37

    if-nez v4, :cond_37

    goto :goto_39

    :cond_37
    move v5, v0

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v1

    :goto_3a
    if-eqz p2, :cond_74

    if-eqz v4, :cond_40

    if-eqz v3, :cond_74

    .line 3368
    :cond_40
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 3369
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_74

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 3370
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_74

    .line 3371
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p2, :cond_6f

    const-string p2, "NetworkPolicy"

    .line 3372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to revoked restrict background allowlist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_6f
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_74
    if-eq v2, v5, :cond_77

    move v0, v1

    .line 3377
    :cond_77
    :goto_77
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3378
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    if-eqz p4, :cond_93

    .line 3380
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3381
    :try_start_8b
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3382
    monitor-exit p1

    goto :goto_93

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    :goto_93
    return-void
.end method

.method public final setUidPolicyUncheckedUL(IIZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 3389
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_d

    .line 3391
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3395
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    if-eqz p3, :cond_1d

    .line 3397
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3398
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3399
    monitor-exit p1

    goto :goto_1d

    :catchall_1a
    move-exception p0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .registers 8

    .line 3811
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3814
    :try_start_d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 3815
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3816
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 3817
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3818
    iput p2, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3819
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_3f

    goto :goto_1f

    .line 3823
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3824
    throw p0
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 5

    .line 3630
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x23

    .line 3634
    :try_start_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 3636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3637
    throw p0
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    const-wide/16 v0, 0x1e

    .line 1324
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1327
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_f} :catch_32

    .line 1334
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1335
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    .line 1336
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTetherListener:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {p1, v0, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    :cond_29
    return-void

    .line 1325
    :cond_2a
    :try_start_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Service NetworkPolicy init timeout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 1329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1330
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Service NetworkPolicy init interrupted"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 4

    .line 3503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    .line 3506
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 3507
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateBlockedReasonsForRestrictedModeUL(I)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4704
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRestrictedModeAccess(I)Z

    move-result v0

    .line 4708
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4709
    :try_start_7
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v2

    .line 4711
    iget v3, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 4712
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v4, :cond_1a

    .line 4713
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    goto :goto_20

    .line 4715
    :cond_1a
    iget v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    :goto_20
    if-eqz v0, :cond_29

    .line 4718
    iget v0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    goto :goto_2f

    .line 4720
    :cond_29
    iget v0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 4722
    :goto_2f
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 4724
    iget v0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-ne v3, v0, :cond_38

    const/4 v2, 0x0

    goto :goto_3c

    .line 4727
    :cond_38
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v2

    .line 4728
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_46

    if-eq v3, v0, :cond_45

    .line 4730
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 4733
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    :cond_45
    return v0

    :catchall_46
    move-exception p0

    .line 4728
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final updateDefaultCarrierPolicyAL(ILandroid/net/NetworkPolicy;)Z
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 2883
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_26

    .line 2884
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring user-defined policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v5

    .line 2888
    :cond_26
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-wide/from16 v16, v5

    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-object v6, v3

    move/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2892
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2893
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_99

    const/4 v6, 0x0

    .line 2894
    aget-object v1, v5, v6

    .line 2895
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v5

    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2896
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v10, v5, v8

    if-nez v10, :cond_75

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2899
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v0

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_d1

    :cond_75
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v5, v10

    if-nez v0, :cond_83

    .line 2901
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2902
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_d1

    :cond_83
    const-wide/16 v10, 0x9

    mul-long/2addr v10, v5

    const-wide/16 v12, 0xa

    .line 2904
    div-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2905
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v0

    if-eqz v0, :cond_96

    if-eq v0, v7, :cond_96

    .line 2911
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_d1

    .line 2908
    :cond_96
    iput-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_d1

    .line 2916
    :cond_99
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 2918
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v5}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 2919
    iget-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v5, v5, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    goto :goto_b3

    :cond_b2
    const/4 v5, -0x1

    .line 2923
    :goto_b3
    invoke-virtual {v0, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v5

    .line 2924
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v5

    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2925
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2926
    iget-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2929
    :goto_d1
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const/4 v0, 0x0

    return v0

    .line 2932
    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public updateNetworkEnabledNL()V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 2418
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-wide/32 v7, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    .line 2419
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2423
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const/4 v9, 0x0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    .line 2424
    invoke-virtual {v0, v9, v1, v2, v9}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v1, "VZW-"

    .line 2426
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_2e
    const-string v0, "ATT"

    .line 2427
    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "TMO"

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2428
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateVideoCallLocked()V

    .line 2435
    :cond_41
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v10

    .line 2437
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    move v13, v0

    :goto_50
    if-ltz v13, :cond_b7

    .line 2438
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 2440
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_af

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_af

    .line 2446
    :cond_6a
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2447
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v15

    .line 2448
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 2449
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide v2, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 2453
    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-boolean v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-nez v0, :cond_a7

    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v15

    if-gez v0, :cond_a7

    move v0, v12

    goto :goto_a8

    :cond_a7
    move v0, v9

    :goto_a8
    xor-int/2addr v0, v12

    .line 2457
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_b4

    .line 2441
    :cond_af
    :goto_af
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    :goto_b4
    add-int/lit8 v13, v13, -0x1

    goto :goto_50

    .line 2460
    :cond_b7
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 2461
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public updateNetworkRulesNL()V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2587
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v1, :cond_e

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "updateNetworkRulesNL()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo v1, "updateNetworkRulesNL"

    const-wide/32 v7, 0x200000

    .line 2588
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2590
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkStateSnapshots()Ljava/util/List;

    move-result-object v9

    .line 2594
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2595
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 2596
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStateSnapshot;

    .line 2597
    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getSubId()I

    move-result v3

    .line 2598
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Network;->getNetId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2601
    new-instance v3, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v3}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 2602
    invoke-virtual {v3, v2}, Landroid/net/NetworkIdentity$Builder;->setNetworkStateSnapshot(Landroid/net/NetworkStateSnapshot;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v3

    .line 2603
    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2606
    :cond_5e
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2611
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 2612
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v11

    move v5, v1

    const-wide v16, 0x7fffffffffffffffL

    :goto_75
    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    if-ltz v5, :cond_1b7

    .line 2613
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 2616
    invoke-virtual {v13}, Landroid/util/ArraySet;->clear()V

    .line 2617
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_8c
    if-ltz v1, :cond_aa

    .line 2618
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v3, v21

    check-cast v3, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 2619
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStateSnapshot;

    invoke-static {v13, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    :cond_a7
    add-int/lit8 v1, v1, -0x1

    goto :goto_8c

    .line 2623
    :cond_aa
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_cc

    const-string v1, "NetworkPolicy"

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to ifaces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_cc
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v19

    if-eqz v1, :cond_d5

    move/from16 v21, v11

    goto :goto_d7

    :cond_d5
    move/from16 v21, v18

    .line 2628
    :goto_d7
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v19

    if-eqz v1, :cond_df

    move/from16 v18, v11

    :cond_df
    if-nez v18, :cond_e3

    if-eqz v21, :cond_14d

    .line 2631
    :cond_e3
    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 2633
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2634
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 2635
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v24

    .line 2636
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    const-wide/16 v7, 0x1

    move-wide/from16 v3, v19

    move/from16 v22, v5

    move-object v14, v6

    move-wide/from16 v5, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    if-eqz v18, :cond_12c

    .line 2639
    iget-wide v3, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v19

    if-gez v3, :cond_12c

    .line 2643
    iget-wide v3, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_131

    :cond_12c
    const-wide v3, 0x7fffffffffffffffL

    :goto_131
    if-eqz v21, :cond_147

    .line 2648
    iget-wide v5, v14, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v5, v5, v19

    if-gez v5, :cond_147

    .line 2649
    invoke-virtual {v14, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v5

    if-nez v5, :cond_147

    .line 2650
    iget-wide v5, v14, Landroid/net/NetworkPolicy;->warningBytes:J

    sub-long/2addr v5, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_15a

    :cond_147
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_15a

    :cond_14d
    move/from16 v22, v5

    move-object v14, v6

    const-wide v1, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    :goto_15a
    if-nez v21, :cond_162

    if-nez v18, :cond_162

    .line 2654
    iget-boolean v5, v14, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v5, :cond_19b

    .line 2655
    :cond_162
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 2662
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v5, :cond_178

    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-eqz v5, :cond_178

    const-wide v7, 0x7fffffffffffffffL

    const-wide v19, 0x7fffffffffffffffL

    goto :goto_17b

    :cond_178
    move-wide v7, v1

    move-wide/from16 v19, v3

    .line 2673
    :goto_17b
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v11

    move v15, v1

    :goto_181
    if-ltz v15, :cond_19b

    .line 2674
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v7

    move-object v11, v5

    move-wide/from16 v5, v19

    .line 2675
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    .line 2676
    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, -0x1

    const/4 v11, 0x1

    goto :goto_181

    :cond_19b
    if-eqz v21, :cond_1a5

    .line 2681
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v1, v16

    if-gez v3, :cond_1a5

    move-wide/from16 v16, v1

    :cond_1a5
    if-eqz v18, :cond_1af

    .line 2684
    iget-wide v1, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v1, v16

    if-gez v3, :cond_1af

    move-wide/from16 v16, v1

    :cond_1af
    add-int/lit8 v5, v22, -0x1

    const-wide/32 v7, 0x200000

    const/4 v11, 0x1

    goto/16 :goto_75

    :cond_1b7
    const-wide/16 v7, 0x1

    .line 2691
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_207

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStateSnapshot;

    .line 2692
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1bd

    .line 2693
    invoke-virtual {v13}, Landroid/util/ArraySet;->clear()V

    .line 2694
    invoke-static {v13, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkStateSnapshot;)V

    .line 2695
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v11, v1

    :goto_1e2
    if-ltz v11, :cond_1bd

    .line 2696
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 2697
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_204

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object v2, v14

    .line 2698
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotasAsync(Ljava/lang/String;JJ)V

    .line 2699
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_204
    add-int/lit8 v11, v11, -0x1

    goto :goto_1e2

    .line 2706
    :cond_207
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2707
    :try_start_20a
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_212
    if-ltz v2, :cond_228

    .line 2708
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2709
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_225

    .line 2710
    invoke-virtual {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotasAsync(Ljava/lang/String;)V

    :cond_225
    add-int/lit8 v2, v2, -0x1

    goto :goto_212

    .line 2713
    :cond_228
    iput-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2714
    monitor-exit v1
    :try_end_22b
    .catchall {:try_start_20a .. :try_end_22b} :catchall_365

    .line 2716
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "netpolicy_quota_enabled"

    const/4 v3, 0x1

    .line 2717
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_23d

    move v11, v3

    goto :goto_23f

    :cond_23d
    move/from16 v11, v18

    :goto_23f
    const-string/jumbo v2, "netpolicy_quota_unlimited"

    .line 2719
    sget-wide v3, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v2, "netpolicy_quota_limited"

    const v3, 0x3dcccccd    # 0.1f

    .line 2721
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    .line 2725
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2726
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_25b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_331

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStateSnapshot;

    if-nez v11, :cond_26a

    goto :goto_25b

    .line 2728
    :cond_26a
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_271

    goto :goto_25b

    .line 2729
    :cond_271
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v14

    const/4 v2, -0x1

    if-ne v14, v2, :cond_27d

    goto :goto_25b

    .line 2731
    :cond_27d
    invoke-virtual {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    if-nez v2, :cond_284

    goto :goto_25b

    .line 2735
    :cond_284
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v21

    .line 2736
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_29d

    const-wide/16 v5, 0x0

    :goto_296
    const-wide v23, 0x7fffffffffffffffL

    goto/16 :goto_32a

    :cond_29d
    cmp-long v3, v21, v19

    if-nez v3, :cond_2a4

    move-wide/from16 v5, v19

    goto :goto_296

    :cond_2a4
    const-wide v23, 0x7fffffffffffffffL

    cmp-long v3, v21, v23

    if-nez v3, :cond_2b0

    move-wide v5, v12

    goto/16 :goto_32a

    .line 2746
    :cond_2b0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 2747
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 2748
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/time/ZonedDateTime;

    invoke-virtual {v15}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v15

    invoke-virtual {v15}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v26

    .line 2749
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v15}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v15

    .line 2750
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v15, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2751
    invoke-virtual {v2, v5}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 2752
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 2753
    invoke-virtual {v1}, Landroid/net/NetworkStateSnapshot;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_301

    const-wide/16 v5, 0x0

    goto :goto_30b

    .line 2756
    :cond_301
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v1, p0

    .line 2755
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v5

    :goto_30b
    sub-long v21, v21, v5

    .line 2760
    invoke-virtual {v15}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    sub-long v26, v26, v1

    sub-long v26, v26, v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    div-long v26, v26, v1

    add-long v26, v26, v7

    .line 2762
    div-long v1, v21, v26

    long-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-long v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2765
    :goto_32a
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v14, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    goto/16 :goto_25b

    .line 2769
    :cond_331
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2770
    :try_start_334
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2771
    monitor-exit v2
    :try_end_343
    .catchall {:try_start_334 .. :try_end_343} :catchall_362

    .line 2772
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2774
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-wide/32 v0, 0x200000

    .line 2776
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_362
    move-exception v0

    .line 2771
    :try_start_363
    monitor-exit v2
    :try_end_364
    .catchall {:try_start_363 .. :try_end_364} :catchall_362

    throw v0

    :catchall_365
    move-exception v0

    .line 2714
    :try_start_366
    monitor-exit v1
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_365

    throw v0
.end method

.method public final updateNetworkStats(IZ)V
    .registers 7

    const-wide/32 v0, 0x200000

    .line 4629
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_21

    const-string v3, "F"

    goto :goto_23

    :cond_21
    const-string v3, "B"

    .line 4631
    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4630
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4634
    :cond_2d
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/NetworkStatsManager;->noteUidForeground(IZ)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_36

    .line 4636
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4637
    throw p0
.end method

.method public final updateNetworkToIfacesNL(ILandroid/util/ArraySet;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    goto :goto_12

    .line 1576
    :cond_a
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_2f

    .line 1582
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1583
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1584
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkToIfaces:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    return v1
.end method

.method public updateNetworks()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 2209
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2210
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2213
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public final updateNetworksInternal()V
    .registers 3

    .line 2193
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 2195
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 2197
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveCarrierPolicyAL()V

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2199
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2201
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2202
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    .line 2203
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    return-void

    :catchall_1b
    move-exception p0

    .line 2202
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0

    :catchall_1e
    move-exception p0

    .line 2203
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public updateNotificationsNL()V
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1655
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v9, "NetworkPolicy"

    if-eqz v0, :cond_e

    const-string/jumbo v0, "updateNotificationsNL()"

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-wide/32 v10, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    .line 1656
    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1659
    new-instance v12, Landroid/util/ArraySet;

    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v12, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1660
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1666
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 1667
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    move v7, v0

    :goto_32
    if-ltz v7, :cond_297

    .line 1668
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1669
    iget-object v0, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4a

    :cond_46
    :goto_46
    move/from16 v20, v7

    goto/16 :goto_290

    .line 1673
    :cond_4a
    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_46

    .line 1676
    :cond_51
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1677
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1678
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1679
    iget-object v1, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move v10, v4

    move/from16 v20, v5

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v4

    .line 1682
    iget-wide v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    const-wide/32 v2, 0x186a0

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_b7

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNotificationsNL() - totalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", warningBytes= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", limitBytes= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iput-wide v4, v8, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 1689
    :cond_b7
    iget-object v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 1690
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-nez v1, :cond_d1

    .line 1691
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_46

    const-string/jumbo v0, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    :cond_d1
    const-string v1, "data_warning_notification_bool"

    .line 1699
    invoke-static {v0, v1, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "data_limit_notification_bool"

    .line 1701
    invoke-static {v0, v1, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v11

    const-string v1, "data_rapid_notification_bool"

    .line 1703
    invoke-static {v0, v1, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v21

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    move-result v0

    const/16 v22, 0x0

    const-wide/16 v23, -0x1

    if-eqz v0, :cond_1a8

    .line 1708
    iget-object v0, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fb

    const/4 v0, 0x0

    goto :goto_10b

    .line 1709
    :cond_fb
    iget-object v0, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10b
    if-eqz v0, :cond_11e

    .line 1710
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberIdToSlotId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_120

    :cond_11e
    move/from16 v0, v20

    .line 1711
    :goto_120
    iget-object v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1712
    iget-boolean v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    if-eqz v1, :cond_14e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    move-result v1

    if-eqz v1, :cond_14e

    cmp-long v1, v25, v23

    if-eqz v1, :cond_14e

    iget v1, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    if-ne v1, v0, :cond_14e

    iget-wide v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J

    cmp-long v0, v0, v23

    if-nez v0, :cond_14e

    move v0, v15

    goto :goto_150

    :cond_14e
    move/from16 v0, v22

    :goto_150
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_17e

    .line 1717
    iget-object v1, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/16 v20, -0x5

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move-wide/from16 v28, v4

    move-wide/from16 v4, v18

    move-object/from16 v30, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v27

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidBytes(Landroid/net/NetworkTemplate;JJII)J

    move-result-wide v6

    cmp-long v0, v25, v6

    if-gez v0, :cond_17c

    const/4 v2, -0x5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide v3, v6

    .line 1720
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    :cond_17c
    move-wide v1, v6

    goto :goto_184

    :cond_17e
    move-wide/from16 v28, v4

    move-object/from16 v30, v6

    move/from16 v20, v7

    .line 1723
    :goto_184
    iget-boolean v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringState:Z

    if-eqz v0, :cond_1ae

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDefaultDataPhoneId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultDataPhoneId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tetheringTotalBytes : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    :cond_1a8
    move-wide/from16 v28, v4

    move-object/from16 v30, v6

    move/from16 v20, v7

    :cond_1ae
    :goto_1ae
    if-eqz v10, :cond_1db

    move-wide/from16 v3, v28

    move-object/from16 v6, v30

    .line 1731
    invoke-virtual {v6, v3, v4}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_1d8

    invoke-virtual {v6, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 1732
    iget-wide v0, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v16

    if-ltz v0, :cond_1c8

    move v0, v15

    goto :goto_1ca

    :cond_1c8
    move/from16 v0, v22

    :goto_1ca
    if-nez v0, :cond_1d8

    const/16 v2, 0x22

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v28, v3

    .line 1734
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_1dd

    :cond_1d8
    move-wide/from16 v28, v3

    goto :goto_1dd

    :cond_1db
    move-object/from16 v6, v30

    :goto_1dd
    if-eqz v11, :cond_215

    move-wide/from16 v3, v28

    .line 1741
    invoke-virtual {v6, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_210

    iget-boolean v0, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-nez v0, :cond_210

    .line 1742
    iget-wide v0, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v16

    if-ltz v0, :cond_1f3

    move v0, v15

    goto :goto_1f5

    :cond_1f3
    move/from16 v0, v22

    :goto_1f5
    if-eqz v0, :cond_201

    const/16 v2, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    .line 1744
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    goto :goto_215

    :cond_201
    const/16 v2, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    .line 1746
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    .line 1747
    iget-object v0, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    goto :goto_215

    .line 1750
    :cond_210
    iget-object v0, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    :cond_215
    :goto_215
    if-eqz v21, :cond_290

    .line 1756
    iget-wide v0, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v23

    if-eqz v0, :cond_290

    .line 1757
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long v23, v13, v10

    .line 1760
    iget-object v1, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v23

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    sub-long v18, v18, v16

    mul-long v18, v18, v0

    .line 1763
    div-long v2, v18, v10

    .line 1764
    iget-wide v4, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, 0x3

    mul-long/2addr v4, v10

    const-wide/16 v10, 0x2

    div-long/2addr v4, v10

    .line 1766
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v7, :cond_268

    .line 1767
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rapid usage considering recent "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " projected "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " alert "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_268
    iget-wide v0, v6, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v10, 0x5265c00

    sub-long v10, v13, v10

    cmp-long v0, v0, v10

    if-ltz v0, :cond_275

    move/from16 v22, v15

    :cond_275
    cmp-long v0, v2, v4

    if-lez v0, :cond_290

    if-nez v22, :cond_290

    const/16 v7, 0x2d

    const-wide/16 v10, 0x0

    .line 1774
    iget-object v1, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v23

    move-wide v4, v13

    .line 1775
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object v1, v6

    move v2, v7

    move-wide v3, v10

    .line 1774
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V

    :cond_290
    :goto_290
    add-int/lit8 v7, v20, -0x1

    const-wide/32 v10, 0x200000

    goto/16 :goto_32

    .line 1781
    :cond_297
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v15

    :goto_29c
    if-ltz v0, :cond_2b2

    .line 1782
    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1783
    iget-object v2, v8, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2af

    .line 1784
    invoke-virtual {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    :cond_2af
    add-int/lit8 v0, v0, -0x1

    goto :goto_29c

    :cond_2b2
    const-wide/32 v0, 0x200000

    .line 1788
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final updatePowerSaveWhitelistUL()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 997
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 998
    array-length v2, v0

    move v3, v1

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1b

    aget v5, v0, v3

    .line 999
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1002
    :cond_1b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    invoke-virtual {v0, v4}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 1003
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1004
    array-length v2, v0

    :goto_27
    if-ge v1, v2, :cond_33

    aget v3, v0, v1

    .line 1005
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    return-void
.end method

.method public updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6451
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v0, p1, :cond_7

    return-void

    .line 6455
    :cond_7
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 6460
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 6462
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v1, :cond_19

    .line 6465
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    xor-int/lit8 v0, v0, 0x1

    .line 6466
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    const/4 v1, 0x0

    goto :goto_23

    .line 6470
    :cond_19
    iget-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/lit8 p1, p1, 0x1

    .line 6471
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    move v2, v0

    move v0, p1

    move p1, v1

    move v1, v2

    :goto_23
    if-eqz v0, :cond_2b

    const-string/jumbo v0, "low_power"

    .line 6475
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 6479
    :cond_2b
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    return-void
.end method

.method public final updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V
    .registers 4

    .line 4643
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p2

    .line 4645
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result p3

    if-eq p2, p3, :cond_d

    .line 4647
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    :cond_d
    return-void
.end method

.method public updateRestrictedModeAllowlistUL()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4665
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4666
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const-string/jumbo v1, "updateRestrictedModeAllowlist"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 4679
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1a

    .line 4681
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallRestrictedModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 4683
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    return-void
.end method

.method public updateRestrictedModeForUidUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4690
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateBlockedReasonsForRestrictedModeUL(I)I

    move-result v0

    .line 4694
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x4

    .line 4698
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictedModeFirewallRule(I)I

    move-result v0

    .line 4697
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    :cond_10
    return-void
.end method

.method public final updateRestrictionRulesForUidUL(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5354
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    const/4 v0, -0x1

    .line 5355
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 5356
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 5360
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeForUidUL(I)V

    .line 5363
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 5366
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    return-void
.end method

.method public updateRuleForAppIdleUL(II)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4960
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-wide/32 v0, 0x200000

    .line 4962
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4966
    :cond_25
    :try_start_25
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4967
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_83

    const-string v3, "NetworkPolicy"

    const/4 v4, 0x2

    if-nez v2, :cond_5d

    :try_start_34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 4968
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result p2

    if-nez p2, :cond_5d

    .line 4969
    invoke-virtual {p0, v4, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4970
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p0, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateRuleForAppIdleUL DENY "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :cond_5d
    const/4 p2, 0x0

    .line 4972
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    .line 4973
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz p0, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateRuleForAppIdleUL "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to DEFAULT"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_34 .. :try_end_7f} :catchall_83

    .line 4976
    :cond_7f
    :goto_7f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_83
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4977
    throw p0
.end method

.method public updateRuleForDeviceIdleUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4790
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    return-void
.end method

.method public updateRuleForLowPowerStandbyUL(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4861
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4865
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    move-result v0

    .line 4866
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_22

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_22

    .line 4868
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4869
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    goto :goto_2b

    .line 4871
    :cond_22
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 v0, 0x0

    .line 4872
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    :goto_2b
    return-void
.end method

.method public updateRuleForRestrictPowerUL(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4774
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    return-void
.end method

.method public final updateRulesForAppIdleParoleUL()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4986
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 4989
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4990
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v5, v2, :cond_65

    .line 4992
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 4993
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v9

    if-nez v9, :cond_26

    goto :goto_62

    .line 4996
    :cond_26
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getBlockedReasons(I)I

    move-result v9

    if-nez v1, :cond_33

    const v10, 0xffff

    and-int/2addr v9, v10

    if-nez v9, :cond_33

    goto :goto_62

    :cond_33
    if-nez v0, :cond_3c

    .line 5002
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v9

    if-eqz v9, :cond_3c

    goto :goto_3d

    :cond_3c
    move v7, v4

    :goto_3d
    if-eqz v7, :cond_5a

    .line 5003
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 5004
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 5005
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 5006
    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5f

    .line 5008
    :cond_5a
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5010
    :goto_5f
    invoke-virtual {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_65
    if-eqz v1, :cond_68

    goto :goto_69

    :cond_68
    move v7, v6

    .line 5012
    :goto_69
    invoke-virtual {p0, v6, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    return-void
.end method

.method public updateRulesForAppIdleUL()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    .line 4930
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4932
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4933
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4936
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4937
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_53

    .line 4938
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4939
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v7}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v7

    .line 4940
    array-length v8, v7

    move v9, v6

    :goto_2e
    if-ge v9, v8, :cond_50

    aget v10, v7, v9

    .line 4941
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-virtual {v11, v12, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11

    if-nez v11, :cond_4d

    .line 4945
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v11

    if-nez v11, :cond_4d

    .line 4946
    invoke-virtual {v2, v10, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 4952
    :cond_53
    invoke-virtual {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_5a

    .line 4954
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4955
    throw p0
.end method

.method public final updateRulesForDataUsageRestrictionsUL(I)V
    .registers 6

    const-wide/32 v0, 0x200000

    .line 5410
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5415
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_25

    .line 5417
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5418
    throw p0
.end method

.method public final updateRulesForDataUsageRestrictionsULInner(I)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5423
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForAllowlistRulesUL(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 5424
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_25

    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to update restrict data rules for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    .line 5428
    :cond_26
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 5429
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v4

    .line 5430
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v5

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    move v6, v3

    :goto_3c
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    const/high16 v8, 0x40000

    if-eqz v5, :cond_49

    move v9, v8

    goto :goto_4a

    :cond_49
    move v9, v3

    :goto_4a
    or-int/2addr v9, v3

    .line 5438
    iget-boolean v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/high16 v11, 0x10000

    if-eqz v10, :cond_53

    move v10, v11

    goto :goto_54

    :cond_53
    move v10, v3

    :goto_54
    or-int/2addr v9, v10

    const/high16 v10, 0x20000

    if-eqz v6, :cond_5b

    move v12, v10

    goto :goto_5c

    :cond_5b
    move v12, v3

    :goto_5c
    or-int/2addr v9, v12

    .line 5441
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v12

    if-eqz v12, :cond_64

    goto :goto_65

    :cond_64
    move v10, v3

    :goto_65
    or-int/2addr v10, v3

    if-eqz v4, :cond_69

    goto :goto_6a

    :cond_69
    move v8, v3

    :goto_6a
    or-int/2addr v8, v10

    if-eqz v2, :cond_6e

    goto :goto_6f

    :cond_6e
    move v11, v3

    :goto_6f
    or-int/2addr v8, v11

    .line 5449
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v10

    .line 5450
    :try_start_73
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v11, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v11

    .line 5452
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v12

    .line 5454
    invoke-virtual {v12, v11}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 5456
    iget v13, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const v14, 0xffff

    and-int/2addr v13, v14

    or-int/2addr v13, v9

    iput v13, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5458
    iget v13, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v13, v14

    or-int/2addr v13, v8

    iput v13, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5460
    invoke-virtual {v11}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 5462
    iget v13, v12, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5463
    iget v14, v11, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5464
    iget v15, v12, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    if-ne v13, v14, :cond_9d

    goto :goto_a3

    .line 5466
    :cond_9d
    invoke-virtual {v11}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v16

    move/from16 v3, v16

    .line 5468
    :goto_a3
    sget-boolean v16, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v16, :cond_10b

    const-string v7, "NetworkPolicy"

    move/from16 v17, v15

    .line 5469
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string/jumbo v3, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): isForeground="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDenied="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAllowed="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRestrictedByAdmin="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oldBlockedState="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newBlockedState="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newBlockedMeteredReasons="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5476
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newAllowedMeteredReasons="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5477
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5469
    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    :cond_10b
    move/from16 v18, v3

    move/from16 v17, v15

    .line 5480
    :goto_10f
    monitor-exit v10
    :try_end_110
    .catchall {:try_start_73 .. :try_end_110} :catchall_141

    if-eq v13, v14, :cond_11a

    .line 5482
    invoke-virtual {v0, v1, v14, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    move/from16 v3, v18

    .line 5485
    invoke-virtual {v0, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    :cond_11a
    const/high16 v2, 0x60000

    and-int v3, v13, v2

    if-nez v3, :cond_124

    and-int v3, v14, v2

    if-eqz v3, :cond_12d

    :cond_124
    and-int/2addr v2, v14

    if-eqz v2, :cond_129

    const/4 v2, 0x1

    goto :goto_12a

    :cond_129
    const/4 v2, 0x0

    .line 5496
    :goto_12a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkDenylist(IZ)V

    :cond_12d
    const/high16 v2, 0x50000

    and-int v3, v17, v2

    if-nez v3, :cond_137

    and-int v3, v8, v2

    if-eqz v3, :cond_140

    :cond_137
    and-int/2addr v2, v8

    if-eqz v2, :cond_13c

    const/4 v3, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v3, 0x0

    .line 5503
    :goto_13d
    invoke-virtual {v0, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkAllowlist(IZ)V

    :cond_140
    return-void

    :catchall_141
    move-exception v0

    .line 5480
    :try_start_142
    monitor-exit v10
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v0
.end method

.method public updateRulesForDeviceIdleUL()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    .line 4779
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4781
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 4784
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4785
    throw p0
.end method

.method public final updateRulesForGlobalChangeAL(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    .line 5022
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string v3, "R"

    goto :goto_1b

    :cond_19
    const-string v3, "-"

    .line 5024
    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5023
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5027
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 5028
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 5029
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 5030
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    if-eqz p1, :cond_39

    .line 5034
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3d

    .line 5038
    :cond_39
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5039
    throw p0
.end method

.method public updateRulesForLowPowerStandbyUL()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForLowPowerStandbyUL"

    .line 4837
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4839
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_3f

    .line 4840
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4841
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_1b
    if-ltz v2, :cond_39

    .line 4842
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4843
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getEffectiveBlockedReasons(I)I

    move-result v6

    .line 4844
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v7

    if-eqz v7, :cond_36

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_36

    .line 4846
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 4849
    :cond_39
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallLowPowerStandbyModeRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    goto :goto_44

    :cond_3f
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 4852
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_48

    .line 4855
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_48
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4856
    throw p0
.end method

.method public final updateRulesForPowerRestrictionsUL(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const/4 v0, -0x1

    .line 5529
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    return-void
.end method

.method public final updateRulesForPowerRestrictionsUL(II)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5534
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(II)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IZ)V

    return-void
.end method

.method public final updateRulesForPowerRestrictionsUL(IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    .line 5546
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_21

    const-string v3, "I"

    goto :goto_23

    :cond_21
    const-string v3, "-"

    .line 5549
    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5547
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5552
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IZ)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_34

    .line 5554
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5555
    throw p0
.end method

.method public final updateRulesForPowerRestrictionsULInner(IZ)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5560
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForDenylistRulesUL(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 5561
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_27

    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to update restrict power rules for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    .line 5565
    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    .line 5566
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidTop(I)Z

    move-result v4

    .line 5568
    iget-boolean v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v5

    .line 5573
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    monitor-enter v6

    .line 5574
    :try_start_39
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v7

    .line 5576
    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTmpUidBlockedState:Landroid/util/SparseArray;

    invoke-static {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getOrCreateUidBlockedStateForUid(Landroid/util/SparseArray;I)Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    move-result-object v8

    .line 5578
    invoke-virtual {v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V

    .line 5582
    iget-boolean v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_50

    move v9, v10

    goto :goto_51

    :cond_50
    move v9, v11

    :goto_51
    or-int/2addr v9, v11

    .line 5583
    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v13, 0x2

    if-eqz v12, :cond_59

    move v12, v13

    goto :goto_5a

    :cond_59
    move v12, v11

    :goto_5a
    or-int/2addr v9, v12

    .line 5584
    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    const/16 v14, 0x20

    if-eqz v12, :cond_63

    move v12, v14

    goto :goto_64

    :cond_63
    move v12, v11

    :goto_64
    or-int/2addr v9, v12

    const/4 v12, 0x4

    if-eqz v2, :cond_6a

    move v15, v12

    goto :goto_6b

    :cond_6a
    move v15, v11

    :goto_6b
    or-int/2addr v9, v15

    .line 5586
    iget v15, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    or-int/2addr v9, v15

    .line 5588
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v15

    or-int/2addr v15, v11

    if-eqz v3, :cond_7b

    goto :goto_7c

    :cond_7b
    move v13, v11

    :goto_7c
    or-int/2addr v13, v15

    if-eqz v4, :cond_80

    goto :goto_81

    :cond_80
    move v14, v11

    :goto_81
    or-int/2addr v13, v14

    .line 5591
    invoke-virtual {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v10

    if-eqz v10, :cond_89

    goto :goto_8a

    :cond_89
    move v12, v11

    :goto_8a
    or-int v10, v13, v12

    .line 5593
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveExceptIdleUL(I)Z

    move-result v12

    if-eqz v12, :cond_93

    goto :goto_95

    :cond_93
    move/from16 v16, v11

    :goto_95
    or-int v10, v10, v16

    .line 5595
    iget v12, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    .line 5597
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isAllowlistedFromLowPowerStandbyUL(I)Z

    move-result v12

    if-eqz v12, :cond_a5

    const/16 v12, 0x40

    goto :goto_a6

    :cond_a5
    move v12, v11

    :goto_a6
    or-int/2addr v10, v12

    .line 5600
    iget v12, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v13, -0x10000

    and-int/2addr v12, v13

    or-int/2addr v9, v12

    iput v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 5602
    iget v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v9, v13

    or-int/2addr v9, v10

    iput v9, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 5604
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->updateEffectiveBlockedReasons()V

    .line 5606
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v9, :cond_117

    const-string v9, "NetworkPolicy"

    .line 5607
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), isIdle: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRestrictPower: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceIdleMode: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isForeground="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTop="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWhitelisted="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oldUidBlockedState="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newUidBlockedState="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    :cond_117
    iget v2, v8, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 5619
    iget v3, v7, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    if-ne v2, v3, :cond_11e

    goto :goto_122

    .line 5622
    :cond_11e
    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->deriveUidRules()I

    move-result v11

    .line 5623
    :goto_122
    monitor-exit v6
    :try_end_123
    .catchall {:try_start_39 .. :try_end_123} :catchall_12c

    if-eq v2, v3, :cond_12b

    .line 5625
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleBlockedReasonsChanged(III)V

    .line 5629
    invoke-virtual {v0, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->postUidRulesChangedMsg(II)V

    :cond_12b
    return-void

    :catchall_12c
    move-exception v0

    .line 5623
    :try_start_12d
    monitor-exit v6
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method public updateRulesForPowerSaveUL()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    .line 4763
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4765
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 4768
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4769
    throw p0
.end method

.method public final updateRulesForRestrictBackgroundUL()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    .line 5123
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    const-string/jumbo v2, "updateRulesForRestrictBackground"

    .line 5125
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 5128
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5129
    throw p0
.end method

.method public final updateRulesForRestrictPowerUL()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    .line 5110
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5112
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 5113
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    const-string/jumbo v2, "updateRulesForRestrictPower"

    .line 5114
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    .line 5117
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5118
    throw p0
.end method

.method public final updateRulesForTempWhitelistChangeUL(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5177
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 5178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_29

    .line 5180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 5181
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const/4 v4, -0x1

    .line 5183
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 5184
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 5185
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 5187
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    return-void
.end method

.method public final updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .registers 6

    .line 4826
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_1c

    .line 4827
    invoke-virtual {p2, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4828
    invoke-virtual {p2, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 4829
    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 4830
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final updateRulesForWhitelistedPowerSaveUL(IZI)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    if-eqz p2, :cond_1d

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    move v1, p2

    .line 4918
    :goto_9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 4920
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 4923
    :cond_16
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    goto :goto_1d

    .line 4921
    :cond_1a
    :goto_1a
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRuleUL(III)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    if-eqz p1, :cond_5b

    .line 4802
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 4803
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 4804
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_34

    .line 4805
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4806
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4807
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p3, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    const/4 v3, 0x3

    if-ne p2, v3, :cond_31

    .line 4809
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4813
    :cond_34
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3b
    if-ltz p1, :cond_57

    .line 4814
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$UidState;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4815
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_54
    add-int/lit8 p1, p1, -0x1

    goto :goto_3b

    .line 4818
    :cond_57
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    goto :goto_60

    :cond_5b
    const/4 p1, 0x0

    const/4 p3, 0x2

    .line 4820
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    :goto_60
    return-void
.end method

.method public updateSubscriptions()V
    .registers 13

    .line 2527
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v0, "updateSubscriptions"

    const-wide/32 v1, 0x200000

    .line 2528
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2531
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 2533
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 2532
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2535
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    new-instance v5, Landroid/util/SparseArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 2537
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2539
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 2540
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 2541
    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 2542
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    .line 2543
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 2544
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_88

    :cond_6e
    const-string v9, "NetworkPolicy"

    .line 2546
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing subscriberId for subId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :goto_88
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    move-result-object v8

    .line 2549
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2551
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2553
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v8, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v8

    if-eqz v8, :cond_9f

    .line 2555
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    :cond_9f
    const-string v8, "NetworkPolicy"

    .line 2557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing CarrierConfig for subId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 2561
    :cond_b6
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2562
    :try_start_b9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    move v7, v3

    .line 2563
    :goto_c0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_d8

    .line 2564
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2565
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2564
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    .line 2568
    :cond_d8
    iput-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 2570
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2571
    :goto_df
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_f7

    .line 2572
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToCarrierConfig:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2573
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersistableBundle;

    .line 2572
    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    .line 2575
    :cond_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_b9 .. :try_end_f8} :catchall_fc

    .line 2577
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_fc
    move-exception p0

    .line 2575
    :try_start_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw p0
.end method

.method public final updateUidStateUL(IIJI)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    move-object v0, p0

    move v7, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    const-wide/32 v8, 0x200000

    const-string/jumbo v1, "updateUidStateUL"

    .line 4554
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4556
    :try_start_f
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/net/NetworkPolicyManager$UidState;

    const/4 v11, 0x0

    if-eqz v10, :cond_63

    .line 4557
    iget-wide v1, v10, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    cmp-long v1, v4, v1

    if-gez v1, :cond_63

    .line 4558
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_5f

    const-string v0, "NetworkPolicy"

    .line 4559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring older uid state updates; uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",procState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4560
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",oldUidState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4559
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_cc

    .line 4598
    :cond_5f
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    :cond_63
    if-eqz v10, :cond_74

    .line 4565
    :try_start_65
    iget v1, v10, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    move/from16 v12, p2

    if-ne v1, v12, :cond_76

    iget v1, v10, Landroid/net/NetworkPolicyManager$UidState;->capability:I
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_cc

    if-eq v1, v6, :cond_70

    goto :goto_76

    .line 4598
    :cond_70
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    :cond_74
    move/from16 v12, p2

    .line 4567
    :cond_76
    :goto_76
    :try_start_76
    new-instance v13, Landroid/net/NetworkPolicyManager$UidState;

    move-object v1, v13

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkPolicyManager$UidState;-><init>(IIJI)V

    .line 4569
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4570
    invoke-virtual {p0, p1, v10, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(ILandroid/net/NetworkPolicyManager$UidState;Landroid/net/NetworkPolicyManager$UidState;)V

    .line 4572
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v1

    .line 4573
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_98

    move v1, v3

    goto :goto_99

    :cond_98
    move v1, v11

    :goto_99
    if-eqz v1, :cond_af

    .line 4575
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(II)V

    .line 4576
    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_a5

    .line 4577
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4579
    :cond_a5
    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_ac

    .line 4580
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4582
    :cond_ac
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 4584
    :cond_af
    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-eqz v2, :cond_c8

    .line 4586
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v2

    .line 4587
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z

    move-result v4

    if-eq v2, v4, :cond_be

    move v11, v3

    :cond_be
    if-eqz v11, :cond_c8

    if-nez v1, :cond_c5

    .line 4590
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    .line 4592
    :cond_c5
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V
    :try_end_c8
    .catchall {:try_start_76 .. :try_end_c8} :catchall_cc

    .line 4598
    :cond_c8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_cc
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4599
    throw v0
.end method

.method public final updateVideoCallLocked()V
    .registers 12

    .line 7248
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "updateVideoCallLocked()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    :cond_c
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 7251
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 7252
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_1b

    .line 7255
    :cond_36
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_40

    goto :goto_1b

    .line 7260
    :cond_40
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 7261
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 7262
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 7263
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3

    .line 7265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsVideoCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mHasEpdgCall:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7266
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    if-nez v5, :cond_1b

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v5, :cond_1b

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 7267
    iget-object v2, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyVideoCallOverLimit(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_1b

    :cond_9f
    return-void
.end method

.method public final upgradeDefaultBackgroundDataUL()V
    .registers 4

    .line 3143
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 3144
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_restrict_background_data"

    const/4 v2, 0x0

    .line 3143
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    return-void
.end method

.method public final upgradeWifiMeteredOverride()V
    .registers 11

    .line 3161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3162
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 3163
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 3164
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 3165
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4e

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_4e

    .line 3167
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3168
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v5

    .line 3169
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v5, 0x0

    goto :goto_44

    :cond_3a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_44
    iget-boolean v4, v4, Landroid/net/NetworkPolicy;->metered:Z

    .line 3170
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3169
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3175
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_cd

    .line 3177
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_59

    return-void

    .line 3180
    :cond_59
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3181
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3182
    :goto_67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_bb

    .line 3183
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 3184
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3185
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_7b

    const-string v5, "NetworkPolicy"

    .line 3187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; upgrading metered hint"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b2

    const/4 v5, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v5, 0x2

    .line 3190
    :goto_b3
    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3191
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 3197
    :cond_bb
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3198
    :try_start_be
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_ca

    .line 3199
    :try_start_c1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3200
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_c7

    .line 3201
    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_ca

    return-void

    :catchall_c7
    move-exception p0

    .line 3200
    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw p0

    :catchall_ca
    move-exception p0

    .line 3201
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ca

    throw p0

    :catchall_cd
    move-exception p0

    .line 3175
    :try_start_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method public final waitForAdminData()V
    .registers 4

    .line 6788
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6789
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string v2, "Wait for admin data"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_17
    return-void
.end method

.method public writeFirewallPolicyAL()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFirewallPoliciesLock"
        }
    .end annotation

    const-string v0, "firewall-policy"

    .line 7530
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v1, :cond_e

    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "writeFirewallPolicyAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    .line 7533
    :try_start_f
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_51

    .line 7535
    :try_start_15
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 7536
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v4, 0x0

    .line 7537
    :goto_1f
    sget-object v5, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_47

    .line 7538
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 7539
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-nez v5, :cond_32

    goto :goto_44

    .line 7543
    :cond_32
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "uid"

    .line 7544
    invoke-static {v3, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v6, "policy"

    .line 7545
    invoke-static {v3, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 7546
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 7548
    :cond_47
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 7550
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_4f} :catch_50

    goto :goto_58

    :catch_50
    move-object v1, v2

    :catch_51
    if-eqz v1, :cond_58

    .line 7553
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public final writeNetstatsFiles()V
    .registers 10

    const-string p0, "NetworkPolicy"

    const-string v0, "Copy netStats files"

    .line 7873
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/netstats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7876
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 7877
    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "Dir doesn\'t exists. Make dir."

    .line 7878
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 7879
    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 7882
    :cond_25
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/apexdata/com.android.tethering/netstats"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7883
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 7884
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_38
    if-ge v4, v3, :cond_5f

    aget-object v5, v2, v4

    .line 7885
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 7886
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/nio/file/CopyOption;

    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_52} :catch_55

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :catch_55
    move-exception v0

    const-string/jumbo v1, "writeNetstatsFiles, Copy error: "

    .line 7891
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7892
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    return-void
.end method

.method public writePolicyAL()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    const-string/jumbo v0, "revoked-restrict-background"

    const-string/jumbo v1, "uid-policy"

    const-string/jumbo v2, "network-policy"

    const-string/jumbo v3, "whitelist"

    const-string/jumbo v4, "policy-list"

    .line 3206
    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v5, :cond_1b

    const-string v5, "NetworkPolicy"

    const-string/jumbo v6, "writePolicyAL()"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v5, 0x0

    .line 3210
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_17c

    .line 3212
    :try_start_22
    invoke-static {v6}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v7

    .line 3213
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v5, v8}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3215
    invoke-interface {v7, v5, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    const/16 v9, 0xe

    .line 3216
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v8, "restrictBackground"

    .line 3217
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    move v9, v8

    .line 3220
    :goto_40
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_122

    .line 3221
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 3222
    iget-object v11, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3223
    invoke-static {v11}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v12

    if-nez v12, :cond_5a

    goto/16 :goto_11e

    .line 3225
    :cond_5a
    invoke-interface {v7, v5, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "networkTemplate"

    .line 3226
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v13

    invoke-static {v7, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3227
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_73

    move-object v12, v5

    goto :goto_81

    .line 3228
    :cond_73
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :goto_81
    if-eqz v12, :cond_89

    const-string/jumbo v13, "subscriberId"

    .line 3230
    invoke-interface {v7, v5, v13, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3232
    :cond_89
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_95

    const/4 v12, 0x1

    goto :goto_96

    :cond_95
    move v12, v8

    :goto_96
    const-string/jumbo v13, "subscriberIdMatchRule"

    .line 3235
    invoke-static {v7, v13, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3236
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ba

    const-string/jumbo v12, "networkId"

    .line 3238
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3237
    invoke-interface {v7, v5, v12, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ba
    const-string/jumbo v12, "templateMetered"

    .line 3241
    invoke-virtual {v11}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v11

    .line 3240
    invoke-static {v7, v12, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v11, "cycleStart"

    .line 3242
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v12, v12, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 3243
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v12

    .line 3242
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v11, "cycleEnd"

    .line 3244
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v12, v12, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 3245
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v12

    .line 3244
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v11, "cyclePeriod"

    .line 3246
    iget-object v12, v10, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v12, v12, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 3247
    invoke-static {v12}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v12

    .line 3246
    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v11, "warningBytes"

    .line 3248
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v11, "limitBytes"

    .line 3249
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v11, "lastWarningSnooze"

    .line 3250
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v11, "lastLimitSnooze"

    .line 3251
    iget-wide v12, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v7, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v11, "metered"

    .line 3252
    iget-boolean v12, v10, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v7, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v11, "inferred"

    .line 3253
    iget-boolean v10, v10, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v7, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 3254
    invoke-interface {v7, v5, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_11e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_40

    :cond_122
    move v2, v8

    .line 3258
    :goto_123
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_129} :catch_17b

    const-string/jumbo v10, "uid"

    if-ge v2, v9, :cond_14f

    .line 3259
    :try_start_12e
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 3260
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    if-nez v11, :cond_13d

    goto :goto_14c

    .line 3265
    :cond_13d
    invoke-interface {v7, v5, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3266
    invoke-static {v7, v10, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v9, "policy"

    .line 3267
    invoke-static {v7, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3268
    invoke-interface {v7, v5, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 3271
    :cond_14f
    invoke-interface {v7, v5, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3274
    invoke-interface {v7, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3277
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_15b
    if-ge v8, v1, :cond_16f

    .line 3279
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundAllowlistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3280
    invoke-interface {v7, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3281
    invoke-static {v7, v10, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 3282
    invoke-interface {v7, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_15b

    .line 3285
    :cond_16f
    invoke-interface {v7, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3287
    invoke-interface {v7}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3289
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_17a} :catch_17b

    goto :goto_183

    :catch_17b
    move-object v5, v6

    :catch_17c
    if-eqz v5, :cond_183

    .line 3292
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_183
    :goto_183
    return-void
.end method
