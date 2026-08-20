.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$Policy;,
        Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;,
        Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;,
        Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;,
        Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;,
        Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;,
        Lcom/android/server/am/MARsPolicyManager$Lock;
    }
.end annotation


# static fields
.field public static final ACTION_APP_SLEEP_NOTIFY:Ljava/lang/String; = "com.sec.android.mars.APP_SLEEP_NOTIFY"

.field public static final ACTION_FGS_ANOMALY:Ljava/lang/String; = "com.sec.android.sdhms.action.FGS_ANOMALY"

.field public static final ACTION_JOB_RESTRICT_UID:Ljava/lang/String; = "android.intent.ACTION_JOB_RESTRICT_UID"

.field public static final APPLOCKER_KILL_TYPE:I = 0x8

.field public static AUFAllowBucketSize:I = 0x0

.field public static final AUTORUN_KILL_TYPE:I = 0xa

.field public static final AUTO_DISABLE_NOTI_REFERENCE_TIME:J = 0x4d3f6400L

.field public static final AUTO_DISABLE_REFERENCE_TIME:J = 0x5265c000L

.field public static final AUTO_LEVELUP_REFERENCE_TIME:J = 0x5265c00L

.field public static App_StartUp_History:Z = false

.field public static final DEFAULT_KILL_TYPE:I = 0x9

.field public static final DEFAULT_LEVEL:I = 0x0

.field public static final DISABLE_LEVEL:I = 0x4

.field public static ENABLE_KILL_LONG_RUNNING_PROCESS:Z = false

.field public static final ERROR_TYPE:Ljava/lang/String; = "excessive_fgs"

.field public static final EXTRA_APP_SLEEP_NOTIFY:Ljava/lang/String; = "type"

.field public static final EXTRA_NAME_RESTRICT:Ljava/lang/String; = "restrict"

.field public static final EXTRA_NAME_UID:Ljava/lang/String; = "uid"

.field public static final FAS_LEVEL:I = 0x2

.field public static FGS_BATTERY_USAGE_THRESHOLD:I = 0x0

.field public static final FORCESTOP_LEVEL:I = 0x3

.field public static final FREECESS_KILL_TYPE:I = 0x1a

.field public static final FREECESS_LEVEL:I = 0x1

.field public static final GAME_LEVEL:I = 0x8

.field public static GlobalModelWithChinaSIM:Z = false

.field public static final KILL_TYPE_DEFAULT:I = 0x1

.field public static final KILL_TYPE_MAX:I = 0x10

.field public static final KILL_TYPE_PKG_FREEZE:I = 0x10

.field public static final KILL_TYPE_PKG_RESTART:I = 0x8

.field public static final KILL_TYPE_SKIP_ADJ_NONE:I = 0x2

.field public static final KILL_TYPE_SKIP_ADJ_UNDER_SERVICE:I = 0x4

.field public static final LEVEL_CHANGE_ABNORMAL_APP_DETECTED:I = 0x10

.field public static final LEVEL_CHANGE_APPIDLE_STATUS_CHANGE:I = 0x400

.field public static final LEVEL_CHANGE_COMPONENT_STARTED:I = 0x1000

.field public static final LEVEL_CHANGE_MANUAL_DISABLE:I = 0x80

.field public static final LEVEL_CHANGE_MANUAL_ENABLE:I = 0x200

.field public static final LEVEL_CHANGE_MANUAL_SLEEP:I = 0x40

.field public static final LEVEL_CHANGE_NOT_USED_30DAYS:I = 0x8

.field public static final LEVEL_CHANGE_NOT_USED_30DAYS_CANDIDATE:I = 0x4

.field public static final LEVEL_CHANGE_PACKAGE_ENABLED:I = 0x800

.field public static final LEVEL_CHANGE_SET_DEEPSLEEP:I = 0x2000

.field public static final LEVEL_CHANGE_SET_FAS_OFF:I = 0x100

.field public static final LEVEL_CHANGE_SET_FAS_ON:I = 0x20

.field public static final LEVEL_CHANGE_STAY_IN_RAREBUCKET:I = 0x2

.field public static final LEVEL_CHANGE_STAY_IN_RAREBUCKET_CANDIDATE:I = 0x1

.field public static final MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

.field public static MARs_ENABLE:Z = false

.field public static final MPSM_LEVEL:I = 0x9

.field public static final POLICY_NUM_APPLOCKER:I = 0x1

.field public static final POLICY_NUM_AUTORUN:I = 0x2

.field public static final POLICY_NUM_DISABLER:I = 0x8

.field public static final POLICY_NUM_FORCE:I = 0x0

.field public static final POLICY_NUM_FREECESS:I = 0x4

.field public static final POLICY_NUM_GAME:I = 0x9

.field public static final POLICY_NUM_MPSM:I = 0xa

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_UDS:I = 0x5

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_DISABLER:I = 0x1a

.field public static final POLICY_TARGET_CATEGORY_FREECESS:I = 0x19

.field public static final POLICY_TARGET_CATEGORY_GAME:I = 0x1b

.field public static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field public static final POLICY_TARGET_CATEGORY_MPSM:I = 0x1c

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field public static final SBIKE_LEVEL:I = 0x7

.field public static final SDHMS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.sdhms"

.field public static final SERIAL_NO:Ljava/lang/String;

.field public static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field public static final SPECIFIC_PACKAGE:Ljava/lang/String; = "specificpackage"

.field public static final SPECIFIC_PACKAGE_CNT:Ljava/lang/String; = "specificpackagecnt"

.field public static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field public static final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J = 0x1b7740L

.field public static final UDS_LEVEL:I = 0x6

.field public static isChinaModel:Z


# instance fields
.field public final BUB_ONOFF:Ljava/lang/String;

.field public ENABLE_RESTRICTED_BUCKET:Z

.field public KEEP_NO_FILTER_MIN_DURATION:J

.field public THRESHOLD_POWER_USAGE:D

.field public THRESHOLD_POWER_USAGE_BACKUP:D

.field public appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public isTimeChangedForDebug:Z

.field public mAllPoliciesOn:I

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAutoDeepSleepTimeForDebug:J

.field public mAutoDisabledLockingTime:J

.field public mAutoSleepTimeForDebug:J

.field public final mBackupExpirationUptimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mCalibrationResetTime:J

.field public mCarModeOn:Z

.field public mContext:Landroid/content/Context;

.field public mContextPackageName:Ljava/lang/String;

.field public mCurrentUserId:I

.field public mDetectBadBehaviorInterval:J

.field public mDetectBadBehaviorUnfreezedCount:I

.field public mDualAppEnabled:Z

.field public mDualAppUserId:I

.field public mEnabledProfileUserIds:[I

.field public final mFGServiceStartTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstNotiSentTimeForSleep:J

.field public mFirstTimeUpdatePackages:Z

.field public mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

.field public mInitDisabledPackage:Z

.field public mIsDeviceIdleMode:Z

.field public mIsFirstNotiSentForSleep:Z

.field public mIsFirstNotiSentForSleepDismiss:Z

.field public mIsLastNotiSentTimeForDisabledDismiss:Z

.field public mIsManualMode:Z

.field public mIsOLAFEnabled:Z

.field public mLastNotiSentTimeForDisabled:J

.field public mLastPkgName:Ljava/lang/String;

.field public mLastTriggerTime:J

.field public mLastUid:I

.field public mLastUpdateTime:J

.field public mLockingTimeChanged:Z

.field public mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mManagedProfileEnabled:Z

.field public mNMs:Landroid/os/INetworkManagementService;

.field public mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

.field public mScreenOn:Z

.field public mUnusedLockingTime:J

.field public mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

.field public mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 142
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager$Lock;-><init>(Lcom/android/server/am/MARsPolicyManager$Lock-IA;)V

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    const-string/jumbo v0, "sys.config.mars_auf_bucket"

    const-string v1, "0"

    .line 162
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "none"

    .line 166
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SERIAL_NO:Ljava/lang/String;

    const/4 v0, 0x1

    .line 169
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    const/4 v0, 0x0

    .line 586
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 589
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 592
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    const/16 v0, 0x64

    .line 5534
    sput v0, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    const/16 v2, -0xa

    .line 130
    iput v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    const-wide/16 v2, 0x0

    .line 131
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    new-array v4, v0, [I

    .line 138
    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    const-wide/32 v4, 0xdbba0

    .line 140
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    const/4 v4, 0x2

    .line 141
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    .line 157
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    .line 158
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 165
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    const-wide/32 v4, 0x5265c00

    .line 168
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    .line 440
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 441
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 442
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z

    .line 590
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsOLAFEnabled:Z

    const/4 v4, 0x1

    .line 591
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 661
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 662
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 1157
    new-instance v4, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v4}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1160
    new-instance v4, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v4}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1674
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    const-wide/32 v4, 0xf731400

    .line 1675
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v6, 0x5265c000

    .line 1676
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 1677
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1678
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    .line 1679
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    .line 1680
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1681
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v4, v6

    .line 1682
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1687
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 1688
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 1690
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 1691
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    .line 1692
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 4102
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4103
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4104
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4105
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4106
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4107
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4108
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4109
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4111
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    .line 5384
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->BUB_ONOFF:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MARsPolicyManager;
    .registers 1

    .line 178
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static isIntentProhibited(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_17

    .line 2438
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "com.samsung.android.game.gos"

    .line 2439
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialProviderName(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, ".CapsuleProvider"

    .line 916
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static onSpecialProviderActions(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "com.samsung.android.bixby.agent"

    .line 922
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 923
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string v0, ".CapsuleProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    :cond_1c
    return-void
.end method


# virtual methods
.method public addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3432
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v0, :cond_5f

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3437
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->put(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3359
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    if-eqz v0, :cond_5f

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->put(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 4513
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4514
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 4516
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    const/16 v1, 0x8

    .line 4517
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4519
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    .line 4520
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4523
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_4d

    const-string p2, "EXE"

    .line 4524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_4d
    move-exception p0

    .line 4523
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final appRestrictionInfoToString(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)Ljava/lang/String;
    .registers 6

    .line 4880
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4881
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    if-eq v0, v2, :cond_21

    if-eq v0, v1, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    goto :goto_2c

    :cond_15
    const-string v0, "NSLP"

    .line 4889
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_1b
    const-string v0, "DIS-C"

    .line 4887
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_21
    const-string v0, "SLP"

    .line 4883
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_27
    const-string v0, "DIS"

    .line 4885
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4892
    :goto_2c
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result p1

    if-eqz p1, :cond_43

    if-eq p1, v2, :cond_3d

    if-eq p1, v1, :cond_37

    goto :goto_48

    :cond_37
    const-string p1, " OFF"

    .line 4896
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_3d
    const-string p1, " ON"

    .line 4894
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_43
    const-string p1, " NONE"

    .line 4898
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4900
    :goto_48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5184
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5185
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    .line 5186
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5187
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_32

    goto :goto_13

    .line 5189
    :cond_32
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 5190
    :try_start_35
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_10f

    .line 5193
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_49

    .line 5194
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    .line 5196
    :cond_49
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_6b

    :cond_56
    const/16 v4, 0x100

    .line 5197
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 5198
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 5200
    :cond_6b
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5201
    invoke-virtual {v5, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5202
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5203
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5205
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5206
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5207
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_a8

    const-string v8, "1"

    goto :goto_aa

    :cond_a8
    const-string v8, "0"

    :goto_aa
    invoke-virtual {v6, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 5208
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_b5

    goto :goto_bd

    :cond_b5
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    :goto_bd
    invoke-virtual {v6, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5209
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5210
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5211
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5212
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5213
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 5214
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    .line 5215
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5216
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5219
    :cond_10f
    :goto_10f
    monitor-exit v7

    goto/16 :goto_13

    :catchall_112
    move-exception p0

    monitor-exit v7
    :try_end_114
    .catchall {:try_start_35 .. :try_end_114} :catchall_112

    throw p0

    .line 5221
    :cond_115
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_122

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5222
    :cond_122
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12f

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_12f
    return-object v2
.end method

.method public final callRestrictAppForAllPkgs()V
    .registers 10

    .line 748
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_e

    .line 749
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 752
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_57

    .line 753
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 754
    :goto_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 755
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v1

    .line 756
    :goto_30
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    .line 757
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_4c

    .line 759
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 760
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v8, 0x4

    .line 759
    invoke-interface {v6, v7, v5, v8}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 764
    :cond_52
    monitor-exit v0

    goto :goto_57

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_54

    throw p0

    :cond_57
    :goto_57
    return-void
.end method

.method public callSetAppStandbyBucket(Ljava/lang/String;IIZ)V
    .registers 14

    .line 2105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2107
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v2, :cond_12

    .line 2108
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2110
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/16 v6, 0x700

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_24
    .catchall {:try_start_4 .. :try_end_1e} :catchall_22

    .line 2114
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    :catchall_22
    move-exception p0

    goto :goto_3d

    :catch_24
    move-exception p0

    :try_start_25
    const-string p1, "MARsPolicyManager"

    .line 2112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callSetAppStandbyBucket exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    goto :goto_1e

    :goto_3c
    return-void

    .line 2114
    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    throw p0
.end method

.method public final callSetAppStandbyBuckets(IIZ)V
    .registers 14

    .line 2119
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_e

    .line 2120
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2122
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_71

    .line 2123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter v0

    const/4 v1, 0x0

    move v3, v1

    .line 2125
    :goto_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 2126
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v1

    .line 2127
    :goto_35
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 2128
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_4f

    .line 2130
    new-instance v7, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2134
    :cond_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_1c .. :try_end_56} :catchall_6e

    .line 2135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2137
    :try_start_5a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/16 v5, 0x700

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_69

    .line 2140
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_71

    :catchall_69
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    throw p0

    :catchall_6e
    move-exception p0

    .line 2134
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0

    :cond_71
    :goto_71
    return-void
.end method

.method public canRestrictBySEP(ILjava/lang/String;I)Z
    .registers 10

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4633
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 4637
    :cond_a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4638
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    if-eqz p2, :cond_a6

    .line 4639
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_a6

    :cond_1f
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez p1, :cond_6c

    .line 4643
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p1, 0x15

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    :try_start_32
    const-string/jumbo p0, "package"

    .line 4648
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 4649
    invoke-interface {p0, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_54

    if-eq p0, v2, :cond_53

    if-ne p0, v3, :cond_46

    goto :goto_53

    .line 4659
    :cond_46
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a6

    return v4

    :cond_53
    :goto_53
    return v1

    :catch_54
    move-exception p0

    const-string p1, "MARsPolicyManager"

    .line 4655
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6c
    if-ne p1, v4, :cond_6f

    return v4

    :cond_6f
    if-ne p1, v3, :cond_72

    return v4

    :cond_72
    if-ne p1, v2, :cond_a6

    .line 4667
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 4668
    :try_start_77
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_a1

    .line 4669
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 4670
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result p0

    if-nez p0, :cond_94

    goto :goto_a1

    .line 4673
    :cond_94
    monitor-exit p1
    :try_end_95
    .catchall {:try_start_77 .. :try_end_95} :catchall_a3

    .line 4674
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a6

    return v4

    .line 4671
    :cond_a1
    :goto_a1
    :try_start_a1
    monitor-exit p1

    return v1

    :catchall_a3
    move-exception p0

    .line 4673
    monitor-exit p1
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a3

    throw p0

    :cond_a6
    :goto_a6
    return v1
.end method

.method public cancelAllPolicy()V
    .registers 12

    .line 4367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4368
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 4369
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_9a

    .line 4370
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v6, v2

    .line 4371
    :goto_24
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_96

    .line 4372
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 4373
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 4374
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    const-string v10, "CancelPolicy"

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_93

    .line 4378
    :cond_5e
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_93

    .line 4379
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_79

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    if-ne v8, v9, :cond_72

    goto :goto_79

    .line 4389
    :cond_72
    invoke-virtual {v7, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4390
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto :goto_93

    .line 4380
    :cond_79
    :goto_79
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    if-ne v8, v9, :cond_90

    .line 4382
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4383
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-nez v8, :cond_90

    const/4 v8, 0x1

    .line 4384
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4386
    :cond_90
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_93
    :goto_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 4394
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_a .. :try_end_9b} :catchall_d8

    move v1, v2

    .line 4398
    :goto_9c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c3

    const/4 v3, -0x1

    .line 4402
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 4403
    :try_start_a6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_b7

    .line 4405
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4406
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    goto :goto_b9

    :cond_b7
    move v6, v3

    move-object v3, v5

    .line 4408
    :goto_b9
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_c0

    .line 4409
    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :catchall_c0
    move-exception p0

    .line 4408
    :try_start_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw p0

    .line 4412
    :cond_c3
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4413
    :try_start_c6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_d3

    .line 4414
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 4415
    :cond_d3
    monitor-exit v0

    return-void

    :catchall_d5
    move-exception p0

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_c6 .. :try_end_d7} :catchall_d5

    throw p0

    :catchall_d8
    move-exception p0

    .line 4394
    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p0
.end method

.method public cancelDisablePolicy(Ljava/lang/String;II)Z
    .registers 10

    .line 2176
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2179
    monitor-exit v0

    return v2

    :cond_e
    const-string v3, "MARsPolicyManager"

    .line 2182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelDisablePolicy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2182
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_8e

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_63

    goto :goto_8e

    .line 2188
    :cond_63
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_73

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_73

    .line 2190
    monitor-exit v0

    return v4

    .line 2192
    :cond_73
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v1

    .line 2193
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_90

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7f

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v1, v2

    .line 2196
    :goto_80
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_8d

    if-eqz p3, :cond_89

    move v2, v4

    .line 2197
    :cond_89
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    return v4

    :cond_8d
    return v2

    .line 2186
    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit v0

    return v2

    :catchall_90
    move-exception p0

    .line 2193
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_90

    throw p0
.end method

.method public cancelPolicy(I)V
    .registers 14

    .line 3226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3228
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 3229
    :goto_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_d7

    .line 3230
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v7, v3

    .line 3231
    :goto_29
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_d3

    .line 3232
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    .line 3233
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3235
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 3236
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    const-string v11, "CancelPolicy"

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_cf

    .line 3240
    :cond_66
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-eqz v9, :cond_c6

    .line 3241
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v9, p1, :cond_c6

    const/4 v9, 0x5

    if-ne p1, v9, :cond_7a

    .line 3243
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_7a
    const/4 v9, 0x6

    if-ne p1, v9, :cond_80

    .line 3246
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_80
    const/16 v9, 0xa

    if-ne p1, v9, :cond_ae

    .line 3249
    invoke-virtual {v8, v3}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 3250
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_ae

    .line 3251
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v9

    if-eqz v9, :cond_ae

    const/4 v10, 0x3

    .line 3253
    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    :cond_ae
    const/16 v9, 0x8

    if-ne p1, v9, :cond_c3

    .line 3258
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v9

    if-nez v9, :cond_bf

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c3

    .line 3259
    :cond_bf
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 3263
    :cond_c3
    invoke-virtual {v8, v6}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3267
    :cond_c6
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-nez v9, :cond_cf

    .line 3268
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    :goto_cf
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29

    :cond_d3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_d7
    move p1, v3

    .line 3273
    :goto_d8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_f4

    .line 3274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 3275
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v5, v7, v4}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_d8

    .line 3277
    :cond_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f .. :try_end_f5} :catchall_11e

    .line 3280
    :goto_f5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_11d

    const/4 p1, -0x1

    .line 3284
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3285
    :try_start_ff
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v2, :cond_110

    .line 3287
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3288
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    goto :goto_112

    :cond_110
    move v2, p1

    move-object p1, v6

    .line 3290
    :goto_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_ff .. :try_end_113} :catchall_11a

    const/4 v1, 0x1

    .line 3291
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    :catchall_11a
    move-exception p0

    .line 3290
    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p0

    :cond_11d
    return-void

    :catchall_11e
    move-exception p0

    .line 3277
    :try_start_11f
    monitor-exit v2
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw p0
.end method

.method public cancelPolicy(Ljava/lang/String;II)V
    .registers 13

    .line 3169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3172
    :try_start_8
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    const-string v6, "CancelPolicy"

    const-wide/16 v7, 0xbb8

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3173
    monitor-exit v1

    return-void

    .line 3176
    :cond_24
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_80

    .line 3178
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_6b

    .line 3179
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_6b

    if-eq p2, v4, :cond_46

    .line 3181
    invoke-virtual {p1, p3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3182
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    :cond_46
    const/4 v3, 0x5

    if-ne p2, v3, :cond_4c

    .line 3186
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_4c
    const/4 v3, 0x6

    if-ne p2, v3, :cond_52

    .line 3189
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_52
    const/16 v3, 0xa

    if-ne p2, v3, :cond_59

    .line 3192
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    :cond_59
    if-ne p2, v4, :cond_6b

    .line 3195
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6b

    .line 3196
    :cond_68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3202
    :cond_6b
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-nez v3, :cond_80

    if-eq p2, v4, :cond_80

    .line 3203
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p1

    invoke-virtual {p2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 3206
    :cond_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_8 .. :try_end_81} :catchall_aa

    move p1, v2

    .line 3209
    :goto_82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_a9

    const/4 p2, -0x1

    .line 3213
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3214
    :try_start_8c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v3, :cond_9d

    .line 3216
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    .line 3217
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    goto :goto_9f

    :cond_9d
    move v3, p2

    move-object p2, p3

    .line 3219
    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_8c .. :try_end_a0} :catchall_a6

    .line 3220
    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_82

    :catchall_a6
    move-exception p0

    .line 3219
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw p0

    :cond_a9
    return-void

    :catchall_aa
    move-exception p0

    .line 3206
    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p0
.end method

.method public changeAutoDisabledAppState(Ljava/lang/String;IZ)V
    .registers 10

    .line 4438
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4439
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_ec

    .line 4440
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_ec

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_ec

    .line 4441
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x400

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2b

    .line 4442
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_e9

    :cond_2b
    if-eqz p3, :cond_36

    const/16 v1, 0x800

    .line 4445
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4446
    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto :goto_3d

    .line 4448
    :cond_36
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    const/4 v1, 0x4

    .line 4449
    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    :goto_3d
    if-eqz p3, :cond_4e

    .line 4453
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 4454
    invoke-virtual {p1, v5}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4455
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_61

    .line 4457
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4458
    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4459
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :goto_61
    const/4 p0, -0x1

    .line 4461
    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4462
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4463
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4464
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p2

    if-eqz p2, :cond_87

    const-string p2, "1"

    goto :goto_89

    :cond_87
    const-string p2, "0"

    :goto_89
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4465
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p2

    if-eqz p2, :cond_96

    const-string p2, "1"

    goto :goto_98

    :cond_96
    const-string p2, "0"

    :goto_98
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4466
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4467
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4468
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4469
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4470
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4471
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 4472
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    move-object p2, p0

    .line 4474
    :goto_e9
    invoke-virtual {p1, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4476
    :cond_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_3 .. :try_end_ed} :catchall_f7

    if-eqz p2, :cond_f6

    .line 4478
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_f6
    return-void

    :catchall_f7
    move-exception p0

    .line 4476
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw p0
.end method

.method public checkIsChinaModel()Z
    .registers 1

    .line 595
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    return p0
.end method

.method public checkMARsRestrictedAlarmTarget(Ljava/lang/String;I)Z
    .registers 13

    .line 1123
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1126
    monitor-exit v0

    return v2

    .line 1127
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_1c

    .line 1128
    monitor-exit v0

    return v2

    .line 1130
    :cond_1c
    iget p0, v1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    and-int/2addr p0, v3

    if-eqz p0, :cond_2b

    move p0, v3

    goto :goto_2c

    :cond_2b
    move p0, v2

    .line 1132
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_60

    .line 1134
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getMadBirdEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    xor-int/lit8 p0, v1, 0x1

    goto :goto_4b

    .line 1136
    :cond_3a
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFuryBirdEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-nez v1, :cond_4a

    if-eqz p0, :cond_4a

    move p0, v3

    goto :goto_4b

    :cond_4a
    move p0, v2

    :goto_4b
    if-eqz p0, :cond_5f

    .line 1138
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->matchFreezeState(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_5f

    move v2, v3

    :cond_5f
    return v2

    :catchall_60
    move-exception p0

    .line 1132
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public checkUnusedTargetForDeepSleep()V
    .registers 23

    move-object/from16 v0, p0

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "MARsPolicyManager"

    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 1458
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1462
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1466
    iget-wide v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-eqz v5, :cond_38

    sub-long/2addr v1, v3

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v3, :cond_31

    const-wide/16 v3, 0x2

    iget-wide v5, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v5, v3

    goto :goto_34

    :cond_31
    const-wide/32 v5, 0x4d3f6400

    :goto_34
    cmp-long v1, v1, v5

    if-lez v1, :cond_1b6

    .line 1467
    :cond_38
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v1, :cond_44

    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_46

    :cond_44
    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    :goto_46
    move-wide v12, v1

    .line 1471
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    const/4 v6, 0x0

    .line 1472
    :goto_4b
    :try_start_4b
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_100

    .line 1473
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 1474
    :goto_65
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_f8

    .line 1475
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    .line 1478
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v2

    const/16 v1, 0x100

    if-eq v2, v1, :cond_e5

    .line 1479
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v1

    if-nez v1, :cond_e5

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1480
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_a5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v17

    sub-long v1, v1, v17

    cmp-long v1, v1, v12

    if-gez v1, :cond_a5

    move v10, v4

    move-object v15, v5

    move/from16 v21, v6

    goto :goto_ef

    .line 1483
    :cond_a5
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x7

    .line 1484
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    .line 1483
    invoke-virtual {v1, v2, v9, v10, v15}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_e5

    .line 1485
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v19, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move-object v3, v10

    move v10, v4

    move v4, v15

    move-object v15, v5

    move/from16 v5, v16

    move/from16 v21, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v20

    .line 1486
    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v1, v9

    goto :goto_ea

    :cond_e5
    move v10, v4

    move-object v15, v5

    move/from16 v21, v6

    const/4 v1, 0x0

    :goto_ea
    if-eqz v1, :cond_ef

    .line 1491
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    :goto_ef
    add-int/lit8 v4, v10, 0x1

    move-object v5, v15

    move/from16 v6, v21

    const-wide/16 v9, 0x0

    goto/16 :goto_65

    :cond_f8
    move/from16 v21, v6

    add-int/lit8 v6, v21, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_4b

    .line 1495
    :cond_100
    monitor-exit v14
    :try_end_101
    .catchall {:try_start_4b .. :try_end_101} :catchall_1b7

    const/4 v15, 0x0

    .line 1497
    :goto_102
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_18f

    .line 1498
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 1499
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getPackageStoppedState(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11d

    goto :goto_188

    .line 1505
    :cond_11d
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1506
    :try_start_120
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_187

    const/4 v3, 0x4

    .line 1509
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 1510
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1511
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1512
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1513
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1514
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 1516
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :cond_187
    monitor-exit v2

    :goto_188
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_102

    :catchall_18c
    move-exception v0

    monitor-exit v2
    :try_end_18e
    .catchall {:try_start_120 .. :try_end_18e} :catchall_18c

    throw v0

    .line 1523
    :cond_18f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19c

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_19c
    const-string v1, "NOTI"

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D-Candi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b6
    return-void

    :catchall_1b7
    move-exception v0

    .line 1495
    :try_start_1b8
    monitor-exit v14
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v0
.end method

.method public checkUpdatedDBFromSDHMS()V
    .registers 2

    .line 5523
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5524
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 5527
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    if-nez p0, :cond_18

    .line 5530
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendSdhmsDBCompleteMsgToDBHandler()V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 5527
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public clearAllPackages()V
    .registers 3

    .line 1192
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1193
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1194
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1195
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1196
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1197
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public clearRestrictionInfo(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4904
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    if-nez p1, :cond_c

    goto :goto_50

    :cond_c
    const-string v0, "default"

    .line 4908
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 4909
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 4910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEP"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_50

    const/4 v1, 0x1

    :cond_50
    :goto_50
    return v1
.end method

.method public clearTTSPkgInfo()V
    .registers 2

    .line 909
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgUnBindAll()V

    const-string p0, "MARsPolicyManager"

    const-string v0, "clearTTSPkgInfo"

    .line 910
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final closeSocketsForUid(I)V
    .registers 6

    .line 2287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2288
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    const-string/jumbo v2, "network_management"

    .line 2289
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    .line 2291
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_3e

    .line 2293
    :try_start_19
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->closeSocketsForUid(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_22
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 2297
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_20
    move-exception p0

    goto :goto_3a

    :catch_22
    move-exception p0

    :try_start_23
    const-string p1, "MARsPolicyManager"

    .line 2295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while closeSocketsForUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_20

    goto :goto_1c

    .line 2297
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2298
    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final closeSocketsForUids([I)V
    .registers 6

    .line 2303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2304
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    const-string/jumbo v2, "network_management"

    .line 2305
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    .line 2307
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_3e

    .line 2309
    :try_start_19
    invoke-interface {p0, p1}, Landroid/os/INetworkManagementService;->closeSocketsForUids([I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_22
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 2313
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_20
    move-exception p0

    goto :goto_3a

    :catch_22
    move-exception p0

    :try_start_23
    const-string p1, "MARsPolicyManager"

    .line 2311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while closeSocketsForUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_20

    goto :goto_1c

    .line 2313
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2314
    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 3442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 3443
    aget-object v1, p1, v0

    const-string v2, "[FRZ]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " "

    if-nez v1, :cond_26

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const/4 v1, 0x2

    .line 3446
    aget-object v4, p1, v1

    const-string v5, "[FAS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 3447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const/4 v4, 0x3

    .line 3449
    aget-object v6, p1, v4

    const-string v7, "[FOS]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 3450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    const/4 v6, 0x4

    .line 3452
    aget-object v8, p1, v6

    const-string v9, "[DIS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 3453
    aget-object p1, p1, v6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    :cond_74
    aget-object p1, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    aget-object p1, p2, v1

    .line 3457
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    aget-object p1, p2, v4

    .line 3458
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    aget-object p1, p2, v6

    .line 3459
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    :cond_94
    const-string p1, " [IMP] "

    .line 3460
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    :cond_99
    aget-object p1, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    .line 3463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    :cond_b5
    aget-object p1, p2, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 3466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    :cond_d1
    aget-object p1, p2, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ed

    .line 3469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p2, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    :cond_ed
    aget-object p1, p2, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    .line 3472
    aget-object p1, p2, v6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    :cond_fa
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 4127
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4122
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 4123
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4125
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4120
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    .line 4118
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0
.end method

.method public final convertLevelToPolicyNum(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_19

    const/4 v2, 0x2

    if-eq p1, v2, :cond_19

    const/4 v3, 0x3

    if-eq p1, v3, :cond_11

    if-eq p1, v1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    const/16 p0, 0x8

    return p0

    .line 4141
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_18

    return v0

    :cond_18
    return v2

    :cond_19
    return v1
.end method

.method public final convertPolicyNumToImportantType(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1a

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/4 p0, 0x7

    return p0

    :pswitch_d
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_15
    const/4 p0, 0x2

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_3
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public final convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I
    .registers 2

    .line 4152
    iget p0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    packed-switch p0, :pswitch_data_18

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_7
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_11
    const/4 p0, 0x6

    return p0

    :pswitch_13
    const/4 p0, 0x1

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_5
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public createPolicies()V
    .registers 14

    const/4 v8, 0x0

    move v9, v8

    .line 4198
    :goto_2
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v9, v0, :cond_7a

    .line 4199
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4200
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getNum()I

    move-result v11

    .line 4201
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getEnabled()I

    move-result v0

    .line 4202
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getTargetCategory()I

    move-result v5

    .line 4203
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getRestriction()I

    move-result v6

    .line 4204
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getAction()I

    move-result v7

    if-ne v0, v10, :cond_57

    move v4, v10

    goto :goto_58

    :cond_57
    move v4, v8

    .line 4211
    :goto_58
    new-instance v12, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object v0, v12

    move-object v1, p0

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    if-ne v11, v10, :cond_65

    .line 4213
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_77

    :cond_65
    const/4 v0, 0x2

    if-ne v11, v0, :cond_6b

    .line 4219
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_77

    :cond_6b
    const/4 v0, 0x4

    if-ne v11, v0, :cond_71

    .line 4230
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_77

    :cond_71
    const/16 v0, 0x8

    if-ne v11, v0, :cond_77

    .line 4236
    iput-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :cond_77
    :goto_77
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4242
    :cond_7a
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_aa

    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPolicies---AL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , AR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , FZ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    :cond_aa
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4246
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v3, 0x5

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/16 v7, 0x9

    const-string/jumbo v2, "udspolicy"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 4253
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bikemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4254
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v3, 0x6

    const/16 v5, 0x17

    const-string/jumbo v2, "sbkiepolicy"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v0, "sys.config.mars.game_policy"

    .line 4261
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4263
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v3, 0x9

    const/16 v5, 0x1b

    const/16 v7, 0xa

    const-string v2, "gamePolicy"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    .line 4271
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v3, 0xa

    const/16 v5, 0x1c

    const/16 v7, 0x9

    const-string/jumbo v2, "mpsmpolicy"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-void
.end method

.method public deInit()V
    .registers 2

    .line 212
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterManager;->deInit()V

    .line 213
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/util/UidStateMgr;->deInit(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public final deletePkgInfoInMARs(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c5

    .line 1326
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c5

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "MARsPolicyManager"

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePkgInfoInMARs size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1332
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_36
    const/4 v4, 0x0

    if-ltz v2, :cond_97

    .line 1333
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v4

    .line 1334
    :goto_46
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_94

    .line 1335
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    move v8, v4

    .line 1337
    :goto_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8b

    .line 1338
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/database/FASEntity;

    .line 1339
    new-instance v10, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v10, v9}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1341
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    if-ne v9, v11, :cond_88

    .line 1343
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    invoke-virtual {v10, v8}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1344
    invoke-virtual {v7, v10}, Lcom/android/server/am/MARsPackageInfo;->updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V

    move v8, v3

    goto :goto_8c

    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    :cond_8b
    move v8, v4

    :goto_8c
    if-nez v8, :cond_91

    .line 1350
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_94
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 1354
    :cond_97
    :goto_97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_c0

    .line 1355
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/MARsPackageInfo;

    .line 1356
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1357
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 1359
    :cond_c0
    monitor-exit v1

    goto :goto_c5

    :catchall_c2
    move-exception p0

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_2a .. :try_end_c4} :catchall_c2

    throw p0

    :cond_c5
    :goto_c5
    return-void
.end method

.method public final disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 7

    .line 2204
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2205
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getEnabledStateIfCanBeDisabled(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_34

    .line 2206
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2208
    invoke-static {p1, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    const/4 p0, 0x1

    .line 2209
    invoke-static {p1, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 2210
    invoke-static {p1, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2215
    :cond_34
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    return p0
.end method

.method public final disablePackageBySEP(Ljava/lang/String;IZ)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 4703
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IIZLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final disablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 4965
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4966
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4967
    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x80

    goto :goto_19

    :cond_17
    const/16 v1, 0x8

    :goto_19
    move v10, v1

    .line 4968
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1df

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4969
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4970
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 4971
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/4 v1, 0x0

    .line 4975
    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_1e

    .line 4979
    :cond_44
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 4980
    :try_start_47
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_f0

    .line 4982
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 4983
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_95

    const-string v1, "MARsPolicyManager"

    .line 4984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is already disabled, so we will not disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    :cond_95
    monitor-exit v14

    goto :goto_1e

    .line 4987
    :cond_97
    invoke-virtual {v0, v10, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v17

    if-nez v17, :cond_d0

    .line 4988
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_cd

    const-string v1, "MARsPolicyManager"

    .line 4989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be disabled, so we will not disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    :cond_cd
    monitor-exit v14

    goto/16 :goto_1e

    .line 4993
    :cond_d0
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/16 v18, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v7, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 4994
    invoke-virtual {v0, v15, v7}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v6, v7

    move/from16 v1, v17

    goto :goto_f2

    :cond_f0
    move-object/from16 v6, v16

    .line 4996
    :goto_f2
    monitor-exit v14
    :try_end_f3
    .catchall {:try_start_47 .. :try_end_f3} :catchall_1d8

    if-eqz v1, :cond_1db

    if-eqz v6, :cond_1db

    .line 4999
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 5000
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 5001
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string/jumbo v2, "manualDisable"

    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 5004
    :cond_115
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    .line 5005
    monitor-enter v14

    .line 5006
    :try_start_11a
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1d3

    .line 5008
    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v1, :cond_149

    .line 5010
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5011
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_149

    .line 5012
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5016
    :cond_149
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5017
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5018
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_16b

    const-string v3, "1"

    goto :goto_16d

    :cond_16b
    move-object/from16 v3, v16

    :goto_16d
    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5019
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v16

    :cond_17f
    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5020
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5021
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5022
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5023
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5024
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5025
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 5026
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5027
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5029
    :cond_1d3
    monitor-exit v14

    goto :goto_1db

    :catchall_1d5
    move-exception v0

    monitor-exit v14
    :try_end_1d7
    .catchall {:try_start_11a .. :try_end_1d7} :catchall_1d5

    throw v0

    :catchall_1d8
    move-exception v0

    .line 4996
    :try_start_1d9
    monitor-exit v14
    :try_end_1da
    .catchall {:try_start_1d9 .. :try_end_1da} :catchall_1d8

    throw v0

    :cond_1db
    :goto_1db
    move-object/from16 v7, p2

    goto/16 :goto_1e

    .line 5033
    :cond_1df
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ec

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_1ec
    return-object v9
.end method

.method public doUpdatePackages(Z)V
    .registers 3

    .line 1670
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_b

    const-string p1, "MARsPolicyManager"

    const-string v0, "doUpdatePackages called!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 13

    .line 3498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTIVITY MANAGER MARs (dumpsys activity mars)\n"

    .line 3499
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3502
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 3503
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFirstNotiSentTimeForSleep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastNotiSentTimeForDisabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_ALARM_WAKEUP_BLOCK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    if-eqz v1, :cond_4e

    const-string v1, "Y"

    goto :goto_50

    :cond_4e
    const-string v1, "N"

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_KILL_LONG_RUNNING_PROCESS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v1, :cond_6b

    const-string v1, "Y"

    goto :goto_6d

    :cond_6b
    const-string v1, "N"

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMARsTargetPackages --- size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3508
    :goto_94
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_240

    .line 3509
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    .line 3510
    :goto_ae
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_23c

    .line 3511
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_238

    const-string v6, "-RST "

    .line 3517
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-PT "

    .line 3520
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%6d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-ST "

    .line 3521
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DT "

    .line 3522
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DR "

    .line 3523
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%2d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-DD "

    .line 3524
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v6

    if-eqz v6, :cond_142

    const-string v6, "T"

    goto :goto_144

    :cond_142
    const-string v6, "F"

    :goto_144
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Uid "

    .line 3530
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3531
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3532
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_172

    const-string v6, "S"

    .line 3533
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_177

    :cond_172
    const-string v6, "-"

    .line 3535
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_177
    const-string v6, ")"

    .line 3536
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Idle"

    .line 3538
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3539
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    .line 3544
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3545
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v6, :cond_194

    const-string v6, "-curLv "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_194
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "-maxLv "

    .line 3546
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, "-FAS "

    .line 3548
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_1ba

    const-string v7, "Y"

    goto :goto_1bc

    :cond_1ba
    const-string v7, "N"

    :goto_1bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%4d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3549
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_1f0

    const-string v6, "A"

    goto :goto_1f2

    :cond_1f0
    const-string v6, "-"

    :goto_1f2
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    .line 3551
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-BU "

    .line 3553
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%10f"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3555
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3556
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v5

    if-eqz v5, :cond_233

    const-string v5, "--(R)"

    .line 3557
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_233
    const-string v5, ""

    .line 3559
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_238
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_ae

    :cond_23c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_94

    .line 3564
    :cond_240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMARsRestrictedPackages --- size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 3565
    :goto_25c
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2dd

    .line 3566
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v4, v0

    .line 3567
    :goto_275
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2da

    .line 3568
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    const-string v6, "-Uid "

    .line 3569
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3570
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-POL "

    .line 3571
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    if-eqz v6, :cond_2cc

    .line 3573
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3574
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2d2

    :cond_2cc
    const-string/jumbo v5, "null"

    .line 3576
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2d2
    const-string v5, ""

    .line 3578
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_275

    :cond_2da
    add-int/lit8 v1, v1, 0x1

    goto :goto_25c

    .line 3581
    :cond_2dd
    monitor-exit p1
    :try_end_2de
    .catchall {:try_start_14 .. :try_end_2de} :catchall_2fc

    const-string p0, ""

    .line 3583
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p0, :cond_2fb

    .line 3586
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p2, "MARsHandler"

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_2fb
    return-void

    :catchall_2fc
    move-exception p0

    .line 3581
    :try_start_2fd
    monitor-exit p1
    :try_end_2fe
    .catchall {:try_start_2fd .. :try_end_2fe} :catchall_2fc

    throw p0
.end method

.method public dumpMARsCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v0, "gfreeze"

    const/4 v4, 0x1

    .line 3591
    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_4c

    .line 3592
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3593
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->getProcessRecord(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 3597
    :cond_20
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3598
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_46

    :try_start_2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3599
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v8, v8, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v8, v0}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSPDebug(Lcom/android/server/am/ProcessRecord;)V

    .line 3600
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_40

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3601
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4c

    :catchall_40
    move-exception v0

    .line 3600
    :try_start_41
    monitor-exit v7
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_46
    move-exception v0

    .line 3601
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_4c
    :goto_4c
    const-string/jumbo v0, "ungfreeze"

    .line 3604
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3605
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3606
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->getProcessRecord(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_64

    return-void

    .line 3610
    :cond_64
    iget-object v6, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3611
    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_8a

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3612
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v8, v8, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v8, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSPDebug(Lcom/android/server/am/ProcessRecord;)V

    .line 3613
    monitor-exit v7
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_84

    :try_start_7c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3614
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_90

    :catchall_84
    move-exception v0

    .line 3613
    :try_start_85
    monitor-exit v7
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_8a
    move-exception v0

    .line 3614
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_90
    :goto_90
    const-string v0, "dbtest"

    .line 3617
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3618
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    :cond_a1
    const-string v0, "ct_history"

    .line 3620
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 3621
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/mars/database/MARsComponentTracker;->dumpMARsCTHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    goto :goto_b7

    :cond_b5
    move-object/from16 v6, p1

    :goto_b7
    const-string v0, "ct_clear"

    .line 3624
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const-string v0, "DEV"

    const-string v7, "ctListClear"

    .line 3625
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->listClear()V

    :cond_cf
    const-string v0, "ct_size"

    .line 3629
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 3630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "size : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getListSize()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f6
    const-string v0, "ct_onoff"

    .line 3633
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 3634
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v7

    xor-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setEnabled(Z)V

    .line 3635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ComponentTracker : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getEnabled()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", size : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getListSize()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13c
    const-string/jumbo v0, "restrict_onoff"

    .line 3637
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_190

    .line 3638
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v0, :cond_15a

    .line 3639
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "enable_restricted_bucket"

    const-string v9, "0"

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_167

    .line 3641
    :cond_15a
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "enable_restricted_bucket"

    const-string v9, "1"

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3643
    :goto_167
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "enable_restricted_bucket"

    invoke-static {v0, v8, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_177

    move v0, v4

    goto :goto_178

    :cond_177
    move v0, v7

    :goto_178
    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    .line 3644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ENABLE_RESTRICTED_BUCKET : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_190
    const-string v0, "bigdata"

    .line 3647
    aget-object v8, v3, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 3648
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/mars/MARsBigData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoToHQM()V

    :cond_1a3
    const-string v0, "bstat"

    .line 3651
    aget-object v8, v3, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 3652
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    :cond_1b0
    const-string v0, "disable"

    .line 3655
    aget-object v8, v3, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x3

    if-eqz v0, :cond_26c

    .line 3656
    array-length v0, v3

    if-ge v0, v8, :cond_1eb

    .line 3657
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_26c

    .line 3658
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Disabler policy has been turned "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v9

    if-eqz v9, :cond_1dc

    const-string/jumbo v9, "on"

    goto :goto_1df

    :cond_1dc
    const-string/jumbo v9, "off"

    :goto_1df
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_26c

    .line 3662
    :cond_1eb
    array-length v0, v3

    if-ne v0, v8, :cond_26c

    .line 3663
    aget-object v0, v3, v5

    if-nez v0, :cond_1f8

    const-string v0, "Disable will not work, please input proper packageName!"

    .line 3665
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3671
    :cond_1f8
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 3672
    :try_start_1fb
    iget-object v10, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-virtual {v1, v10, v0, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_213

    .line 3674
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 3675
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v10

    goto :goto_215

    :cond_213
    move v10, v7

    move v12, v11

    .line 3677
    :goto_215
    monitor-exit v9
    :try_end_216
    .catchall {:try_start_1fb .. :try_end_216} :catchall_269

    if-eq v12, v11, :cond_253

    if-eqz v10, :cond_21f

    .line 3682
    invoke-virtual {v1, v0, v12, v7}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v9

    goto :goto_223

    .line 3684
    :cond_21f
    invoke-virtual {v1, v0, v12, v7}, Lcom/android/server/am/MARsPolicyManager;->disablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v9

    .line 3686
    :goto_223
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_246

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " has been "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_23c

    const-string v9, "enabled"

    goto :goto_23e

    :cond_23c
    const-string v9, "disabled!"

    :goto_23e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_248

    :cond_246
    const-string v0, " is not in our target, we will not manage it!"

    :goto_248
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26c

    .line 3688
    :cond_253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is not in our target, we will not manage it!"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26c

    :catchall_269
    move-exception v0

    .line 3677
    :try_start_26a
    monitor-exit v9
    :try_end_26b
    .catchall {:try_start_26a .. :try_end_26b} :catchall_269

    throw v0

    :cond_26c
    :goto_26c
    const-string v0, "filter"

    .line 3694
    aget-object v9, v3, v4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x4

    if-eqz v0, :cond_2b0

    .line 3697
    :try_start_277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filter -- freecess "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v10

    aget-object v11, v3, v5

    .line 3698
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v12, v3, v8

    aget-object v13, v3, v9

    .line 3699
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x5

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3697
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/NumberFormatException; {:try_start_277 .. :try_end_2a8} :catch_2a9

    goto :goto_2b0

    :catch_2a9
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(filter) parseInt error!"

    .line 3701
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b0
    :goto_2b0
    const-string v0, "aufbucket"

    .line 3705
    aget-object v10, v3, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 3707
    :try_start_2ba
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 3708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AUFAllowBucketSize set "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d8
    .catch Ljava/lang/NumberFormatException; {:try_start_2ba .. :try_end_2d8} :catch_2d9

    goto :goto_2e0

    :catch_2d9
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(aufbucket) parseInt error!"

    .line 3710
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e0
    :goto_2e0
    const-string/jumbo v0, "longrunning"

    .line 3714
    aget-object v10, v3, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_348

    .line 3715
    array-length v0, v3

    if-lt v0, v8, :cond_328

    const-string/jumbo v0, "on"

    .line 3716
    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fc

    .line 3717
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_328

    :cond_2fc
    const-string/jumbo v0, "off"

    .line 3718
    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 3719
    sput-boolean v7, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    goto :goto_328

    :cond_30a
    const-string v0, "duration"

    .line 3720
    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    .line 3721
    array-length v0, v3

    if-lt v0, v9, :cond_328

    .line 3723
    :try_start_317
    aget-object v0, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J
    :try_end_320
    .catch Ljava/lang/NumberFormatException; {:try_start_317 .. :try_end_320} :catch_321

    goto :goto_328

    :catch_321
    const-string v0, "MARsPolicyManager"

    const-string v10, "dumpMARsCommand(longrunning) parseInt error!"

    .line 3725
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :cond_328
    :goto_328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", d="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_348
    const-string v0, "fgsRunningTime"

    .line 3733
    aget-object v10, v3, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ab

    .line 3734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3735
    iget-object v12, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 3736
    :try_start_359
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_363
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 3737
    iget-object v14, v1, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3738
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", fgsRunningTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v10, v14

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", fgsStartTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x4

    goto :goto_363

    .line 3740
    :cond_3a6
    monitor-exit v12

    goto :goto_3ab

    :catchall_3a8
    move-exception v0

    monitor-exit v12
    :try_end_3aa
    .catchall {:try_start_359 .. :try_end_3aa} :catchall_3a8

    throw v0

    :cond_3ab
    :goto_3ab
    const-string/jumbo v0, "history"

    .line 3743
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b9

    .line 3744
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_3b9
    const-string/jumbo v0, "hold"

    .line 3747
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3cf

    const-string/jumbo v0, "release"

    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40e

    .line 3748
    :cond_3cf
    array-length v0, v3

    if-ge v0, v5, :cond_3d9

    const-string/jumbo v0, "hold/release requires at least 1 argument: uid"

    .line 3749
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3752
    :cond_3d9
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v7, "hold"

    .line 3753
    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3754
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_3f2

    const-string v9, "Hold"

    goto :goto_3f4

    :cond_3f2
    const-string v9, "Release"

    :goto_3f4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " jobs by u="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " calling by MARs."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3755
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_40e
    const-string/jumbo v0, "level"

    .line 3758
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_481

    .line 3759
    array-length v0, v3

    const/4 v7, 0x3

    if-ge v0, v7, :cond_423

    const-string v0, "MARstest -- need levelNum and packageName"

    .line 3760
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_481

    .line 3761
    :cond_423
    array-length v0, v3

    const/4 v7, 0x4

    if-ne v0, v7, :cond_481

    .line 3763
    :try_start_427
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v7, "-a"

    const/4 v8, 0x3

    .line 3764
    aget-object v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_475

    .line 3765
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7
    :try_end_43b
    .catch Ljava/lang/NumberFormatException; {:try_start_427 .. :try_end_43b} :catch_47c

    const/4 v8, 0x0

    .line 3766
    :goto_43c
    :try_start_43c
    iget-object v9, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_470

    .line 3767
    iget-object v9, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 3768
    :goto_455
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_46d

    .line 3769
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v11, :cond_46a

    .line 3771
    invoke-virtual {v11}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V

    :cond_46a
    add-int/lit8 v10, v10, 0x1

    goto :goto_455

    :cond_46d
    add-int/lit8 v8, v8, 0x1

    goto :goto_43c

    .line 3775
    :cond_470
    monitor-exit v7

    goto :goto_481

    :catchall_472
    move-exception v0

    monitor-exit v7
    :try_end_474
    .catchall {:try_start_43c .. :try_end_474} :catchall_472

    :try_start_474
    throw v0

    :cond_475
    const/4 v7, 0x3

    .line 3777
    aget-object v8, v3, v7

    .line 3778
    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V
    :try_end_47b
    .catch Ljava/lang/NumberFormatException; {:try_start_474 .. :try_end_47b} :catch_47c

    goto :goto_481

    :catch_47c
    const-string v0, "MARstest -- NumberFormatException!"

    .line 3781
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_481
    :goto_481
    const-string/jumbo v0, "list"

    .line 3786
    aget-object v7, v3, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48f

    .line 3787
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_48f
    const-string v0, "close_socket"

    .line 3790
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c1

    .line 3791
    array-length v0, v3

    const/4 v6, 0x3

    if-ge v0, v6, :cond_4a4

    const-string/jumbo v0, "usage: close_socket <uid>"

    .line 3792
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c1

    .line 3794
    :cond_4a4
    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling closeSocketsForUid: u="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    :cond_4c1
    :goto_4c1
    const-string/jumbo v0, "time_disable"

    .line 3800
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e6

    .line 3801
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    aget-object v6, v3, v5

    iget-object v7, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4e6

    .line 3803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3804
    iget-wide v8, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    :cond_4e6
    const-string/jumbo v0, "update"

    .line 3808
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f4

    .line 3809
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    :cond_4f4
    const-string/jumbo v0, "widget"

    .line 3812
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_506

    .line 3813
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    :cond_506
    const-string v0, "deepsleep_target"

    .line 3816
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_513

    .line 3817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    :cond_513
    const-string v0, "candidate"

    .line 3820
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56b

    .line 3821
    array-length v0, v3

    const/4 v6, 0x3

    if-ge v0, v6, :cond_527

    const-string v0, "MARstest -- need type and packageName"

    .line 3822
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_56b

    .line 3823
    :cond_527
    array-length v0, v3

    const/4 v6, 0x4

    if-ne v0, v6, :cond_56b

    .line 3825
    :try_start_52b
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6
    :try_end_52e
    .catch Ljava/lang/NumberFormatException; {:try_start_52b .. :try_end_52e} :catch_566

    .line 3826
    :try_start_52e
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_55c

    const-string v7, "-s"

    .line 3828
    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54d

    .line 3829
    invoke-virtual {v1, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_561

    :cond_54d
    const-string v7, "-d"

    .line 3830
    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_561

    const/4 v7, 0x4

    .line 3831
    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_561

    :cond_55c
    const-string v0, "MARstest -- not mars target!"

    .line 3834
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    :cond_561
    :goto_561
    monitor-exit v6

    goto :goto_56b

    :catchall_563
    move-exception v0

    monitor-exit v6
    :try_end_565
    .catchall {:try_start_52e .. :try_end_565} :catchall_563

    :try_start_565
    throw v0
    :try_end_566
    .catch Ljava/lang/NumberFormatException; {:try_start_565 .. :try_end_566} :catch_566

    :catch_566
    const-string v0, "MARstest -- NumberFormatException!"

    .line 3838
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_56b
    :goto_56b
    const-string v0, "debug"

    .line 3843
    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_705

    const-string/jumbo v0, "help"

    .line 3844
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c3

    const-string v0, "MARs debug options commands:"

    .line 3845
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 3846
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Print this help text."

    .line 3847
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  all"

    .line 3848
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable all mars debug message."

    .line 3849
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  olaf"

    .line 3850
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable olaf debug message."

    .line 3851
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  freecess"

    .line 3852
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable freecess debug message."

    .line 3853
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  database"

    .line 3854
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable MARs database debug message."

    .line 3855
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  filter"

    .line 3856
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Enable/Disable MARs filter debug message."

    .line 3857
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_705

    :cond_5c3
    const-string v0, "all"

    .line 3858
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f8

    .line 3859
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 3860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mars debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_5e4

    const-string/jumbo v1, "on"

    goto :goto_5e7

    :cond_5e4
    const-string/jumbo v1, "off"

    :goto_5e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_705

    :cond_5f8
    const-string/jumbo v0, "olaf"

    .line 3861
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62e

    .line 3862
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " olaf debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_61a

    const-string/jumbo v1, "on"

    goto :goto_61d

    :cond_61a
    const-string/jumbo v1, "off"

    :goto_61d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_705

    :cond_62e
    const-string v0, "freecess"

    .line 3864
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_663

    .line 3865
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " freecess debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v1, :cond_64f

    const-string/jumbo v1, "on"

    goto :goto_652

    :cond_64f
    const-string/jumbo v1, "off"

    :goto_652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_705

    :cond_663
    const-string v0, "database"

    .line 3867
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_697

    .line 3868
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 3869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " database debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v1, :cond_684

    const-string/jumbo v1, "on"

    goto :goto_687

    :cond_684
    const-string/jumbo v1, "off"

    :goto_687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_705

    :cond_697
    const-string v0, "filter"

    .line 3870
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6cb

    .line 3871
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " filter debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_6b8

    const-string/jumbo v1, "on"

    goto :goto_6bb

    :cond_6b8
    const-string/jumbo v1, "off"

    :goto_6bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_705

    :cond_6cb
    const-string/jumbo v0, "netlink"

    .line 3873
    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_700

    .line 3874
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " netlink debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v1, :cond_6ed

    const-string/jumbo v1, "on"

    goto :goto_6f0

    :cond_6ed
    const-string/jumbo v1, "off"

    :goto_6f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_705

    :cond_700
    const-string v0, "Error: debug command requires argument"

    .line 3877
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_705
    :goto_705
    return-void
.end method

.method public dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, ""

    .line 3883
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "ACTIVITY MANAGER MARs HISTORY (dumpsys activity mars history)"

    .line 3884
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v1, :cond_26

    .line 3887
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3888
    :goto_13
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 3889
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3891
    :cond_23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->dumpNetHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpNetHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 6

    const-string p1, ""

    .line 3897
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER NET HISTORY (dumpsys activity net history)"

    .line 3898
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    if-eqz v0, :cond_26

    .line 3901
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3902
    :goto_13
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 3903
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3905
    :cond_23
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 8

    .line 2219
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 2220
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1b

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1b

    .line 2221
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, v3

    .line 2222
    :goto_1c
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 2223
    invoke-static {p1, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2224
    invoke-static {p1, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 2225
    invoke-static {p1, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2228
    :cond_33
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final enablePackageBySEP(Ljava/lang/String;IZ)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 4707
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->restrictBySEP(IIZLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5038
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5039
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5040
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x800

    move-object/from16 v9, p2

    :goto_16
    move v10, v1

    goto :goto_26

    :cond_18
    move-object/from16 v9, p2

    .line 5041
    invoke-virtual {v0, v9}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x200

    goto :goto_16

    :cond_23
    const/16 v1, 0x400

    goto :goto_16

    .line 5042
    :goto_26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5043
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 5044
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5045
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 5048
    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_153

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_2a

    .line 5052
    :cond_4f
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 5053
    :try_start_52
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v15

    const/4 v6, 0x0

    if-eqz v15, :cond_7e

    .line 5055
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v17, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v9, v5

    move/from16 v5, v16

    move-object/from16 p1, v11

    move-object v11, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 5056
    invoke-virtual {v0, v15, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v6, v9

    goto :goto_81

    :cond_7e
    move-object/from16 p1, v11

    move-object v11, v6

    .line 5058
    :goto_81
    monitor-exit v14
    :try_end_82
    .catchall {:try_start_52 .. :try_end_82} :catchall_150

    if-eqz v6, :cond_14d

    .line 5061
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    .line 5062
    monitor-enter v14

    .line 5063
    :try_start_89
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_148

    .line 5065
    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v1, :cond_bf

    .line 5066
    invoke-virtual {v0, v10, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 5067
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 5068
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_b8

    .line 5070
    :cond_a8
    invoke-virtual {v2, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5071
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5073
    :goto_b8
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5076
    :cond_bf
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5077
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5078
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_e0

    move-object v6, v11

    goto :goto_e2

    :cond_e0
    const-string v6, "0"

    :goto_e2
    invoke-virtual {v1, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5079
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_ee

    move-object v6, v11

    goto :goto_f6

    :cond_ee
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    :goto_f6
    invoke-virtual {v1, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5080
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5081
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5082
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5083
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5084
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5085
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 5086
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5087
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5089
    :cond_148
    monitor-exit v14

    goto :goto_14d

    :catchall_14a
    move-exception v0

    monitor-exit v14
    :try_end_14c
    .catchall {:try_start_89 .. :try_end_14c} :catchall_14a

    throw v0

    :cond_14d
    :goto_14d
    move-object/from16 v11, p1

    goto :goto_153

    :catchall_150
    move-exception v0

    .line 5058
    :try_start_151
    monitor-exit v14
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0

    :cond_153
    :goto_153
    move-object/from16 v9, p2

    goto/16 :goto_2a

    .line 5092
    :cond_157
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_164

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_164
    return-object v8
.end method

.method public final forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z
    .registers 15

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_1a
    const/16 v8, 0x10

    if-gt v2, v8, :cond_3b

    .line 2326
    iget v8, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v8, v2

    if-eq v8, v0, :cond_37

    const/4 v9, 0x2

    if-eq v8, v9, :cond_34

    const/4 v9, 0x4

    if-eq v8, v9, :cond_30

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2e

    goto :goto_34

    :cond_2e
    move v7, v0

    goto :goto_38

    :cond_30
    const/16 v6, 0x1f4

    move v5, v0

    goto :goto_38

    :cond_34
    :goto_34
    move v5, v1

    move v6, v5

    goto :goto_38

    :cond_37
    move v3, v0

    :goto_38
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2349
    :cond_3b
    sget-boolean p2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    const-string v1, "MARsPolicyManager"

    if-eqz p2, :cond_55

    .line 2350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceKillPackage: pkgName: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_55
    invoke-virtual {p0, p4}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    if-eqz v3, :cond_60

    .line 2355
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_8b

    .line 2357
    :cond_60
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2359
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_8b

    .line 2360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "forceKillPackage: don\'t force stop package = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    return v0
.end method

.method public forceRunPolicyForRecentKill(ILjava/lang/String;)Z
    .registers 18

    move-object v0, p0

    move-object/from16 v1, p2

    .line 2471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2474
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_182

    .line 2475
    iget-boolean v2, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_15

    goto/16 :goto_182

    .line 2480
    :cond_15
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    const/4 v2, 0x0

    .line 2482
    :try_start_19
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v1, :cond_4c

    const-string v4, ","

    .line 2483
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, ","

    .line 2484
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 2485
    array-length v4, v1

    if-ne v4, v12, :cond_4b

    .line 2486
    aget-object v4, v1, v9
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_17f

    if-eqz v4, :cond_3b

    move-object v2, v4

    .line 2489
    :cond_3b
    :try_start_3b
    aget-object v1, v1, v11

    if-eqz v1, :cond_4b

    .line 2490
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_43} :catch_44
    .catchall {:try_start_3b .. :try_end_43} :catchall_17f

    goto :goto_4b

    :catch_44
    :try_start_44
    const-string v1, "MARsPolicyManager"

    const-string v4, "forceRunPolicyForRecentKill parseInt error!"

    .line 2492
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    move-object v1, v2

    .line 2498
    :cond_4c
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v13

    if-nez v13, :cond_56

    .line 2501
    monitor-exit v10

    return v9

    .line 2503
    :cond_56
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v14

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2504
    invoke-virtual {p0, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2505
    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_44 .. :try_end_6e} :catchall_17f

    .line 2507
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2508
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2509
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    const-string v5, "RecentKill"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2512
    :cond_a1
    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {p0, v2, v8, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    const/4 v2, 0x3

    .line 2514
    invoke-static {v14, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_71 .. :try_end_d7} :catchall_179

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2522
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2524
    :try_start_dd
    invoke-virtual {p0, v14, v13}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2525
    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v1, v3, :cond_f2

    .line 2526
    invoke-virtual {v13, v8}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    move/from16 v1, p1

    if-ne v1, v12, :cond_f2

    .line 2528
    invoke-virtual {p0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 2534
    :cond_f2
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_110

    .line 2535
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4, v13}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12f

    .line 2536
    :cond_110
    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v1, v3, :cond_12f

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    if-ne v1, v12, :cond_12f

    const/4 v1, 0x4

    .line 2537
    invoke-virtual {v13, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2538
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4, v13}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12f
    :goto_12f
    const-string v1, "EXE"

    .line 2543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MARsPolicyManager"

    .line 2545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recent_Kill: add mRestrictedPackages "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " policy --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    monitor-exit v2

    return v11

    :catchall_171
    move-exception v0

    monitor-exit v2
    :try_end_173
    .catchall {:try_start_dd .. :try_end_173} :catchall_171

    throw v0

    .line 2518
    :cond_174
    :try_start_174
    monitor-exit v1
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_179

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :catchall_179
    move-exception v0

    .line 2520
    :try_start_17a
    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_17f
    move-exception v0

    .line 2505
    :try_start_180
    monitor-exit v10
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v0

    :cond_182
    :goto_182
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 2476
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2709
    new-instance v7, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v7}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 2710
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2711
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2714
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v10

    if-eqz v10, :cond_281

    .line 2715
    iget-boolean v1, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_1d

    goto/16 :goto_281

    .line 2721
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2723
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2724
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2726
    sget-object v11, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v11

    const/4 v12, 0x0

    move v1, v12

    .line 2727
    :goto_36
    :try_start_36
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v1, v2, :cond_94

    move-object/from16 v2, p2

    .line 2728
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2730
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-eqz v3, :cond_7e

    const-string v5, ","

    .line 2733
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string v5, ","

    .line 2734
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_84

    .line 2735
    array-length v6, v3

    if-ne v6, v13, :cond_84

    .line 2736
    aget-object v6, v3, v12
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_27e

    if-eqz v6, :cond_67

    move-object v5, v6

    .line 2739
    :cond_67
    :try_start_67
    aget-object v3, v3, v14

    if-eqz v3, :cond_77

    .line 2740
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6f} :catch_70
    .catchall {:try_start_67 .. :try_end_6f} :catchall_27e

    goto :goto_77

    :catch_70
    :try_start_70
    const-string v3, "MARsPolicyManager"

    const-string v6, "forceRunPolicyForSpecificPackage parseInt error!"

    .line 2742
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_77
    :goto_77
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    goto :goto_84

    .line 2748
    :cond_7e
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    :cond_84
    :goto_84
    if-eqz v5, :cond_91

    .line 2752
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_94
    move v15, v12

    .line 2755
    :goto_95
    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_140

    .line 2756
    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/util/SparseArray;

    move v5, v12

    .line 2757
    :goto_ab
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_13a

    .line 2758
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 2759
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v3, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 2760
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_ef

    const-string v1, "MARsPolicyManager"

    .line 2761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    :goto_ef
    move/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_132

    .line 2767
    :cond_f4
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    .line 2768
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2769
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 2767
    invoke-virtual {v1, v14, v2, v3, v12}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_10b

    goto :goto_ef

    .line 2773
    :cond_10b
    new-instance v12, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v16

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v17

    const/16 v18, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v13, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2774
    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2776
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_132
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v6, v17

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_ab

    :cond_13a
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_95

    .line 2779
    :cond_140
    monitor-exit v11
    :try_end_141
    .catchall {:try_start_70 .. :try_end_141} :catchall_27e

    .line 2781
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_144
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2782
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v14

    const/4 v3, 0x0

    :goto_14d
    if-ltz v2, :cond_1bf

    .line 2783
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2785
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v5

    if-eqz v5, :cond_182

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_182

    .line 2786
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    const-string v11, "SMKill"

    invoke-virtual {v5, v6, v7, v11}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2789
    :cond_182
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-virtual {v0, v5, v10, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 2790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    const/4 v3, 0x3

    .line 2791
    invoke-static {v4, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v14

    goto :goto_1bc

    .line 2795
    :cond_1b9
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1bc
    add-int/lit8 v2, v2, -0x1

    goto :goto_14d

    .line 2799
    :cond_1bf
    monitor-exit v1
    :try_end_1c0
    .catchall {:try_start_144 .. :try_end_1c0} :catchall_278

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2801
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v12, 0x0

    .line 2802
    :goto_1c7
    :try_start_1c7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_268

    .line 2803
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2805
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_23b

    .line 2808
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2809
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v1, v5, :cond_1fa

    .line 2810
    invoke-virtual {v4, v10}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    move/from16 v1, p1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1fc

    .line 2812
    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_1fc

    :cond_1fa
    move/from16 v1, p1

    .line 2816
    :cond_1fc
    :goto_1fc
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21a

    .line 2817
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_23d

    .line 2818
    :cond_21a
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v5, v6, :cond_23d

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_23e

    const/4 v5, 0x4

    .line 2819
    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2820
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v5, v7, v11, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_23e

    :cond_23b
    move/from16 v1, p1

    :cond_23d
    :goto_23d
    const/4 v6, 0x2

    :cond_23e
    :goto_23e
    const-string v5, "MARsPolicyManager"

    .line 2824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add mRestrictedPackages "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " policy --"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1c7

    .line 2826
    :cond_268
    monitor-exit v2
    :try_end_269
    .catchall {:try_start_1c7 .. :try_end_269} :catchall_275

    if-eqz v3, :cond_274

    const-string v1, "SM"

    .line 2829
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_274
    return-void

    :catchall_275
    move-exception v0

    .line 2826
    :try_start_276
    monitor-exit v2
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    throw v0

    :catchall_278
    move-exception v0

    .line 2799
    :try_start_279
    monitor-exit v1
    :try_end_27a
    .catchall {:try_start_279 .. :try_end_27a} :catchall_278

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_27e
    move-exception v0

    .line 2779
    :try_start_27f
    monitor-exit v11
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    throw v0

    :cond_281
    :goto_281
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 2716
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 2553
    new-instance v8, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v8}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    .line 2554
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2555
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2558
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v11

    if-eqz v11, :cond_336

    .line 2559
    iget-boolean v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_21

    goto/16 :goto_336

    .line 2563
    :cond_21
    invoke-virtual {v7, v11}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I

    move-result v12

    .line 2566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2568
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2569
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2571
    sget-object v13, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_90

    move v2, v14

    .line 2574
    :goto_41
    :try_start_41
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_90

    .line 2575
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2577
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    if-eqz v3, :cond_8d

    const-string v6, ", "

    .line 2579
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const-string v6, ", "

    .line 2580
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 2581
    array-length v6, v3

    const/4 v4, 0x2

    if-ne v6, v4, :cond_85

    .line 2582
    aget-object v4, v3, v14
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_333

    if-eqz v4, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v4, 0x0

    .line 2585
    :goto_6f
    :try_start_6f
    aget-object v3, v3, v15

    if-eqz v3, :cond_86

    .line 2586
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7b} :catch_7d
    .catchall {:try_start_6f .. :try_end_7b} :catchall_333

    move v5, v3

    goto :goto_86

    :catch_7d
    :try_start_7d
    const-string v3, "MARsPolicyManager"

    const-string v6, "forceRunPolicyForGamePolicy parseInt error!"

    .line 2588
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    .line 2591
    :cond_86
    :goto_86
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v4, v5, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_90
    move v6, v14

    .line 2596
    :goto_91
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_1ed

    .line 2597
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    move v4, v14

    .line 2598
    :goto_ab
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_1e5

    .line 2599
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/am/MARsPackageInfo;

    const/16 v1, 0x9

    if-ne v0, v1, :cond_12c

    .line 2602
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-nez v1, :cond_f6

    .line 2603
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_ef

    const-string v1, "MARsPolicyManager"

    .line 2604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not game policy target, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    :goto_ef
    move/from16 v19, v4

    :goto_f1
    move-object v15, v5

    move/from16 v16, v6

    goto/16 :goto_1dc

    .line 2609
    :cond_f6
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 2610
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_ef

    const-string v1, "MARsPolicyManager"

    .line 2611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in survivePkgs, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 2617
    :cond_12c
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v14, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v7, v1, v2, v14}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 2618
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_ef

    const-string v1, "MARsPolicyManager"

    .line 2619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 2625
    :cond_164
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    iget v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 2626
    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToImportantType(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2627
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    move/from16 p2, v4

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    .line 2625
    invoke-virtual {v1, v2, v14, v15, v4}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_186

    move/from16 v19, p2

    goto/16 :goto_f1

    .line 2631
    :cond_186
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    .line 2632
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v16

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v4

    move/from16 v19, p2

    move v4, v15

    move-object v15, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v18

    .line 2633
    invoke-virtual {v7, v1, v14}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1bc

    .line 2636
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUds()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1dc

    .line 2637
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    :cond_1bc
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1ca

    .line 2639
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getSBike()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1dc

    .line 2640
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    :cond_1ca
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d9

    .line 2642
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMpsm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1dc

    .line 2643
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    .line 2645
    :cond_1d9
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1dc
    :goto_1dc
    add-int/lit8 v4, v19, 0x1

    move-object v5, v15

    move/from16 v6, v16

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_ab

    :cond_1e5
    move/from16 v16, v6

    add-int/lit8 v6, v16, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_91

    .line 2649
    :cond_1ed
    monitor-exit v13
    :try_end_1ee
    .catchall {:try_start_7d .. :try_end_1ee} :catchall_333

    .line 2651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2652
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_1f9
    if-ltz v2, :cond_299

    .line 2653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v13, 0x32

    cmp-long v5, v5, v13

    if-ltz v5, :cond_215

    const-wide/16 v0, 0xa

    .line 2656
    :try_start_208
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20b
    .catch Ljava/lang/InterruptedException; {:try_start_208 .. :try_end_20b} :catch_20c

    goto :goto_211

    :catch_20c
    move-exception v0

    move-object v1, v0

    .line 2658
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2660
    :goto_211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2662
    :cond_215
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_218
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2663
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2665
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_24e

    .line 2666
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_24e

    .line 2667
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    iget-object v15, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v14, v15}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2670
    :cond_24e
    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    invoke-virtual {v7, v8, v11, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v8

    if-eqz v8, :cond_288

    .line 2671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v6, v13, v14}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    .line 2672
    invoke-static {v6, v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 2673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    monitor-exit v5
    :try_end_283
    .catchall {:try_start_218 .. :try_end_283} :catchall_293

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v4, v3

    goto :goto_28f

    .line 2676
    :cond_288
    :try_start_288
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2677
    monitor-exit v5
    :try_end_28c
    .catchall {:try_start_288 .. :try_end_28c} :catchall_293

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_28f
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1f9

    :catchall_293
    move-exception v0

    .line 2679
    :try_start_294
    monitor-exit v5
    :try_end_295
    .catchall {:try_start_294 .. :try_end_295} :catchall_293

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2682
    :cond_299
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v14, 0x0

    .line 2683
    :goto_29d
    :try_start_29d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_30d

    .line 2684
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2686
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v7, v2, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_30a

    .line 2689
    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2690
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v0, v3, :cond_2c7

    .line 2691
    invoke-virtual {v2, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2694
    :cond_2c7
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e4

    .line 2695
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2697
    :cond_2e4
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_30a

    const-string v0, "MARsPolicyManager"

    .line 2698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add mRestrictedPackages "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " policy --"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30a
    add-int/lit8 v14, v14, 0x1

    goto :goto_29d

    .line 2701
    :cond_30d
    monitor-exit v1
    :try_end_30e
    .catchall {:try_start_29d .. :try_end_30e} :catchall_330

    if-eqz v4, :cond_32f

    const-string v0, "EXE"

    .line 2704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32f
    return-void

    :catchall_330
    move-exception v0

    .line 2701
    :try_start_331
    monitor-exit v1
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_330

    throw v0

    :catchall_333
    move-exception v0

    .line 2649
    :try_start_334
    monitor-exit v13
    :try_end_335
    .catchall {:try_start_334 .. :try_end_335} :catchall_333

    throw v0

    :cond_336
    :goto_336
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 2560
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 11

    .line 2275
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2276
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->closeSocketsForUid(I)V

    .line 2277
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MARs #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v7

    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result p0

    .line 2280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0
.end method

.method public forceStopForRecentKill(Ljava/lang/String;)V
    .registers 6

    .line 2446
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz p1, :cond_33

    const-string v1, ","

    .line 2447
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2448
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 2449
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    const/4 v2, 0x0

    .line 2450
    aget-object v2, p1, v2

    if-eqz v2, :cond_21

    move-object v1, v2

    :cond_21
    const/4 v2, 0x1

    .line 2453
    :try_start_22
    aget-object p1, p1, v2

    if-eqz p1, :cond_32

    .line 2454
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    const-string p1, "MARsPolicyManager"

    const-string v2, "forceStopForRecentKill parseInt error!"

    .line 2456
    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    move-object p1, v1

    :cond_33
    if-eqz p1, :cond_3a

    .line 2464
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    :cond_3a
    return-void
.end method

.method public final formatDateTime(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p2, "null"

    aput-object p2, p0, p1

    const-string p1, "%23s"

    .line 3478
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3479
    :cond_16
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3480
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3481
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatDateTimeWithoutYear(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p2, "null"

    aput-object p2, p0, p1

    const-string p1, "%18s"

    .line 3485
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3486
    :cond_16
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3487
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3488
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllRestrictedList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4756
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4760
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4761
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4762
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_9e

    .line 4763
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4764
    :goto_2d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9a

    .line 4765
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_97

    .line 4766
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 4768
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5b

    .line 4769
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4770
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v10, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_87

    .line 4771
    :cond_5b
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 4772
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4773
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v10, v10, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_87

    .line 4774
    :cond_6f
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/16 v9, 0x100

    if-ne v8, v9, :cond_86

    .line 4775
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    const/4 v9, 0x3

    .line 4776
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_87

    :cond_86
    move-object v8, v1

    .line 4778
    :goto_87
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v9, v10, v7, v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .line 4782
    :cond_9e
    monitor-exit v2

    return-object v0

    :catchall_a0
    move-exception p0

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_14 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public getAutorunForFreezedPackage(Ljava/lang/String;I)I
    .registers 5

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1179
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1180
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x1

    :goto_1a
    monitor-exit v0

    return p0

    .line 1183
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    const/4 p0, -0x1

    return p0
.end method

.method public getBatteryStats()V
    .registers 11

    .line 1605
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_b

    const-string v0, "MARsPolicyManager"

    const-string v1, "getBatteryStats called!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1608
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;-><init>()V

    .line 1609
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    move-wide v5, v8

    .line 1614
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_b5

    .line 1617
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats;

    if-eqz v2, :cond_34

    .line 1618
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isSameDay(JJ)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1619
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getAppDetailUsages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 1621
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 1622
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v4, :cond_56

    const-string v4, "MARsPolicyManager"

    .line 1624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " getBatteryStats(D) app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1633
    :cond_b5
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1634
    :goto_ba
    :try_start_ba
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_10c

    .line 1635
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    .line 1636
    :goto_d3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_109

    .line 1637
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1639
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    if-lez v7, :cond_103

    .line 1640
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    if-eqz v7, :cond_ff

    .line 1642
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    goto :goto_106

    .line 1644
    :cond_ff
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    goto :goto_106

    .line 1647
    :cond_103
    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    :goto_106
    add-int/lit8 v5, v5, 0x1

    goto :goto_d3

    :cond_109
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 1651
    :cond_10c
    monitor-exit v1

    return-void

    :catchall_10e
    move-exception p0

    monitor-exit v1
    :try_end_110
    .catchall {:try_start_ba .. :try_end_110} :catchall_10e

    throw p0
.end method

.method public declared-synchronized getCarModeOnState()Z
    .registers 2

    monitor-enter p0

    .line 474
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getChangedByUserFromReason(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "added_from_user_manual"

    .line 5291
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "added_from_anomaly_manual"

    .line 5292
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "deleted_from_user_manual"

    .line 5293
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "default"

    .line 5294
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 190
    :catch_c
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public declared-synchronized getDeviceIdleModeState()Z
    .registers 2

    monitor-enter p0

    .line 482
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppEnabled()Z
    .registers 2

    monitor-enter p0

    .line 506
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppUserId()I
    .registers 2

    monitor-enter p0

    .line 498
    :try_start_1
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnabledStateIfCanBeDisabled(Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    const-string/jumbo p0, "package"

    .line 2233
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 2234
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 2238
    :cond_14
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1b

    if-nez p0, :cond_32

    return v0

    :catch_1b
    move-exception p0

    .line 2242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error occurred in getEnabledStateIfCanBeDisabled()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getFirstTimeUpdatePkgsState()Z
    .registers 2

    monitor-enter p0

    .line 490
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getForegroundServiceStartTime(I)J
    .registers 5

    .line 833
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 834
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_1b
    move-exception p0

    .line 835
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getHasAppIcon(Ljava/lang/String;I)Z
    .registers 5

    .line 1365
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1366
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    .line 1368
    monitor-exit v0

    return p0

    .line 1369
    :cond_14
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public declared-synchronized getIsManualMode()Z
    .registers 2

    monitor-enter p0

    .line 449
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastUsedTime(Ljava/lang/String;I)J
    .registers 5

    .line 1376
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 1381
    :cond_11
    monitor-exit v0

    const-wide/32 p0, -0xdbba0

    return-wide p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getMARsEnabled()Z
    .registers 1

    .line 445
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return p0
.end method

.method public getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MARsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/am/MARsPackageInfo;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1165
    invoke-virtual {p1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result p0

    if-eqz p0, :cond_f

    .line 1166
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/MARsPackageInfo;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public getMARsTargetPkgMap()Lcom/android/server/am/MARsPkgMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MARsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;"
        }
    .end annotation

    .line 1173
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    return-object p0
.end method

.method public declared-synchronized getManagedProfileEnabled()Z
    .registers 2

    monitor-enter p0

    .line 514
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedProfileEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackageDisablerEnabled()Z
    .registers 1

    .line 542
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p0, :cond_7

    .line 543
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageStoppedState(Ljava/lang/String;I)Z
    .registers 4

    .line 2251
    :try_start_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 2252
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_2d

    :catch_d
    move-exception p0

    .line 2254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed getPackageStoppedState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_2d
    return p0
.end method

.method public final getPkgInfoFromDBToMARs()V
    .registers 1

    return-void
.end method

.method public final getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "package"

    .line 1221
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1227
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    :cond_23
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1230
    :goto_26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_185

    .line 1231
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/mars/database/FASEntity;

    .line 1232
    new-instance v6, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v6, v5}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1233
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 1235
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v7

    .line 1238
    :try_start_42
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_63

    :catch_4b
    move-exception v8

    const-string v9, "MARsPolicyManager"

    .line 1240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v2

    .line 1243
    :goto_63
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 1244
    :try_start_66
    iget-object v10, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_c8

    .line 1246
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v13

    if-ne v13, v8, :cond_96

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v13

    if-eq v13, v7, :cond_85

    goto :goto_96

    .line 1262
    :cond_85
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v5

    if-eqz v5, :cond_16a

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    if-nez v5, :cond_16a

    .line 1263
    invoke-virtual {v10, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto/16 :goto_16a

    .line 1247
    :cond_96
    :goto_96
    invoke-virtual {v10, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1248
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    if-ne v8, v12, :cond_a9

    const/16 v5, 0x20

    .line 1251
    invoke-virtual {p0, v5, v10}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_16a

    :cond_a9
    const/16 v5, 0x100

    .line 1253
    invoke-virtual {p0, v5, v10}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1255
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v5

    if-nez v5, :cond_ba

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    if-ne v5, v11, :cond_16a

    .line 1256
    :cond_ba
    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    if-ne v5, v11, :cond_c3

    .line 1257
    invoke-virtual {v10, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1259
    :cond_c3
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16a

    .line 1266
    :cond_c8
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsPackageInfo;->setSharedUidName(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v5

    and-int/2addr v5, v12

    if-eqz v5, :cond_e1

    .line 1269
    invoke-virtual {v6, v12}, Lcom/android/server/am/MARsPackageInfo;->setHasAppIcon(Z)V
    :try_end_e1
    .catchall {:try_start_66 .. :try_end_e1} :catchall_182

    .line 1273
    :cond_e1
    :try_start_e1
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-interface {v0, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x4

    if-eqz v5, :cond_122

    .line 1274
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1275
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1276
    invoke-virtual {v6, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1277
    invoke-virtual {p0, v7}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1278
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    if-eq v5, v11, :cond_114

    .line 1279
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    const/16 v7, 0x10

    if-eq v5, v7, :cond_114

    .line 1280
    invoke-virtual {v6, v12}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1281
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1283
    :cond_114
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15a

    .line 1284
    :cond_122
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    if-ne v5, v7, :cond_15a

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    if-ne v5, v11, :cond_15a

    .line 1285
    invoke-virtual {p0, v7}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1286
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_142} :catch_143
    .catchall {:try_start_e1 .. :try_end_142} :catchall_182

    goto :goto_15a

    :catch_143
    move-exception v5

    :try_start_144
    const-string v7, "MARsPolicyManager"

    .line 1289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPkgInfoFromSMToMARs exception:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_15a
    :goto_15a
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    .line 1293
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_16a
    :goto_16a
    monitor-exit v9
    :try_end_16b
    .catchall {:try_start_144 .. :try_end_16b} :catchall_182

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_17e

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 1298
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_17e

    move v4, v12

    :cond_17e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    :catchall_182
    move-exception p0

    .line 1295
    :try_start_183
    monitor-exit v9
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    throw p0

    :cond_185
    move p1, v2

    .line 1306
    :goto_186
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1ab

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1310
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 1311
    :try_start_191
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v6, :cond_1a1

    .line 1313
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    .line 1316
    :cond_1a1
    monitor-exit v5
    :try_end_1a2
    .catchall {:try_start_191 .. :try_end_1a2} :catchall_1a8

    .line 1317
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_186

    :catchall_1a8
    move-exception p0

    .line 1316
    :try_start_1a9
    monitor-exit v5
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw p0

    :cond_1ab
    if-eqz v4, :cond_1b4

    .line 1321
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler()V

    :cond_1b4
    return-void
.end method

.method public getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;
    .registers 7
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

    .line 4483
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 4484
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->updateJobSchedulerPackages()V

    .line 4485
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 4487
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 4489
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 4491
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 4495
    :try_start_36
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 4496
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_43} :catch_67

    .line 4502
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/am/mars/filter/FilterManager;->filterForChimera(Ljava/lang/String;II)I

    move-result v0

    .line 4503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catch_67
    const-string v0, "MARsPolicyManager"

    const-string v1, "NumberFormatException!"

    .line 4498
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_6f
    return-object p0
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 4281
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 4283
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 4285
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_12
    const/4 v0, 0x5

    if-ne p1, v0, :cond_18

    .line 4287
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_18
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    .line 4289
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_1e
    const/16 v0, 0x8

    if-ne p1, v0, :cond_25

    .line 4291
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_25
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2c

    .line 4293
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_2c
    const/16 v0, 0xa

    if-ne p1, v0, :cond_33

    .line 4295
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProcessRecord(I)Lcom/android/server/am/ProcessRecord;
    .registers 3

    .line 3492
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 3493
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 3494
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getRestrictableList(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4721
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4725
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4726
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4727
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8e

    .line 4728
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4729
    :goto_2d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8b

    .line 4730
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_88

    .line 4733
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->canRestrictBySEP(ILjava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_88

    const/4 v8, 0x1

    if-ne p1, v8, :cond_60

    .line 4736
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 4737
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4738
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v8, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_78

    :cond_60
    if-nez p1, :cond_77

    .line 4741
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_77

    .line 4742
    new-instance v9, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4743
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v8, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    goto :goto_78

    :cond_77
    move-object v9, v1

    .line 4746
    :goto_78
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v8, v10, v7, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4751
    :cond_8e
    monitor-exit v2

    return-object v0

    :catchall_90
    move-exception p0

    monitor-exit v2
    :try_end_92
    .catchall {:try_start_14 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public declared-synchronized getRestrictedBucketEnabled()Z
    .registers 2

    monitor-enter p0

    .line 557
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRestrictedList(I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4787
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4791
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4792
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4793
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_be

    .line 4794
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4795
    :goto_2d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_ba

    .line 4796
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v7, :cond_b6

    .line 4797
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v8

    if-eqz v8, :cond_b6

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p1, :cond_8f

    if-eq p1, v9, :cond_80

    const/4 v10, 0x2

    if-eq p1, v10, :cond_69

    const/4 v8, 0x3

    if-eq p1, v8, :cond_52

    goto :goto_9e

    .line 4815
    :cond_52
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-nez v8, :cond_9e

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/16 v10, 0x100

    if-ne v8, v10, :cond_9e

    .line 4816
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9f

    .line 4810
    :cond_69
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9e

    .line 4811
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-eq v10, v8, :cond_9e

    .line 4812
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9f

    .line 4802
    :cond_80
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 4803
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9f

    .line 4806
    :cond_8f
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-ne v10, v8, :cond_9e

    .line 4807
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9f

    :cond_9e
    :goto_9e
    move-object v8, v1

    :goto_9f
    if-eqz v8, :cond_b6

    .line 4821
    new-instance v10, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v10, p1, v9, v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 4822
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-direct {v8, v9, v7, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2d

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .line 4827
    :cond_be
    monitor-exit v2

    return-object v0

    :catchall_c0
    move-exception p0

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_14 .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public getRestrictionInfoBySEP(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .registers 9

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4569
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string v0, "default"

    .line 4576
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4577
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_98

    .line 4578
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result p0

    if-eqz p0, :cond_98

    if-nez p1, :cond_4d

    .line 4580
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3b

    .line 4582
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_39
    move p3, v3

    goto :goto_98

    .line 4584
    :cond_3b
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    if-nez p0, :cond_44

    const-string v0, "default"

    goto :goto_98

    .line 4589
    :cond_44
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_4d
    if-ne p1, v3, :cond_70

    .line 4593
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 4595
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4597
    :cond_5e
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    if-nez p0, :cond_67

    const-string v0, "default"

    goto :goto_98

    .line 4602
    :cond_67
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_70
    if-ne p1, v2, :cond_81

    .line 4606
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p0

    const/16 p2, 0x8

    if-ne p0, p2, :cond_7d

    const-string v0, "added_from_mars_auto"

    goto :goto_39

    :cond_7d
    const-string v0, "added_from_mars_auto"

    :goto_7f
    move p3, v2

    goto :goto_98

    :cond_81
    const/4 p0, 0x3

    if-ne p1, p0, :cond_98

    .line 4614
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_95

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    const/16 p2, 0x100

    if-ne p0, p2, :cond_95

    const-string v0, "default"

    goto :goto_39

    :cond_95
    const-string v0, "default"

    goto :goto_7f

    .line 4623
    :cond_98
    :goto_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_f .. :try_end_99} :catchall_9f

    .line 4624
    new-instance p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    :catchall_9f
    move-exception p0

    .line 4623
    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public declared-synchronized getScreenOnState()Z
    .registers 2

    monitor-enter p0

    .line 465
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const-string v0, "MARsPolicyManager"

    const/4 v1, 0x0

    .line 570
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v2, 0x402000

    .line 571
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 574
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_14} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_16

    move-object v1, p0

    goto :goto_44

    :catch_16
    move-exception p0

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NullPointerException occurred in getSharedUidName() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 577
    :catch_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NameNotFoundException occurred for package : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-object v1
.end method

.method public getSyncBlockEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 5386
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->BUB_ONOFF:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "com.google.android.gm"

    .line 5387
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 5388
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->isInTopPkgList(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public getUnusedAppList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    .line 5317
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 5321
    :cond_a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getUnusedAppPeriodDaysValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    .line 5322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide v4, 0x90321000L

    sub-long v7, v12, v4

    .line 5324
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5325
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5327
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v4, :cond_38

    return-object v1

    :cond_38
    const/4 v6, 0x2

    const/4 v11, 0x0

    move v5, v0

    move-wide v9, v12

    .line 5330
    invoke-virtual/range {v4 .. v11}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_43

    return-object v1

    .line 5334
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5335
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 5336
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5337
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v7

    sub-long v7, v12, v7

    cmp-long v5, v7, v2

    if-lez v5, :cond_a2

    const/4 v5, 0x0

    .line 5339
    :try_start_68
    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 5340
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4d

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "/data/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 5341
    invoke-virtual {p0, v6, v0}, Lcom/android/server/am/MARsPolicyManager;->isImportantAppFromMarsTarget(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 5342
    invoke-interface {v14, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 5343
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_89} :catch_8a

    goto :goto_4d

    :catch_8a
    move-exception v5

    .line 5347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred in getUnusedAppList() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MARsPolicyManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 5350
    :cond_a2
    invoke-interface {v14, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 5352
    invoke-interface {v14, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_ac
    return-object v14
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 5

    .line 5301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const-string/jumbo v0, "package"

    .line 5303
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 5305
    :try_start_11
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v1, v2, :cond_39

    if-eqz v0, :cond_39

    .line 5306
    invoke-interface {v0, p1, p0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_21

    if-eqz p0, :cond_39

    const/4 p0, 0x0

    return p0

    :catch_21
    move-exception p0

    .line 5310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "hasPermission exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 3

    .line 199
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 200
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 202
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->recoverFreezerStateIfTHAWED()V

    .line 205
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsHandler;->init(Landroid/content/Context;)V

    .line 206
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsTrigger;->init(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->init(Landroid/content/Context;)V

    .line 208
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsComponentTracker;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initCurrentUser(I)V
    .registers 4

    .line 358
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const-wide/16 v0, 0x0

    .line 359
    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 360
    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    .line 363
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 366
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->switchUser(Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initDisabledPackage(I)V
    .registers 9

    .line 336
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x8000

    .line 338
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 341
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_39

    .line 343
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 345
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_39

    .line 346
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 348
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_39

    .line 349
    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    .line 350
    invoke-virtual {p0, v4, p1, v3, v3}, Lcom/android/server/am/MARsPolicyManager;->setEnabledSetting(Ljava/lang/String;III)Z

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3c
    return-void
.end method

.method public final initHistoryBuffer()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, ""

    .line 3417
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const-string/jumbo v2, "m"

    .line 3419
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3420
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    .line 3421
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 3425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3428
    :cond_23
    :goto_23
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2c

    const/16 v0, 0x1388

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x3e8

    :goto_2e
    invoke-direct {v1, p0, v0}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;-><init>(Lcom/android/server/am/MARsPolicyManager;I)V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    return-void
.end method

.method public initInternal(Z)V
    .registers 4

    .line 394
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 396
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_b

    .line 397
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 400
    :cond_b
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_19

    .line 401
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabledConfig()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 405
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result p1

    const-string v1, "MARsPolicyManager"

    if-eqz p1, :cond_2c

    .line 406
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p1, :cond_2a

    const-string p1, "App StartUp History is enabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2a
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 411
    :cond_2c
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_3b

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_3b

    .line 412
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 416
    :cond_3b
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_4a

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_4a

    .line 417
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 421
    :cond_4a
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_59

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_59

    .line 422
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerGameReceiver()V

    .line 426
    :cond_59
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_68

    iget-boolean p1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz p1, :cond_68

    .line 427
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsTrigger;->registerMPSMReceiver()V

    .line 430
    :cond_68
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_e8

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FC = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", AR = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", PD = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", UD = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", SB = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", GA = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", MP = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    return-void
.end method

.method public final initNetHistoryBuffer()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, ""

    .line 3344
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const-string/jumbo v2, "m"

    .line 3346
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3347
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    .line 3348
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 3352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3355
    :cond_23
    :goto_23
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2c

    const/16 v0, 0x1388

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x3e8

    :goto_2e
    invoke-direct {v1, p0, v0}, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;-><init>(Lcom/android/server/am/MARsPolicyManager;I)V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNetHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;

    return-void
.end method

.method public isActiveTrafficAppForChimera(Ljava/lang/String;II)Z
    .registers 5

    .line 4557
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/mars/filter/FilterManager;->filterForChimera(Ljava/lang/String;III)I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAlarmForceSetWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 5411
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5414
    :cond_6
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAlarmWakeupAllowList(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 5396
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p1, 0x18

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isAlarmWakeupBlockList(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 5402
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    const/4 p1, 0x0

    if-nez p0, :cond_6

    return p1

    .line 5405
    :cond_6
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 p4, 0x17

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p2, v0, p3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return p1
.end method

.method public isAppStartUpHistoryEnabled()Z
    .registers 3

    .line 646
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 648
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 651
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 652
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .registers 7

    .line 615
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 616
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_12

    const-string p0, "MARsPolicyManager"

    const-string p1, "AR not enabled"

    .line 617
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v1

    .line 621
    :cond_13
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 622
    :try_start_16
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 623
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_60

    :cond_25
    const/4 v3, 0x2

    .line 629
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 630
    monitor-exit v0

    return v1

    .line 632
    :cond_2e
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p0

    const/16 v3, 0x14

    .line 633
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    .line 632
    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_40

    .line 634
    monitor-exit v0

    return v1

    .line 636
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_7f

    .line 638
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_5e

    const-string p0, "MARsPolicyManager"

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Auto run OFF, userId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 p0, 0x1

    return p0

    .line 624
    :cond_60
    :goto_60
    :try_start_60
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_7d

    const-string p0, "MARsPolicyManager"

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Auto run ON, userId = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_7d
    monitor-exit v0

    return v1

    :catchall_7f
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public isAutoRunOn(Ljava/lang/String;I)Z
    .registers 5

    .line 607
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 609
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 610
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isBackupServicePkg(I)Z
    .registers 7

    .line 859
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 860
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_31

    .line 862
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_31
    const/4 p0, 0x1

    .line 864
    monitor-exit v0

    return p0

    .line 866
    :cond_34
    :goto_34
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public isChinaPolicyEnabled()Z
    .registers 1

    .line 599
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isCurrentUser(I)Z
    .registers 9

    .line 373
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 374
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x5f

    if-lt p1, v0, :cond_15

    const/16 v0, 0x63

    if-gt p1, v0, :cond_15

    move v0, v1

    move v3, v2

    goto :goto_30

    .line 378
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0

    .line 379
    :try_start_18
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    array-length v4, v3

    move v5, v2

    :goto_1c
    if-ge v5, v4, :cond_27

    aget v6, v3, v5

    if-ne p1, v6, :cond_24

    move v3, v1

    goto :goto_28

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_27
    move v3, v2

    .line 385
    :goto_28
    monitor-exit v0

    move v0, v2

    goto :goto_30

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    move v0, v2

    move v3, v0

    .line 388
    :goto_30
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    if-eq p0, p1, :cond_3a

    if-nez v0, :cond_3a

    if-eqz v3, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :cond_3a
    :goto_3a
    return v1
.end method

.method public isFirstTimeTriggerAutorun()Z
    .registers 2

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isForegroundPackage(Ljava/lang/String;I)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 813
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 816
    :cond_c
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->isInTopPkgList(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isForegroundServicePkg(I)Z
    .registers 4

    .line 829
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isImportantAppFromMarsTarget(Ljava/lang/String;)Z
    .registers 3

    .line 5360
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5361
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->isImportantAppFromMarsTarget(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isImportantAppFromMarsTarget(Ljava/lang/String;I)Z
    .registers 5

    .line 5366
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5367
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 5368
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 5370
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, -0x1

    .line 5372
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    const/4 v0, 0x7

    if-lez p0, :cond_21

    .line 5375
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2, p0}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0

    :catchall_23
    move-exception p0

    .line 5372
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public isInPolicyExceptionList(Ljava/lang/String;II)Z
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4328
    :goto_3
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7d

    .line 4329
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    .line 4330
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    .line 4331
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    .line 4332
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v3, :cond_73

    const/4 v8, 0x2

    if-eq v3, v8, :cond_58

    const/4 v4, 0x4

    if-eq v3, v4, :cond_51

    goto :goto_77

    :cond_51
    if-ne p3, v4, :cond_77

    .line 4354
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_77

    :cond_58
    if-ne p3, v8, :cond_77

    .line 4344
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    if-nez v3, :cond_63

    goto :goto_77

    .line 4347
    :cond_63
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    xor-int/2addr v8, v7

    if-ne v4, v8, :cond_77

    .line 4348
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_77

    .line 4337
    :cond_73
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_77
    :goto_77
    if-eqz v2, :cond_7a

    return v7

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7d
    return v0
.end method

.method public isInSpecialIntentList(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isMARsTarget(Ljava/lang/String;I)Z
    .registers 5

    .line 1113
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 1115
    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1116
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z
    .registers 5

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1103
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_23

    if-eqz p0, :cond_22

    .line 1105
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_22

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    const/16 p1, 0x100

    if-eq p0, p1, :cond_22

    goto :goto_23

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public isPolicyEnabled(I)Z
    .registers 2

    .line 4301
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4303
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isSameDay(JJ)Z
    .registers 5

    .line 1656
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1657
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1658
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1659
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 1661
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne p3, p4, :cond_32

    const/4 p3, 0x2

    .line 1662
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p4, p3, :cond_32

    const/4 p3, 0x5

    .line 1663
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 p2, 0x0

    :goto_33
    return p2
.end method

.method public final isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string p0, "equals"

    .line 4311
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 4312
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_43

    :cond_d
    const-string p0, "contains"

    .line 4313
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 4314
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_43

    :cond_1a
    const-string/jumbo p0, "startsWith"

    .line 4315
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 4316
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_43

    :cond_28
    const-string p0, "endsWith"

    .line 4317
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 4318
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_43

    :cond_35
    const-string p0, "equalsIgnoreCase"

    .line 4319
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 4320
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method public final killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .registers 18

    move-object/from16 v0, p0

    .line 2368
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MARs #"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    .line 2371
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/4 v14, 0x0

    .line 2368
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    .line 2372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputforceStopTime(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)V

    return-void
.end method

.method public killPackageProcs(Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 14

    .line 2376
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->killProcessForMARs(Ljava/lang/String;IIIZLjava/lang/String;)V

    return-void
.end method

.method public levelChange(ILcom/android/server/am/MARsPackageInfo;)Z
    .registers 13

    .line 1917
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "levelChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_4d

    .line 1920
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1921
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result v2

    if-nez v2, :cond_4d

    :cond_4c
    return v1

    :cond_4d
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2df

    const/16 v4, 0x2d

    const/4 v5, 0x4

    if-eq p1, v2, :cond_29c

    const/4 v6, 0x3

    const/16 v7, 0x10

    const-wide/16 v8, 0x0

    sparse-switch p1, :sswitch_data_2e4

    goto/16 :goto_2e2

    .line 1967
    :sswitch_60
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1968
    invoke-virtual {p2, v7}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1969
    invoke-virtual {p2, v7}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1970
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_2e2

    .line 1971
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1972
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1973
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1974
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_2e2

    .line 2061
    :sswitch_91
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto/16 :goto_2e2

    .line 2064
    :sswitch_96
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_9d

    move v2, v6

    :cond_9d
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2065
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2066
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_2e2

    .line 2067
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2068
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2069
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2070
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_2e2

    .line 2021
    :sswitch_cb
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    if-eq p1, v2, :cond_14e

    .line 2022
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    const/16 v4, 0x80

    if-eqz p1, :cond_117

    .line 2023
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    if-eq p1, v3, :cond_f3

    .line 2024
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    const/16 v5, 0x40

    if-ne p1, v5, :cond_e8

    goto :goto_f3

    .line 2032
    :cond_e8
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p1, :cond_ef

    .line 2033
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 2035
    :cond_ef
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    goto :goto_11a

    .line 2025
    :cond_f3
    :goto_f3
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2026
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {p1, v5, v7, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2027
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2028
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2029
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_11a

    .line 2038
    :cond_117
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2041
    :goto_11a
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-eq p1, v0, :cond_126

    .line 2042
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-ne p1, v2, :cond_129

    .line 2043
    :cond_126
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2046
    :cond_129
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 2047
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2053
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_14e

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-eqz p0, :cond_14e

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p0

    if-eqz p0, :cond_14b

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14e

    .line 2054
    :cond_14b
    invoke-virtual {p2, v6}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2057
    :cond_14e
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInUsageStats(Z)V

    .line 2058
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto/16 :goto_2e2

    .line 2074
    :sswitch_156
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2075
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2076
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2077
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2078
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    const/16 p0, 0x100

    .line 2079
    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2080
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto/16 :goto_2e2

    .line 2010
    :sswitch_186
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2011
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2012
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 2013
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 2014
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 2015
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_2e2

    .line 2016
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 2017
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p2

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto/16 :goto_2e2

    .line 1998
    :sswitch_1af
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1999
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 2000
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 2002
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_2e2

    .line 2003
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 2004
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    goto/16 :goto_2e2

    .line 1985
    :sswitch_1dd
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1986
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1987
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1988
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1989
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1fe

    .line 1990
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1992
    :cond_1fe
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_2e2

    .line 1993
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 1994
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto/16 :goto_2e2

    .line 1979
    :sswitch_216
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1980
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1981
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1982
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto/16 :goto_2e2

    .line 1956
    :sswitch_224
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1957
    invoke-virtual {p2, v7}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1958
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1959
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_2e2

    .line 1960
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1961
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1962
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1963
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_2e2

    .line 1946
    :sswitch_255
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p1

    const/16 v2, 0x15

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v5, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_267

    return v1

    .line 1948
    :cond_267
    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    cmp-long p1, v4, v8

    if-eqz p1, :cond_285

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long/2addr v4, v6

    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz p1, :cond_27e

    const-wide/16 v6, 0x2

    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v8, v6

    goto :goto_281

    :cond_27e
    const-wide/32 v8, 0x4d3f6400

    :goto_281
    cmp-long p1, v4, v8

    if-lez p1, :cond_298

    .line 1949
    :cond_285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1950
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1951
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    const-string p1, "deepsleep"

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1953
    :cond_298
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto :goto_2e2

    .line 1932
    :cond_29c
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1933
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1934
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-nez p1, :cond_2e2

    .line 1935
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1936
    iget-boolean p0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p0, :cond_2ca

    .line 1937
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    .line 1939
    :cond_2ca
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1940
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1941
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1942
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_2e2

    .line 1929
    :cond_2df
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    :cond_2e2
    :goto_2e2
    return v3

    nop

    :sswitch_data_2e4
    .sparse-switch
        0x4 -> :sswitch_255
        0x8 -> :sswitch_224
        0x10 -> :sswitch_216
        0x20 -> :sswitch_216
        0x40 -> :sswitch_1dd
        0x80 -> :sswitch_1af
        0x100 -> :sswitch_186
        0x200 -> :sswitch_156
        0x400 -> :sswitch_cb
        0x800 -> :sswitch_96
        0x1000 -> :sswitch_91
        0x2000 -> :sswitch_60
    .end sparse-switch
.end method

.method public notifyAnomalyApp(Ljava/lang/String;I)V
    .registers 6

    .line 1710
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_47

    .line 1711
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000000

    .line 1712
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.sdhms.action.FGS_ANOMALY"

    .line 1713
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    .line 1714
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "uid"

    .line 1716
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "type"

    const-string p2, "excessive_fgs"

    .line 1717
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sec.android.sdhms"

    .line 1718
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p1, "NOTI"

    .line 1720
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method public notifyAppSleepToDC(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1696
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3b

    .line 1697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000000

    .line 1698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.mars.APP_SLEEP_NOTIFY"

    .line 1699
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 1701
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "specificpackage"

    .line 1702
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "specificpackagecnt"

    .line 1703
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {p3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p2, "NOTI"

    .line 1705
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V
    .registers 6

    const/16 v0, 0x400

    .line 1536
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1538
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_82

    .line 1539
    new-instance v0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1540
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1541
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "1"

    goto :goto_31

    :cond_2f
    const-string v1, "0"

    :goto_31
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1542
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1543
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1544
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1545
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1546
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1547
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    .line 1552
    :goto_83
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-eqz v2, :cond_94

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    :goto_95
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    if-eqz v0, :cond_a5

    .line 1553
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1554
    :cond_a5
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b6

    .line 1555
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1556
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    :cond_b6
    return-void
.end method

.method public onAppUsed(Ljava/lang/String;I)V
    .registers 7

    .line 986
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 987
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 989
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 992
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setLatestProtectedPkg(Ljava/lang/String;I)V

    .line 994
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 996
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onAppUsedForSpecificCase(Ljava/lang/String;I)V
    .registers 6

    .line 5554
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 5557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 5558
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 5560
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onAppUsedForTimeChanged(J)V
    .registers 14

    .line 1568
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_1b

    const-string v0, "MARsPolicyManager"

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    .line 1573
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_31

    const-string p0, "MARsPolicyManager"

    const-string p1, "SystemTime Changed Less than 30 min, didn\'t care!!"

    .line 1574
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    .line 1579
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1582
    :goto_3c
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_af

    .line 1583
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, v2

    .line 1584
    :goto_55
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_ac

    .line 1585
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1587
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a9

    .line 1588
    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1589
    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setDisableResetTime(J)V

    .line 1591
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1592
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1593
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1594
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1595
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v6

    .line 1596
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 1600
    :cond_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_3c .. :try_end_b0} :catchall_be

    .line 1601
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_bd

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_bd
    return-void

    :catchall_be
    move-exception p0

    .line 1600
    :try_start_bf
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p0
.end method

.method public onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8

    .line 1075
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1076
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p4

    .line 1078
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    if-eqz p4, :cond_1c

    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 1084
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    if-nez p3, :cond_26

    .line 1085
    monitor-exit v0

    return-void

    .line 1087
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    const-string p3, "com.android.systemui"

    .line 1004
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    return-void

    :cond_9
    const-string p3, "MARsPolicyManager"

    if-eqz p5, :cond_53

    if-eqz p2, :cond_53

    .line 1008
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_53

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_53

    .line 1009
    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p4

    if-eqz p4, :cond_53

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p4

    const-string p5, "android.intent.category.HOME"

    invoke-interface {p4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_53

    .line 1010
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Current Home Package "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " Resumed"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->setHomePackage(Ljava/lang/String;)V

    .line 1014
    :cond_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    .line 1023
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    sub-long v0, p4, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_65

    move v0, v1

    goto :goto_66

    :cond_65
    move v0, v2

    .line 1026
    :goto_66
    iput-wide p4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdateTime:J

    if-nez v0, :cond_79

    .line 1028
    iget p4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    if-ne p4, p6, :cond_79

    iget-object p4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    if-eqz p4, :cond_79

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_79

    return-void

    .line 1031
    :cond_79
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastPkgName:Ljava/lang/String;

    .line 1032
    iput p6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUid:I

    .line 1034
    sget-boolean p4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p4, :cond_a8

    if-eqz p2, :cond_a8

    const-string p4, ".iqi"

    .line 1035
    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a8

    .line 1036
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "onPackageResumedFG pkgName = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", userId = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_a8
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p3

    if-eqz p3, :cond_c9

    if-eqz p1, :cond_b8

    .line 1041
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p3

    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Landroid/util/ArraySet;I)V

    goto :goto_c9

    :cond_b8
    if-eqz p2, :cond_c9

    .line 1043
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1044
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object p3

    invoke-virtual {p3, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Landroid/util/ArraySet;I)V

    :cond_c9
    :goto_c9
    if-eqz p2, :cond_e1

    .line 1049
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 1050
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    return-void

    :cond_e1
    if-eqz p2, :cond_109

    .line 1058
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 1059
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget p1, p1, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    if-ne p6, p1, :cond_104

    .line 1060
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_104

    move v1, v2

    :cond_104
    if-eqz v1, :cond_109

    .line 1065
    invoke-virtual {p0, p2, p6}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    :cond_109
    return-void
.end method

.method public onSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_87

    if-nez p2, :cond_6

    goto/16 :goto_87

    :cond_6
    const-string v0, "android.intent.action.TTS_SERVICE"

    .line 931
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p4, :cond_1b

    .line 932
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1b
    const-string v0, "android.net.VpnService"

    .line 935
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 936
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2e
    const-string v0, "android.service.notification.NotificationListenerService"

    .line 939
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 940
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_41
    const-string v0, "android.service.wallpaper.WallpaperService"

    .line 943
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "com.samsung.android.service.wallpaper.LiveWallpaperService"

    .line 944
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "com.samsung.android.service.wallpaper.CoverWallpaperService"

    .line 945
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_59
    const-string v0, "android"

    .line 947
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6c

    .line 948
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->onWallPaperPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    :cond_6c
    sget-object p4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p4

    .line 952
    :try_start_6f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_82

    const-string p3, "android.view.InputMethod"

    .line 954
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 958
    :cond_82
    monitor-exit p4

    return-void

    :catchall_84
    move-exception p0

    monitor-exit p4
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_84

    throw p0

    :cond_87
    :goto_87
    return-void
.end method

.method public onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 879
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 883
    :cond_a
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 884
    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 886
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 887
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 888
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetEnabled(Ljava/lang/String;I)V

    goto :goto_66

    :cond_28
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 889
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 890
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetDisabled(Ljava/lang/String;I)V

    goto :goto_66

    :cond_38
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 891
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 892
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_66

    :cond_44
    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    .line 893
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 894
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 895
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminEnabled(Ljava/lang/String;I)V

    goto :goto_66

    :cond_57
    const-string p0, "android.app.action.DEVICE_ADMIN_DISABLED"

    .line 896
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 897
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminDisabled(Ljava/lang/String;I)V

    .line 900
    :cond_66
    :goto_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_d .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public onSpecialUnBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_40

    if-nez p2, :cond_5

    goto :goto_40

    :cond_5
    const-string p0, "android.intent.action.TTS_SERVICE"

    .line 966
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    if-eqz p4, :cond_1a

    .line 967
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1a
    const-string p0, "android.net.VpnService"

    .line 970
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 971
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2d
    const-string p0, "android.service.notification.NotificationListenerService"

    .line 974
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 975
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public postInit(Z)V
    .registers 7

    const-string v0, "MARsPolicyManager"

    .line 217
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_7

    return-void

    .line 220
    :cond_7
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    .line 223
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerSMDBChangedReceiver()V

    .line 225
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->isSMProviderExist()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 226
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return-void

    :cond_23
    const/4 v1, 0x1

    .line 229
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 232
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_restricted_bucket"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_37

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setRestrictedBucketEnabled(Z)V

    :cond_37
    :try_start_37
    const-string/jumbo v3, "sys.config.mars_version"

    const-string v4, "7.00"

    .line 249
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    const-string/jumbo v3, "init(), we cannot set system property"

    .line 251
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_46
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHINA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 255
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 257
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaModel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_73

    .line 261
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->initHistoryBuffer()V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->initNetHistoryBuffer()V

    .line 265
    :cond_73
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 266
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 267
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_a2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_a2
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetMARsPolicyConditionMsgToDBHandler(Z)V

    .line 271
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 272
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 273
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    .line 274
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 275
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_dd

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->registerAppIdleStateReceiver()V

    .line 278
    :cond_dd
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 279
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendGetBatteryStatMsgToMainHandler(Z)V

    .line 280
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    :try_start_f2
    const-string/jumbo p1, "sys.dualapp.profile_id"

    const-string v2, "-1"

    .line 284
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    const/16 v2, 0x5f

    if-lt p1, v2, :cond_11b

    const/16 v2, 0x63

    if-gt p1, v2, :cond_11b

    .line 286
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    .line 287
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V
    :try_end_114
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_114} :catch_115

    goto :goto_11b

    :catch_115
    const-string/jumbo p1, "init() get DualAppUserId failed!"

    .line 290
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->setSubUserIds()V

    return-void
.end method

.method public final registerAppIdleStateReceiver()V
    .registers 4

    .line 1386
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v0, :cond_21

    .line 1388
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener-IA;)V

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1389
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_21

    const-string p0, "MARsPolicyManager"

    const-string/jumbo v0, "registerAppIdleStateReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V
    .registers 12

    .line 4529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4531
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 4532
    :goto_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 4533
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v3

    .line 4534
    :goto_28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_57

    .line 4535
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 4536
    invoke-virtual {v7, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4537
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 4538
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4b

    const/4 v8, 0x0

    .line 4539
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4542
    :cond_4b
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-nez v8, :cond_54

    .line 4543
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4547
    :cond_5a
    :goto_5a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 4548
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 4549
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 4552
    :cond_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_f .. :try_end_8f} :catchall_b6

    const-string v1, "Calm"

    .line 4553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelPolicy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " UFZ-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_b6
    move-exception p0

    .line 4552
    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public final removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4919
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4921
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4923
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_de

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4924
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4925
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v6

    .line 4926
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4927
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_18

    .line 4928
    :cond_37
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 4929
    :try_start_3a
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v5

    if-eqz v5, :cond_d8

    .line 4931
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_4e

    .line 4932
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 4933
    :cond_4e
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v6

    if-nez v6, :cond_65

    .line 4934
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4935
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 4937
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v4

    if-nez v4, :cond_75

    .line 4938
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4939
    invoke-virtual {v5, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    :cond_75
    const/4 v4, 0x0

    .line 4941
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    const/4 v4, 0x1

    .line 4942
    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4943
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4944
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4945
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4946
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4947
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4948
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4949
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    .line 4950
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4951
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4954
    :cond_d8
    :goto_d8
    monitor-exit v7

    goto/16 :goto_18

    :catchall_db
    move-exception p0

    monitor-exit v7
    :try_end_dd
    .catchall {:try_start_3a .. :try_end_dd} :catchall_db

    throw p0

    .line 4957
    :cond_de
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_eb

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4958
    :cond_eb
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f8

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4960
    :cond_f8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_105

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_105
    return-object v3
.end method

.method public reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 14

    .line 2381
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_10f

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p4, :cond_44

    .line 2385
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez p1, :cond_10f

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p1

    if-ne p1, v2, :cond_10f

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_10f

    .line 2386
    iget-object p0, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    if-eqz p0, :cond_10f

    .line 2387
    aget-wide p1, p0, v6

    cmp-long p1, p1, v3

    if-eqz p1, :cond_3c

    .line 2388
    aget-wide p1, p0, v5

    cmp-long p3, p1, v3

    if-eqz p3, :cond_34

    .line 2389
    aput-wide p1, p0, v6

    .line 2391
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    aput-wide p1, p0, v5

    goto/16 :goto_10f

    .line 2393
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    aput-wide p1, p0, v6

    goto/16 :goto_10f

    .line 2398
    :cond_44
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2399
    sget-boolean p4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz p4, :cond_4e

    .line 2401
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setCheckJobRunningCount(I)V

    .line 2403
    :cond_4e
    iget-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez p4, :cond_109

    .line 2404
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result p4

    if-eqz p4, :cond_10f

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p4

    if-ne p4, v2, :cond_10f

    const-string p4, "Binder(1)-free_buffer_full"

    .line 2405
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x3

    if-eqz p3, :cond_a4

    .line 2406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    sub-long/2addr v2, v7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide v7

    cmp-long p3, v2, v7

    if-lez p3, :cond_77

    goto :goto_78

    :cond_77
    move v5, v6

    :goto_78
    if-eqz v5, :cond_10f

    .line 2408
    invoke-virtual {v1, p4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2409
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    const-string p3, "LVU"

    .line 2410
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder(1)-free_buffer_full!"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    .line 2413
    :cond_a4
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p3

    iget v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    if-lt p3, v2, :cond_100

    .line 2414
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p3

    sub-int/2addr p3, v5

    invoke-virtual {v1, p3}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    .line 2415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p3, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v7, p3, v6

    sub-long/2addr v2, v7

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    cmp-long p3, v2, v7

    if-gez p3, :cond_10f

    .line 2416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    sub-long/2addr v2, v7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLastUsedTime(Ljava/lang/String;I)J

    move-result-wide v7

    cmp-long p3, v2, v7

    if-lez p3, :cond_d3

    goto :goto_d4

    :cond_d3
    move v5, v6

    :goto_d4
    if-eqz v5, :cond_10f

    .line 2418
    invoke-virtual {v1, p4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2419
    invoke-virtual {v1, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    const-string p3, "LVU"

    .line 2420
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UFZ counts excceed! "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    .line 2424
    :cond_100
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result p0

    add-int/2addr p0, v5

    invoke-virtual {v1, p0}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    goto :goto_10f

    .line 2428
    :cond_109
    iget-object p0, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aput-wide v3, p0, v6

    .line 2429
    aput-wide v3, p0, v5

    .line 2433
    :cond_10f
    :goto_10f
    monitor-exit v0

    return-void

    :catchall_111
    move-exception p0

    monitor-exit v0
    :try_end_113
    .catchall {:try_start_3 .. :try_end_113} :catchall_111

    throw p0
.end method

.method public resetAutoDisabledAppState(Ljava/lang/String;IZ)V
    .registers 10

    .line 4421
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_26

    if-eqz v1, :cond_26

    .line 4423
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    .line 4424
    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v4

    if-nez v4, :cond_26

    .line 4426
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4427
    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    goto :goto_27

    :cond_26
    move v2, v3

    .line 4431
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2f

    if-eqz v2, :cond_2b

    move p3, v3

    .line 4432
    :cond_2b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    return-void

    :catchall_2f
    move-exception p0

    .line 4431
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public restrictBySEP(IIZLjava/lang/String;I)Z
    .registers 8

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4682
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 4686
    :cond_a
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4687
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 4688
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_25

    if-eqz p3, :cond_22

    const-string p3, "added_from_user_manual"

    goto :goto_32

    :cond_22
    const-string p3, "added_from_mars_auto"

    goto :goto_32

    :cond_25
    const/4 v1, 0x2

    if-ne p2, v1, :cond_30

    if-eqz p3, :cond_2d

    const-string p3, "deleted_from_user_manual"

    goto :goto_32

    :cond_2d
    const-string p3, "deleted_from_mars_auto"

    goto :goto_32

    :cond_30
    const-string p3, "default"

    .line 4697
    :goto_32
    new-instance v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 4698
    new-instance p1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-direct {p1, p4, p5, v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4699
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public restrictJobsByUid(IZ)V
    .registers 6

    .line 5419
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_5

    return-void

    .line 5421
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4a

    .line 5422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 5423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    .line 5424
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "restrict"

    .line 5425
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictJobsByUid: u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", restrict="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MARsPolicyManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5428
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {p2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4a
    return-void
.end method

.method public setAllPoliciesOnOffState(IZ)V
    .registers 6

    .line 669
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_32

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllPoliciesOnOffState on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spcm_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_32
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_8a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7c

    if-eq p1, v1, :cond_62

    const/4 v2, 0x3

    if-eq p1, v2, :cond_52

    const p2, 0x98967f

    if-eq p1, p2, :cond_45

    goto :goto_88

    .line 700
    :cond_45
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 701
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-eqz p2, :cond_88

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_88

    .line 693
    :cond_52
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    const/4 v0, 0x2

    .line 694
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-nez p2, :cond_88

    .line 696
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_88

    .line 683
    :cond_62
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v2, :cond_6f

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v2, :cond_6f

    .line 684
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 685
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 687
    :cond_6f
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-nez p2, :cond_78

    .line 688
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 690
    :cond_78
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    goto :goto_88

    .line 677
    :cond_7c
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result p2

    if-eqz p2, :cond_88

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 706
    :cond_88
    :goto_88
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    :cond_8a
    return-void
.end method

.method public declared-synchronized setCarModeOnState(Z)V
    .registers 2

    monitor-enter p0

    .line 478
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 479
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized setDeviceIdleModeState(Z)V
    .registers 2

    monitor-enter p0

    .line 486
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 487
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDualAppEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 510
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 511
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDualAppUserId(I)V
    .registers 2

    monitor-enter p0

    .line 502
    :try_start_1
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 503
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setEnabledSetting(Ljava/lang/String;III)Z
    .registers 13

    const-string/jumbo p0, "package"

    .line 2260
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_f
    const-string v5, "auto_disabler"

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    .line 2263
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1f
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    const/4 p0, 0x1

    .line 2268
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_3b

    :catch_1f
    move-exception p0

    :try_start_20
    const-string p1, "MARsPolicyManager"

    .line 2266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error occurred in setEnabledSetting()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1d

    .line 2268
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_3b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2269
    throw p0
.end method

.method public setFGSRestrictionTarget(Ljava/lang/String;I)V
    .registers 8

    .line 5538
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 5539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 5541
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_44

    .line 5542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf731400

    cmp-long p2, v1, v3

    if-ltz p2, :cond_44

    .line 5543
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v1

    sget p2, Lcom/android/server/am/MARsPolicyManager;->FGS_BATTERY_USAGE_THRESHOLD:I

    int-to-double v3, p2

    cmpl-double p2, v1, v3

    if-ltz p2, :cond_44

    .line 5544
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/MARsHandler;->sendAnomalyMsgToMainHandler(Ljava/lang/String;I)V

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 5548
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_52

    if-eqz p1, :cond_51

    .line 5550
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsBigData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/MARsBigData;->sendFalconBigData(Lcom/android/server/am/MARsPackageInfo;)V

    :cond_51
    return-void

    :catchall_52
    move-exception p0

    .line 5548
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public setFakeTopActivityList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setFirstNotiSentTimeForSleep(J)V
    .registers 3

    .line 1725
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    return-void
.end method

.method public setFirstNotiSentTimeForSleepDismiss(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 1733
    :goto_9
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    return-void
.end method

.method public declared-synchronized setFirstTimeUpdatePkgsState(Z)V
    .registers 2

    monitor-enter p0

    .line 494
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 495
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGoogleEnabled(Ljava/lang/String;I)V
    .registers 5

    .line 4711
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 4712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p1, 0x0

    .line 4714
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4715
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4717
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

.method public declared-synchronized setIsManualMode(Z)V
    .registers 5

    monitor-enter p0

    .line 453
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez p1, :cond_21

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleep(J)V

    const-wide/16 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setLastNotiSentTimeForDisabled(J)V

    .line 458
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 459
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    :cond_21
    const-string v0, "DEV"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_32

    const-string p1, "ON"

    goto :goto_34

    :cond_32
    const-string p1, "OFF"

    :goto_34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 462
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setKeyguardPkgInfo(Ljava/lang/String;I)V
    .registers 3

    .line 839
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->setKeyguardInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastNotiSentTimeForDisabled(J)V
    .registers 3

    .line 1729
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    return-void
.end method

.method public declared-synchronized setManagedProfileEnabled(ZI)V
    .registers 4

    monitor-enter p0

    .line 518
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedProfileEnabled:Z

    .line 519
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    if-eqz p1, :cond_11

    .line 521
    :try_start_8
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    goto :goto_19

    .line 523
    :cond_11
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 525
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    .line 526
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    .line 525
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setMaxLevel(ILjava/lang/String;)V
    .registers 9

    .line 3912
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_c6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v2, :cond_46

    if-eq p1, v3, :cond_20

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1d

    move v3, v4

    goto :goto_48

    :cond_1d
    const/16 v3, 0x8

    goto :goto_48

    .line 3922
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 3923
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    .line 3926
    :cond_2d
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    .line 3927
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget-boolean v5, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v5, :cond_40

    const/16 v5, 0x2d

    goto :goto_42

    :cond_40
    const/16 v5, 0x28

    .line 3926
    :goto_42
    invoke-virtual {p1, p2, v2, v5, v4}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto :goto_48

    :cond_46
    const/16 v3, 0x400

    :goto_48
    if-nez v3, :cond_4c

    .line 3940
    monitor-exit v0

    return-void

    .line 3942
    :cond_4c
    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_c6

    .line 3943
    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3944
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3945
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-eqz p1, :cond_74

    const-string p1, "1"

    goto :goto_76

    :cond_74
    const-string p1, "0"

    :goto_76
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3946
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p1

    if-eqz p1, :cond_83

    const-string p1, "1"

    goto :goto_85

    :cond_83
    const-string p1, "0"

    :goto_85
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3947
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFasReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3948
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3949
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3950
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3951
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object p0

    .line 3952
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    goto :goto_c7

    :cond_c6
    const/4 p0, 0x0

    .line 3955
    :goto_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_3 .. :try_end_c8} :catchall_d2

    if-eqz p0, :cond_d1

    .line 3957
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_d1
    return-void

    :catchall_d2
    move-exception p0

    .line 3955
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public setPackageDisablerEnabled(Z)V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_3f

    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eq v1, p1, :cond_3f

    .line 550
    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 551
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageDisablerEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disabler_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEV"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public setPackagesUnusedLockingTime(I)V
    .registers 10

    .line 711
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    const-string v1, "MARsPolicyManager"

    if-eqz v0, :cond_1b

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_1b
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    int-to-long v4, p1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 716
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 719
    :cond_29
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    sub-long/2addr v4, v6

    .line 720
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    if-ne p1, v2, :cond_6b

    .line 724
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->callRestrictAppForAllPkgs()V

    .line 725
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz p1, :cond_42

    .line 726
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const/16 v0, 0x2d

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->callSetAppStandbyBuckets(IIZ)V

    :cond_42
    const-string p1, "DEV"

    const-string v0, "Auto restriction\'s battery condition changed !"

    .line 728
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    .line 730
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 732
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 733
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    const-wide/32 v3, 0x6ddd00

    .line 734
    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 735
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 736
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_79

    const-string p0, "DEBUGGING mode turned on, skip to check battery usage !"

    .line 737
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 740
    :cond_6b
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    const/4 p1, 0x0

    .line 741
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 742
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    :cond_79
    :goto_79
    return-void
.end method

.method public declared-synchronized setRestrictedBucketEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 561
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eq v0, p1, :cond_7

    .line 562
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 564
    :cond_7
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSCPMList(Ljava/util/ArrayList;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    .line 5434
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    .line 5435
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v9

    .line 5437
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    .line 5441
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v13, v0

    const/4 v14, 0x0

    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_232

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5445
    sget-object v15, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v15

    .line 5446
    :try_start_3a
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v7, v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    const/4 v6, 0x4

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b8

    .line 5447
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    if-eq v1, v6, :cond_b8

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b8

    .line 5448
    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setIsSCPMTarget(Z)V

    .line 5450
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 5451
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    const-string/jumbo v4, "specificDisable"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 5453
    :cond_8b
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v17

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v18

    const/16 v19, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v12, v4

    move/from16 v4, v17

    move-object/from16 v17, v11

    move v11, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    const/16 v1, 0x2000

    .line 5455
    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    .line 5456
    invoke-virtual {v7, v0, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v4, v12

    goto :goto_c0

    :cond_b8
    move/from16 v18, v6

    move-object/from16 v17, v11

    move v11, v5

    move-object/from16 v4, v16

    const/4 v1, 0x0

    .line 5458
    :goto_c0
    monitor-exit v15
    :try_end_c1
    .catchall {:try_start_3a .. :try_end_c1} :catchall_22f

    if-eqz v1, :cond_152

    if-eqz v4, :cond_152

    :try_start_c5
    const-string/jumbo v0, "package"

    .line 5462
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5463
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_112

    if-ne v1, v11, :cond_e1

    goto :goto_112

    .line 5474
    :cond_e1
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_152

    const-string v0, "MARsPolicyManager"

    .line 5475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already disabled, so we will not disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    .line 5466
    :cond_112
    :goto_112
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_139

    .line 5467
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x4

    const/16 v22, 0x0

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v23

    const-string v24, "auto_disabler"

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v24}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 5469
    invoke-static {v4, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 5470
    invoke-static {v4, v11}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_139} :catch_13b

    :cond_139
    move v5, v11

    goto :goto_153

    :catch_13b
    move-exception v0

    const-string v1, "MARsPolicyManager"

    .line 5478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred in disable package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    :goto_152
    const/4 v5, 0x0

    :goto_153
    if-eqz v4, :cond_22b

    if-eqz v5, :cond_22b

    .line 5483
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 5484
    :try_start_15a
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v7, v0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_226

    .line 5486
    invoke-virtual {v7, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 5487
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5489
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18f

    .line 5490
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5493
    :cond_18f
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v14, :cond_196

    move v14, v11

    .line 5495
    :cond_196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v8, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v18

    .line 5496
    new-instance v2, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5497
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5498
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d4

    const-string v3, "1"

    goto :goto_1d6

    :cond_1d4
    move-object/from16 v3, v16

    :goto_1d6
    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5499
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e3

    const-string v3, "1"

    goto :goto_1e5

    :cond_1e3
    move-object/from16 v3, v16

    :goto_1e5
    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5500
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    if-ne v3, v11, :cond_1f7

    .line 5501
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v16

    :cond_1f7
    move-object/from16 v3, v16

    .line 5500
    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    const/16 v3, 0x10

    .line 5502
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5503
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 5504
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 5505
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    .line 5506
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5508
    :cond_226
    monitor-exit v1

    goto :goto_22b

    :catchall_228
    move-exception v0

    monitor-exit v1
    :try_end_22a
    .catchall {:try_start_15a .. :try_end_22a} :catchall_228

    throw v0

    :cond_22b
    :goto_22b
    move-object/from16 v11, v17

    goto/16 :goto_2b

    :catchall_22f
    move-exception v0

    .line 5458
    :try_start_230
    monitor-exit v15
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    throw v0

    :cond_232
    if-eqz v14, :cond_23d

    const-string v0, "LVU"

    .line 5512
    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 5515
    :cond_23d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_257

    .line 5516
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 5517
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const-string v1, "deepsleepspecific"

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_257
    return-void
.end method

.method public declared-synchronized setScreenOnState(Z)V
    .registers 5

    monitor-enter p0

    .line 469
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    const-string v0, "SYS"

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string p1, "ON"

    goto :goto_16

    :cond_14
    const-string p1, "OFF"

    :goto_16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 471
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubUserIds()V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_3e

    .line 298
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 300
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz v1, :cond_15

    .line 302
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v2

    .line 303
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 304
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3b

    .line 305
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    goto :goto_15

    :catchall_3b
    move-exception p0

    .line 304
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    return-void
.end method

.method public setTTSPkgInfo(I)V
    .registers 3

    .line 904
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgBind(Ljava/lang/Integer;)V

    .line 905
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTTSPkgInfo : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z
    .registers 9

    .line 2833
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_e

    .line 2835
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v3

    if-eq v0, v3, :cond_11

    :cond_e
    const/4 v3, 0x4

    if-le v0, v3, :cond_12

    :cond_11
    return v2

    :cond_12
    const/4 v4, 0x0

    if-ne v0, v3, :cond_33

    .line 2841
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    return v4

    .line 2844
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v4

    :cond_32
    :goto_32
    return v2

    .line 2847
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v5

    if-eqz v5, :cond_3a

    return v4

    .line 2851
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_62

    .line 2852
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p0

    if-nez p0, :cond_61

    .line 2853
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result p0

    if-gt p0, v1, :cond_60

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_60

    .line 2857
    :cond_5c
    invoke-virtual {p1, v6}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    goto :goto_61

    :cond_60
    :goto_60
    return v2

    :cond_61
    :goto_61
    return v4

    .line 2861
    :cond_62
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v1

    if-nez v1, :cond_71

    return v2

    .line 2864
    :cond_71
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2865
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getDeviceIdleModeState()Z

    move-result p0

    if-eqz p0, :cond_97

    if-ge v0, v6, :cond_97

    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/2addr p0, v3

    if-nez p0, :cond_97

    return v4

    :cond_97
    return v2

    :cond_98
    return v4
.end method

.method public final sleepPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 5097
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5098
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5099
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5100
    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0x40

    move v12, v1

    goto :goto_1e

    :cond_1d
    const/4 v12, 0x2

    .line 5101
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_22
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_102

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5102
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5103
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    .line 5104
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5105
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_22

    .line 5109
    :cond_42
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 5110
    :try_start_45
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v15

    if-eqz v15, :cond_fb

    .line 5112
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    if-ne v1, v2, :cond_74

    .line 5113
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 5114
    invoke-virtual {v0, v15, v11}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 5115
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 5117
    :cond_74
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_86

    goto :goto_83

    :cond_82
    const/4 v2, 0x2

    .line 5118
    :goto_83
    invoke-virtual {v0, v12, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 5120
    :cond_86
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5121
    invoke-virtual {v15, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 5123
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5124
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5125
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_b2

    const-string v3, "1"

    goto :goto_b4

    :cond_b2
    const-string v3, "0"

    :goto_b4
    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5126
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5127
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5128
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5129
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 5130
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 5131
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5132
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_fb
    :goto_fb
    const/4 v2, 0x2

    .line 5135
    :goto_fc
    monitor-exit v14

    goto/16 :goto_22

    :catchall_ff
    move-exception v0

    monitor-exit v14
    :try_end_101
    .catchall {:try_start_45 .. :try_end_101} :catchall_ff

    throw v0

    .line 5139
    :cond_102
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_106
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 5140
    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->enableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v4

    .line 5141
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 5142
    :try_start_119
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v11

    invoke-virtual {v0, v6, v8, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1dd

    .line 5144
    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    if-eqz v4, :cond_1dd

    .line 5145
    invoke-virtual {v0, v12, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 5146
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    if-le v3, v2, :cond_13d

    .line 5147
    invoke-virtual {v6, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 5149
    :cond_13d
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 5150
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 5151
    invoke-virtual {v6, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5153
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 5154
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_167

    :cond_156
    const/4 v3, 0x0

    .line 5156
    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 5157
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5159
    :goto_167
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5160
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5161
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_189

    const-string v4, "1"

    goto :goto_18b

    :cond_189
    const-string v4, "0"

    :goto_18b
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5162
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5163
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5164
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5165
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5166
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5167
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5168
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5169
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5172
    :cond_1dd
    monitor-exit v5

    goto/16 :goto_106

    :catchall_1e0
    move-exception v0

    monitor-exit v5
    :try_end_1e2
    .catchall {:try_start_119 .. :try_end_1e2} :catchall_1e0

    throw v0

    .line 5175
    :cond_1e3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_1f0
    return-object v10
.end method

.method public final switchPolicies(IZ)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 771
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_f

    .line 775
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_f

    .line 776
    iput-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_f
    if-eqz p1, :cond_22

    .line 779
    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto :goto_22

    :cond_14
    if-ne p1, v1, :cond_22

    .line 782
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_1c

    .line 783
    iput-boolean v1, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 785
    :cond_1c
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p1, :cond_22

    .line 786
    iput-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_22
    :goto_22
    if-nez p2, :cond_55

    .line 790
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 791
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    const-string/jumbo p2, "switchPolicy"

    invoke-virtual {p1, p2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 795
    :cond_38
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 796
    :try_start_3b
    iget-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p2, :cond_42

    .line 797
    invoke-virtual {p2}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 800
    :cond_42
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz p0, :cond_49

    .line 801
    invoke-virtual {p0}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 802
    :cond_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_52

    .line 804
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    goto :goto_55

    :catchall_52
    move-exception p0

    .line 802
    :try_start_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method

.method public switchUser(I)V
    .registers 5

    const-string v0, "DEV"

    const-string/jumbo v1, "switchUser"

    .line 313
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getScreenOnFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 316
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 317
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->removeBgTriggerMsg()V

    .line 320
    :cond_21
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 321
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "MUM"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_34
    const/4 v1, 0x1

    .line 324
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v0, :cond_40

    .line 327
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 330
    :cond_40
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterManager;->deInit()V

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->initCurrentUser(I)V

    .line 332
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    return-void
.end method

.method public triggerAction()V
    .registers 33

    move-object/from16 v0, p0

    const-string v1, "MARsPolicyManager"

    const-string/jumbo v2, "triggerAction called!"

    .line 2876
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 2880
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 2881
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [I

    .line 2888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2891
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 2892
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateJobSchedulerPackages()V

    .line 2894
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 2895
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2896
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2897
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getDeviceIdleModeState()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2898
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveSensorFilter;->getActiveSensorList()V

    .line 2899
    :cond_72
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getScreenOnState()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v1

    if-nez v1, :cond_8d

    return-void

    .line 2902
    :cond_8d
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    move v2, v10

    move v6, v2

    const/4 v1, 0x0

    .line 2903
    :goto_93
    :try_start_93
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v15, 0x1

    if-ge v6, v3, :cond_502

    .line 2904
    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move-object/from16 v17, v1

    move/from16 v18, v2

    const/4 v2, 0x0

    .line 2905
    :goto_b1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f1

    .line 2906
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v1, :cond_4d8

    .line 2908
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v5

    if-eqz v5, :cond_4d8

    .line 2909
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->skipTriggerAction(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_d1

    goto/16 :goto_4d8

    .line 2911
    :cond_d1
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    .line 2912
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    move/from16 v21, v6

    .line 2913
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2914
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    move/from16 v22, v2

    const/16 v2, 0xa

    if-eq v4, v15, :cond_275

    const/4 v15, 0x2

    if-eq v4, v15, :cond_275

    const/4 v15, 0x3

    if-eq v4, v15, :cond_180

    const/4 v15, 0x4

    if-eq v4, v15, :cond_101

    move-object/from16 v28, v3

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    move/from16 v19, v21

    move/from16 v27, v22

    const/4 v3, 0x0

    :goto_fd
    const/16 v30, 0x0

    goto/16 :goto_4cb

    .line 2918
    :cond_101
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    const/16 v15, 0x15

    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14a

    .line 2919
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_13f

    .line 2921
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v15, v1

    move-object v1, v10

    move/from16 v27, v22

    move-object/from16 v2, p0

    move-object/from16 v28, v24

    move-object/from16 v29, v11

    const/4 v11, 0x4

    move/from16 v19, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2922
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_24a

    :cond_13f
    move-object v15, v1

    move-object/from16 v29, v11

    move/from16 v19, v21

    move/from16 v27, v22

    move-object/from16 v28, v24

    const/4 v11, 0x4

    goto :goto_155

    :cond_14a
    move-object v15, v1

    move-object/from16 v29, v11

    move/from16 v19, v21

    move/from16 v27, v22

    move-object/from16 v28, v24

    const/4 v11, 0x4

    const/4 v2, 0x0

    .line 2925
    :goto_155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    :cond_179
    :goto_179
    move-object/from16 v16, v8

    const/4 v3, 0x0

    const/16 v18, 0x1

    goto/16 :goto_fd

    :cond_180
    move-object v15, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move/from16 v19, v21

    move/from16 v27, v22

    const/4 v11, 0x4

    .line 2929
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_227

    .line 2930
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 2931
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c1

    .line 2933
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2934
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto/16 :goto_24a

    .line 2938
    :cond_1c1
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1eb

    .line 2940
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    const/16 v20, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2941
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_24a

    .line 2944
    :cond_1eb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v9, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v4

    const/16 v3, 0xe

    if-eq v3, v1, :cond_21b

    const/16 v3, 0xd

    if-eq v3, v1, :cond_21b

    if-eq v11, v1, :cond_21b

    if-ne v2, v1, :cond_179

    :cond_21b
    const/4 v1, 0x2

    .line 2949
    invoke-virtual {v15, v1}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    move-object/from16 v16, v8

    const/16 v18, 0x1

    :goto_223
    const/16 v30, 0x0

    goto/16 :goto_4e4

    .line 2954
    :cond_227
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_24f

    .line 2956
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2957
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    :goto_24a
    move-object/from16 v16, v8

    move-object v3, v10

    goto/16 :goto_fd

    .line 2960
    :cond_24f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    goto/16 :goto_179

    :cond_275
    move-object v15, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move/from16 v19, v21

    move/from16 v27, v22

    const/4 v11, 0x4

    .line 2966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d0

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2cc

    .line 2967
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2cc

    const/4 v2, 0x3

    .line 2969
    invoke-virtual {v15, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2970
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    const/16 v16, 0x0

    move-object v1, v10

    move v11, v2

    move-object/from16 v2, p0

    move-object/from16 v30, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 2971
    invoke-virtual {v0, v15, v10}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object/from16 v16, v8

    move-object v3, v10

    goto/16 :goto_4cb

    :cond_2cc
    move-object/from16 v30, v3

    const/4 v11, 0x3

    goto :goto_2d3

    :cond_2d0
    const/4 v11, 0x3

    const/16 v30, 0x0

    .line 2975
    :goto_2d3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_306

    .line 2976
    invoke-virtual {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_302

    .line 2977
    invoke-virtual {v15, v11}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    const-string v1, "MARsPolicyManager"

    .line 2978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level up freecess excluded app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_302
    move-object/from16 v16, v8

    goto/16 :goto_4e4

    .line 2982
    :cond_306
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_421

    .line 2983
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v6, v10, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_349

    .line 2986
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v20

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v21

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v2, p0

    move v11, v3

    move-object/from16 v3, v16

    move-object/from16 v31, v4

    move/from16 v4, v20

    move-object/from16 v16, v8

    move v8, v5

    move/from16 v5, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    move-object/from16 v1, v31

    .line 2987
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object v3, v1

    goto :goto_3a2

    :cond_349
    move v11, v3

    move-object/from16 v21, v6

    move-object/from16 v16, v8

    move v8, v5

    .line 2989
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v1, :cond_37a

    const/16 v1, 0x13

    if-ne v11, v1, :cond_37a

    .line 2990
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getCheckJobRunningCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2991
    invoke-virtual {v15, v1}, Lcom/android/server/am/MARsPackageInfo;->setCheckJobRunningCount(I)V

    const/4 v2, 0x5

    if-lt v1, v2, :cond_37a

    if-nez v17, :cond_36b

    .line 2994
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_36d

    :cond_36b
    move-object/from16 v1, v17

    .line 2996
    :goto_36d
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    .line 3000
    :cond_37a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v9, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    move-object/from16 v3, v30

    const/16 v18, 0x1

    .line 3002
    :goto_3a2
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->ENABLE_KILL_LONG_RUNNING_PROCESS:Z

    if-eqz v1, :cond_4cb

    .line 3005
    invoke-virtual {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_3b2

    const/4 v6, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v6, 0x0

    :goto_3b3
    if-nez v11, :cond_40e

    if-eqz v6, :cond_4cb

    .line 3009
    iget-wide v4, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v22, 0x0

    cmp-long v6, v4, v22

    if-nez v6, :cond_3c6

    .line 3010
    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v1, v12

    iput-wide v1, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    goto/16 :goto_4cb

    :cond_3c6
    cmp-long v4, v12, v4

    if-ltz v4, :cond_4cb

    .line 3011
    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v1, v4

    cmp-long v1, v12, v1

    if-ltz v1, :cond_4cb

    const-wide/16 v1, 0x0

    .line 3012
    iput-wide v1, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    .line 3013
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v20

    const/16 v24, 0xc8

    const/16 v25, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KLRP uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move/from16 v22, v8

    move/from16 v23, v10

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/am/MARsHandler;->sendKillPackageProcsMsgToMainHandler(Ljava/lang/String;IIIZLjava/lang/String;)V

    const-string v1, "KLRP"

    .line 3014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4cb

    :cond_40e
    const/16 v1, 0x8

    if-eq v11, v1, :cond_4cb

    .line 3017
    iget-wide v1, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4cb

    .line 3018
    iget-wide v1, v0, Lcom/android/server/am/MARsPolicyManager;->KEEP_NO_FILTER_MIN_DURATION:J

    add-long/2addr v1, v12

    iput-wide v1, v15, Lcom/android/server/am/MARsPackageInfo;->nextKillTimeForLongRunningProcess:J

    goto/16 :goto_4cb

    :cond_421
    move-object/from16 v21, v6

    move-object/from16 v16, v8

    move v8, v5

    .line 3021
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_47c

    .line 3022
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xf

    move-object/from16 v3, v21

    invoke-virtual {v1, v2, v3, v10, v8}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_457

    .line 3024
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3025
    invoke-virtual {v0, v15, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_4a1

    .line 3028
    :cond_457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    goto :goto_4c7

    :cond_47c
    move-object/from16 v3, v21

    .line 3031
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v10, v8}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_4a3

    .line 3033
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$PkgStatusInfo-IA;)V

    .line 3034
    invoke-virtual {v0, v15, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    :goto_4a1
    move-object v3, v8

    goto :goto_4cb

    .line 3037
    :cond_4a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    :goto_4c7
    move-object/from16 v3, v30

    const/16 v18, 0x1

    :cond_4cb
    :goto_4cb
    if-eqz v3, :cond_4e4

    .line 3043
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 3044
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e4

    :cond_4d8
    :goto_4d8
    move/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v19, v6

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    goto/16 :goto_223

    :cond_4e4
    :goto_4e4
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v8, v16

    move/from16 v6, v19

    move-object/from16 v3, v28

    move-object/from16 v11, v29

    const/4 v15, 0x1

    goto/16 :goto_b1

    :cond_4f1
    move/from16 v19, v6

    move-object/from16 v16, v8

    move-object/from16 v29, v11

    const/16 v30, 0x0

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    const/4 v10, 0x0

    goto/16 :goto_93

    :cond_502
    move-object/from16 v16, v8

    move-object/from16 v29, v11

    .line 3049
    monitor-exit v14
    :try_end_507
    .catchall {:try_start_93 .. :try_end_507} :catchall_7e4

    if-eqz v1, :cond_528

    .line 3050
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_528

    .line 3051
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_513
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_528

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 3053
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    goto :goto_513

    .line 3056
    :cond_528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v1

    if-eqz v1, :cond_533

    const/4 v1, 0x0

    .line 3057
    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    goto :goto_534

    :cond_533
    const/4 v1, 0x0

    :goto_534
    move v3, v1

    move v4, v3

    move-object/from16 v11, v29

    .line 3060
    :goto_538
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6c2

    .line 3061
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3063
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v6

    if-nez v6, :cond_578

    .line 3064
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_578

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v6

    if-eqz v6, :cond_578

    const-string v6, "MARsPolicyManager"

    .line 3065
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has floating or onScreen window, skip to freeze"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v10, 0x3

    goto/16 :goto_6b8

    .line 3070
    :cond_578
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_57b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3071
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_61a

    const/4 v10, 0x2

    if-eq v8, v10, :cond_5f0

    const/4 v10, 0x3

    if-eq v8, v10, :cond_5ce

    const/4 v12, 0x4

    if-eq v8, v12, :cond_58f

    goto :goto_5e9

    .line 3074
    :cond_58f
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_5bd

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5bd

    .line 3075
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    const-string/jumbo v14, "triggerAction"

    invoke-virtual {v8, v12, v13, v14}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3077
    :cond_5bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v8

    if-eqz v8, :cond_5c9

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_5e9

    .line 3078
    :cond_5c9
    monitor-exit v6
    :try_end_5ca
    .catchall {:try_start_57b .. :try_end_5ca} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5de

    .line 3081
    :cond_5ce
    :try_start_5ce
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v8

    if-eqz v8, :cond_5ec

    .line 3082
    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_5e1

    .line 3083
    monitor-exit v6
    :try_end_5db
    .catchall {:try_start_5ce .. :try_end_5db} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_5de
    const/4 v8, 0x1

    goto/16 :goto_6b8

    .line 3085
    :cond_5e1
    :try_start_5e1
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    :cond_5e9
    :goto_5e9
    const/4 v8, 0x1

    goto/16 :goto_68c

    .line 3088
    :cond_5ec
    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    goto :goto_5e9

    :cond_5f0
    const/4 v10, 0x3

    .line 3092
    iget-boolean v8, v0, Lcom/android/server/am/MARsPolicyManager;->ENABLE_RESTRICTED_BUCKET:Z

    if-eqz v8, :cond_618

    .line 3093
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    const/4 v12, 0x2

    if-ne v8, v12, :cond_618

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v8

    if-nez v8, :cond_618

    const/4 v8, 0x1

    .line 3094
    invoke-static {v5, v8}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 3095
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v12

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v14

    const/16 v15, 0x2d

    invoke-virtual {v12, v13, v14, v15, v8}, Lcom/android/server/am/MARsHandler;->sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V

    goto :goto_61c

    :cond_618
    const/4 v8, 0x1

    goto :goto_61c

    :cond_61a
    move v8, v10

    const/4 v10, 0x3

    .line 3100
    :goto_61c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_628

    move v13, v1

    goto :goto_629

    :cond_628
    move v13, v8

    :goto_629
    invoke-virtual {v12, v13}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v21

    .line 3101
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_639

    move v13, v1

    goto :goto_63a

    :cond_639
    move v13, v8

    :goto_63a
    invoke-virtual {v12, v13}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v22

    .line 3103
    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v12

    if-eqz v12, :cond_669

    const-string v12, "MARsPolicyManager"

    .line 3104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has pending broadcast, skip to freeze"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    monitor-exit v6
    :try_end_665
    .catchall {:try_start_5e1 .. :try_end_665} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6b8

    .line 3108
    :cond_669
    :try_start_669
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v12

    if-eqz v12, :cond_684

    .line 3109
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v17

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v18

    const-string v19, "LEV"

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/FreecessController;->freezePackage(ILjava/lang/String;IZZ)Z

    move-result v12

    goto :goto_685

    :cond_684
    move v12, v1

    :goto_685
    if-nez v12, :cond_68c

    .line 3114
    monitor-exit v6
    :try_end_688
    .catchall {:try_start_669 .. :try_end_688} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6b8

    .line 3117
    :cond_68c
    :goto_68c
    :try_start_68c
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetpossibleLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-static {v5, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 3118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v12

    aget-object v13, v16, v12

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuid(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v12

    .line 3120
    monitor-exit v6
    :try_end_6b4
    .catchall {:try_start_68c .. :try_end_6b4} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v3, v8

    :goto_6b8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_538

    :catchall_6bc
    move-exception v0

    :try_start_6bd
    monitor-exit v6
    :try_end_6be
    .catchall {:try_start_6bd .. :try_end_6be} :catchall_6bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3123
    :cond_6c2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3126
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    move v10, v1

    .line 3127
    :goto_6cb
    :try_start_6cb
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_7b9

    .line 3128
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3129
    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetname(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetuserId(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v12

    invoke-virtual {v0, v6, v8, v12}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    if-eqz v6, :cond_7b3

    .line 3132
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 3133
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_74d

    .line 3134
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3135
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3136
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3137
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3138
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3139
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3140
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 3141
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v1

    .line 3142
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3145
    :cond_74d
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    const/4 v12, 0x2

    if-le v1, v12, :cond_7b5

    .line 3146
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3148
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v1, v13, v14}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_77c

    .line 3149
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v1, v13, v14, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3151
    :cond_77c
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_7b5

    const-string v1, "MARsPolicyManager"

    .line 3152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add mMARsRestrictedPackages "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " level : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " policy --"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b5

    :cond_7b3
    const/4 v8, 0x4

    const/4 v12, 0x2

    :cond_7b5
    :goto_7b5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6cb

    .line 3156
    :cond_7b9
    monitor-exit v5
    :try_end_7ba
    .catchall {:try_start_6cb .. :try_end_7ba} :catchall_7e1

    .line 3158
    array-length v1, v11

    if-lez v1, :cond_7c4

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/am/FreecessController;->destroySocketsForTargetUids([I)V

    .line 3160
    :cond_7c4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7d1

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_7d1
    if-nez v3, :cond_7d5

    if-eqz v2, :cond_7e0

    :cond_7d5
    const-string v1, "LEV"

    move-object/from16 v2, v16

    .line 3163
    invoke-virtual {v0, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e0
    return-void

    :catchall_7e1
    move-exception v0

    .line 3156
    :try_start_7e2
    monitor-exit v5
    :try_end_7e3
    .catchall {:try_start_7e2 .. :try_end_7e3} :catchall_7e1

    throw v0

    :catchall_7e4
    move-exception v0

    .line 3049
    :try_start_7e5
    monitor-exit v14
    :try_end_7e6
    .catchall {:try_start_7e5 .. :try_end_7e6} :catchall_7e4

    throw v0
.end method

.method public updateBackupServicePkg(IZ)V
    .registers 10

    .line 847
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p2, :cond_1b

    .line 849
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 851
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_60

    if-eqz p2, :cond_41

    .line 853
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 854
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string v1, "BackupService"

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    :cond_41
    const-string v0, "DEV"

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupService uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_60
    move-exception p0

    .line 852
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final updateDisableCandidateInfo(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    .line 5259
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 5261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5262
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5263
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    .line 5264
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5265
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_12

    .line 5267
    :cond_31
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 5268
    :try_start_34
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v5, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 5269
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_a3

    .line 5270
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v3

    const/4 v6, 0x7

    .line 5271
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    .line 5270
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_a3

    .line 5272
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 5273
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5274
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5275
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5276
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5277
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5278
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5279
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5283
    :cond_a3
    monitor-exit v4

    goto/16 :goto_12

    :catchall_a6
    move-exception p0

    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_34 .. :try_end_a8} :catchall_a6

    throw p0

    .line 5286
    :cond_a9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b6

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_b6
    return-object v1
.end method

.method public final updateDoNotDisableInfo(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 5230
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5231
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v2

    .line 5232
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5233
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_e

    .line 5235
    :cond_2d
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 5236
    :try_start_30
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v5, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_98

    const/16 v3, 0x8

    .line 5238
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 5239
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, 0x4

    goto :goto_46

    :cond_45
    const/4 v3, 0x1

    :goto_46
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 5241
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5242
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5243
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5244
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5245
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 5246
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 5247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5248
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5250
    :cond_98
    monitor-exit v4

    goto/16 :goto_e

    :catchall_9b
    move-exception p0

    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_30 .. :try_end_9d} :catchall_9b

    throw p0

    .line 5252
    :cond_9e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_ab

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_ab
    return-object v1
.end method

.method public updateFasState(Ljava/lang/String;II)V
    .registers 5

    .line 2092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_c

    .line 2093
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2096
    :cond_c
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz p0, :cond_2e

    const/16 v0, 0x46

    .line 2097
    invoke-interface {p0, v0, p2, p1, p3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_2e

    :catch_16
    move-exception p0

    .line 2100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateFasState exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public updateForegroundPackageToPkgStatus(Ljava/lang/String;IIZ)V
    .registers 5

    .line 820
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    monitor-enter p1

    if-eqz p4, :cond_17

    .line 822
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 824
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceStartTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :goto_20
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final updateFromMARsMainThread()V
    .registers 24

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "[FRZ]"

    const-string v3, "[FAS]"

    const-string v4, "[FOS]"

    const-string v5, "[DIS]"

    .line 1739
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "[FRZ]"

    const-string v4, "[FAS]"

    const-string v5, "[FOS]"

    const-string v6, "[DIS]"

    .line 1740
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v0, "MARsPolicyManager"

    const-string v1, "Now manual mode is on, we will not update anything!"

    .line 1743
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1747
    :cond_2c
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_38

    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateFromMARsThread"

    .line 1748
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1751
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1755
    :goto_47
    :try_start_47
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v11}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v8, v11, :cond_438

    .line 1756
    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v11}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    const/4 v13, 0x0

    .line 1757
    :goto_60
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_431

    .line 1758
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/MARsPackageInfo;

    .line 1760
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v15

    if-nez v15, :cond_77

    goto :goto_8e

    .line 1764
    :cond_77
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v15

    const/16 v7, 0x100

    if-ne v15, v7, :cond_80

    goto :goto_8e

    .line 1768
    :cond_80
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    const/4 v15, 0x2

    const/4 v12, 0x4

    if-ne v7, v12, :cond_96

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v7

    if-ne v7, v15, :cond_96

    :goto_8e
    move/from16 v21, v8

    move-object/from16 v22, v11

    move v11, v13

    :cond_93
    :goto_93
    const/4 v12, 0x0

    goto/16 :goto_429

    .line 1772
    :cond_96
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getIsSCPMTarget()Z

    move-result v7

    const/16 v15, 0x8

    const/16 v16, 0x0

    if-eqz v7, :cond_149

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    if-eq v7, v12, :cond_149

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v7

    if-eq v7, v15, :cond_149

    const/16 v7, 0x2000

    .line 1773
    invoke-virtual {v0, v7, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_149

    if-nez v10, :cond_b7

    const/4 v10, 0x1

    .line 1775
    :cond_b7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v1, v12

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v12

    .line 1776
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1777
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1778
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v15

    if-eqz v15, :cond_f5

    const-string v15, "1"

    goto :goto_f7

    :cond_f5
    move-object/from16 v15, v16

    :goto_f7
    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1779
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v15

    if-eqz v15, :cond_104

    const-string v15, "1"

    goto :goto_106

    :cond_104
    move-object/from16 v15, v16

    :goto_106
    invoke-virtual {v7, v15}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1780
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v15

    const/4 v12, 0x1

    if-ne v15, v12, :cond_11a

    .line 1781
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_11c

    :cond_11a
    move-object/from16 v12, v16

    .line 1780
    :goto_11c
    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    const/16 v12, 0x10

    .line 1782
    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1783
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1784
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1785
    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    .line 1786
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_149
    move-object v7, v11

    .line 1791
    iget-wide v11, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v17, 0x0

    cmp-long v11, v11, v17

    const-wide/32 v19, 0x5265c00

    if-eqz v11, :cond_288

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v11

    const/16 v15, 0x8

    if-ne v11, v15, :cond_288

    move v11, v13

    iget-wide v12, v0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long v12, v3, v12

    .line 1792
    iget-boolean v15, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v15, :cond_16d

    move-object/from16 v22, v7

    move/from16 v21, v8

    iget-wide v7, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_173

    :cond_16d
    move-object/from16 v22, v7

    move/from16 v21, v8

    move-wide/from16 v7, v19

    :goto_173
    cmp-long v7, v12, v7

    if-lez v7, :cond_28d

    .line 1793
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v7

    .line 1794
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v12

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v13

    const/4 v15, 0x7

    .line 1793
    invoke-virtual {v7, v15, v8, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1b6

    .line 1795
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x4

    aget-object v13, v2, v12

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v2, v8

    goto/16 :goto_93

    :cond_1b6
    const/16 v7, 0x8

    .line 1798
    invoke-virtual {v0, v7, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_268

    if-nez v10, :cond_1c1

    const/4 v10, 0x1

    .line 1800
    :cond_1c1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x4

    aget-object v12, v1, v8

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v1, v8

    .line 1801
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1802
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1803
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_201

    const-string v8, "1"

    goto :goto_203

    :cond_201
    move-object/from16 v8, v16

    :goto_203
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1804
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_210

    const-string v8, "1"

    goto :goto_212

    :cond_210
    move-object/from16 v8, v16

    :goto_212
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1805
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_225

    .line 1806
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v16

    :cond_225
    move-object/from16 v8, v16

    .line 1805
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    const/4 v8, 0x1

    .line 1807
    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1808
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1809
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1810
    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    .line 1811
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    iget-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    if-nez v7, :cond_93

    const/4 v7, 0x1

    .line 1814
    iput-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1815
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v7

    const-string v8, "deepsleepdismiss"

    const-string v12, ""

    const/4 v13, 0x0

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_93

    .line 1818
    :cond_268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x4

    aget-object v12, v2, v8

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v2, v8

    goto/16 :goto_93

    :cond_288
    move-object/from16 v22, v7

    move/from16 v21, v8

    move v11, v13

    .line 1824
    :cond_28d
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_296

    goto/16 :goto_93

    .line 1828
    :cond_296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_2ac

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v7

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v7

    if-eqz v7, :cond_2ac

    goto/16 :goto_93

    .line 1832
    :cond_2ac
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v7

    cmp-long v12, v7, v17

    if-lez v12, :cond_2be

    sub-long v7, v3, v7

    .line 1834
    iget-wide v12, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v7, v7, v12

    if-lez v7, :cond_2be

    const/4 v7, 0x1

    goto :goto_2bf

    :cond_2be
    const/4 v7, 0x0

    :goto_2bf
    if-eqz v7, :cond_93

    .line 1836
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v7

    iget-wide v12, v0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    cmpl-double v7, v7, v12

    if-lez v7, :cond_2cd

    const/4 v7, 0x1

    goto :goto_2ce

    :cond_2cd
    const/4 v7, 0x0

    :goto_2ce
    if-eqz v7, :cond_93

    .line 1837
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_93

    .line 1838
    iget-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    if-eqz v7, :cond_40c

    iget-wide v7, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    sub-long v7, v3, v7

    iget-boolean v12, v0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v12, :cond_2e7

    iget-wide v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    move-wide/from16 v19, v12

    :cond_2e7
    cmp-long v7, v7, v19

    if-ltz v7, :cond_40c

    .line 1839
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v7

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v12

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v13

    const/4 v15, 0x7

    invoke-virtual {v7, v15, v8, v12, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v7

    .line 1840
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v8

    if-nez v8, :cond_3e2

    if-eqz v7, :cond_30e

    goto/16 :goto_3e2

    :cond_30e
    const/4 v8, 0x2

    .line 1847
    invoke-virtual {v0, v8, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_3c2

    if-nez v10, :cond_318

    const/4 v10, 0x1

    .line 1849
    :cond_318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v1, v8

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    .line 1850
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1851
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1852
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_357

    const-string v8, "1"

    goto :goto_359

    :cond_357
    move-object/from16 v8, v16

    :goto_359
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1853
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_366

    const-string v8, "1"

    goto :goto_368

    :cond_366
    move-object/from16 v8, v16

    :goto_368
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1854
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_37b

    .line 1855
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v16

    :cond_37b
    move-object/from16 v8, v16

    .line 1854
    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1856
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1857
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1858
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 1859
    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    .line 1860
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    iget-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    if-nez v7, :cond_93

    const/4 v7, 0x1

    .line 1863
    iput-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    .line 1864
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v7

    const-string/jumbo v8, "sleepdismiss"

    const-string v12, ""

    const/4 v13, 0x0

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_93

    .line 1867
    :cond_3c2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-object v12, v2, v8

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    goto/16 :goto_93

    :cond_3e2
    :goto_3e2
    if-eqz v7, :cond_93

    .line 1842
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    aget-object v13, v2, v12

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    goto/16 :goto_93

    :cond_40c
    const/4 v7, 0x1

    .line 1870
    invoke-virtual {v0, v7, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 1871
    iget-boolean v7, v0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    if-nez v7, :cond_93

    if-nez v9, :cond_93

    .line 1876
    iput-wide v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    .line 1877
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v7

    const-string/jumbo v8, "sleep"

    const-string v9, ""

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v9, v12}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v9, 0x1

    :goto_429
    add-int/lit8 v13, v11, 0x1

    move/from16 v8, v21

    move-object/from16 v11, v22

    goto/16 :goto_60

    :cond_431
    move/from16 v21, v8

    const/4 v12, 0x0

    add-int/lit8 v8, v21, 0x1

    goto/16 :goto_47

    .line 1885
    :cond_438
    monitor-exit v6
    :try_end_439
    .catchall {:try_start_47 .. :try_end_439} :catchall_457

    if-eqz v9, :cond_43e

    const/4 v3, 0x1

    .line 1887
    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    :cond_43e
    if-eqz v10, :cond_449

    const-string v3, "LVU"

    .line 1890
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    :cond_449
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_456

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_456
    return-void

    :catchall_457
    move-exception v0

    .line 1885
    :try_start_458
    monitor-exit v6
    :try_end_459
    .catchall {:try_start_458 .. :try_end_459} :catchall_457

    throw v0
.end method

.method public final updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V
    .registers 3

    .line 4014
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4015
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4016
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4017
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4018
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4019
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 4020
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 4021
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setIsInRestrictedBucket(Z)V

    .line 4022
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fgetdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    return-void
.end method

.method public final updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .registers 3

    .line 4002
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputfasType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4003
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputstate(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4004
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisDisabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4005
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableType(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4006
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputcurrentLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4007
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputmaxLevel(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    .line 4008
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisFASEnabled(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4009
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getIsInRestrictedBucket()Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputisInRestrictedBucket(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)V

    .line 4010
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->-$$Nest$fputdisableReason(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)V

    return-void
.end method

.method public updateMARsTargetPackages(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 1202
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v1

    .line 1204
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3e

    if-eqz p1, :cond_26

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    .line 1207
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->deletePkgInfoInMARs(Ljava/util/ArrayList;)V

    .line 1208
    iget-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 1209
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mInitDisabledPackage:Z

    .line 1210
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    :cond_26
    const-string p0, "MARsPolicyManager"

    .line 1213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateMARsTargetPackages mMARsTargetPackages.size-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3e
    move-exception p0

    .line 1204
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public updateResetTime()V
    .registers 10

    .line 1433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1436
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_7b

    .line 1437
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 1438
    :goto_23
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_78

    .line 1439
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    if-eqz v5, :cond_75

    .line 1441
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1442
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1443
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1444
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1445
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1446
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 1448
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1452
    :cond_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_8a

    .line 1453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_89

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    :cond_89
    return-void

    :catchall_8a
    move-exception p0

    .line 1452
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    .line 4832
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    if-eqz p1, :cond_b0

    if-nez p2, :cond_f

    goto/16 :goto_b0

    .line 4836
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    .line 4837
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v2

    .line 4838
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "default"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_59

    if-eq v0, v7, :cond_46

    if-eq v0, v6, :cond_38

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    goto :goto_6b

    :cond_2a
    if-ne v2, v7, :cond_33

    const-string v0, "deleted_from_user_manual"

    .line 4866
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    .line 4868
    :cond_33
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_38
    if-ne v2, v7, :cond_3f

    .line 4860
    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDisableCandidateInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_3f
    if-ne v2, v6, :cond_6b

    .line 4862
    invoke-virtual {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDoNotDisableInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_46
    if-ne v2, v7, :cond_4d

    .line 4843
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->sleepPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_4d
    if-ne v2, v6, :cond_54

    .line 4845
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    .line 4847
    :cond_54
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_59
    if-ne v2, v7, :cond_60

    .line 4851
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->disablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    :cond_60
    if-ne v2, v6, :cond_67

    .line 4853
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_6b

    .line 4855
    :cond_67
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :cond_6b
    :goto_6b
    if-eqz v4, :cond_b0

    .line 4872
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 4873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->appRestrictionInfoToString(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " f: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SEP"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_b0

    move v1, v7

    :cond_b0
    :goto_b0
    return v1
.end method

.method public updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2150
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 2151
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 2153
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2154
    :try_start_12
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2156
    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_35

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p2, v3, :cond_28

    .line 2158
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    :cond_28
    const/4 v3, 0x6

    if-ne p2, v3, :cond_2e

    .line 2161
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    :cond_2e
    const/16 v3, 0xa

    if-ne p2, v3, :cond_35

    .line 2164
    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 2168
    :cond_35
    monitor-exit v2

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3d
    return-void
.end method
