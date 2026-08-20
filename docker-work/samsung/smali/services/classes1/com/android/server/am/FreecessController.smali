.class public Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessController$FreecessControllerHolder;
    }
.end annotation


# static fields
.field public static final ANGRY_BIRD:I = 0x1

.field public static final CALM_MODE_REASON_APP_RESTART:Ljava/lang/String; = "CalmMode for restart"

.field public static final CALM_MODE_REASON_FIRST_TRIGGER:Ljava/lang/String; = "CalmMode First trigger"

.field public static final DEFAULT_FREEZE_TYPE:I = 0x0

.field public static DEFAULT_RECV_BUFSIZE:I = 0x0

.field public static final DEV_PATH_FREEZE:Ljava/lang/String; = "/dev/freezer/frozen/cgroup.procs"

.field public static final DEV_PATH_UNFREEZE:Ljava/lang/String; = "/dev/freezer/thaw/cgroup.procs"

.field public static final ENABLE_TYPE_BUGREPORT:I = 0x1

.field public static final ENABLE_TYPE_SMARTSWITCH:I = 0x2

.field public static final FREECESS_PACK_VERSION:I = 0x10000000

.field public static final FREECESS_PEER_VERSION:I = 0x1

.field public static final FREECESS_SIGNAL_FREEZE:I = 0x1

.field public static final FREECESS_SIGNAL_UNFREEZE:I = 0x2

.field public static final FREECESS_STATE_DEFAULT:I = 0x1

.field public static final FREECESS_STATE_FREEZEABLE:I = 0x2

.field public static final FREECESS_STATE_FROZEN:I = 0x3

.field public static final FURY_BIRD:I = 0x4

.field public static IS_MINIMIZE_OLAF_LOCK:Z = false

.field public static IS_MINOR_PROJECT:Z = false

.field public static IS_PILOT_PROJECT:Z = false

.field public static IS_READ_ACCT_FILE_ERROR_PREVENTION:Z = false

.field public static IS_SUPPORT_CALM_MODE:Z = false

.field public static final LCD_OFF_FREEZE_TYPE:I = 0x2

.field public static final LCD_ON_FREEZE_TYPE:I = 0x3

.field public static final MAD_BIRD:I = 0x8

.field public static NETLINK_KFREECESS:I = 0x0

.field public static final OLAF_FREEZE_TYPE:I = 0x1

.field public static final PROTECTED_PACKAGES_LIMIT_OLAF:I = 0x2

.field public static final RAGE_BIRD:I = 0x2

.field public static final REASON_NOT_FROZEN_ALREADY_DIED:I = 0x1

.field public static final REASON_NOT_FROZEN_EXECUTING_SERVICE:I = 0x2

.field public static final REASON_NOT_FROZEN_FOREGROUND_ADJ:I = 0x6

.field public static final REASON_NOT_FROZEN_LAUNCHING_PROVIDER:I = 0x4

.field public static final REASON_NOT_FROZEN_NONE:I = 0x0

.field public static final REASON_NOT_FROZEN_RUNNING_INTENT:I = 0x3

.field public static final REASON_NOT_FROZEN_RUNNING_LOGCAT:I = 0x7

.field public static final REASON_NOT_FROZEN_START_PROCESS:I = 0x5

.field public static TAG:Ljava/lang/String; = "FreecessController"

.field public static final mCountry:Ljava/lang/String;

.field public static final mCscFeatureValue:I

.field public static final mPath:Ljava/lang/String; = "/data/system/ssrm_local_freecess"

.field public static mPlatform:Ljava/lang/String;

.field public static productModel:Ljava/lang/String;

.field public static sProcessFreezerEnabled:Z


# instance fields
.field public final FREECESS_DEFAULT_CONFIG_TRUE:I

.field public FREECESS_ENHANCEMENT:Z

.field public FREECESS_LRS_ENABLED:Z

.field public final FREECESS_PACKET_ADD_UID_CMD:I

.field public final FREECESS_PACKET_CLR_UID_CMD:I

.field public final FREECESS_PACKET_DEL_UID_CMD:I

.field public final INVALID_USERID:I

.field public final MOD_BINDER:I

.field public final MOD_CFB:I

.field public final MOD_PKG:I

.field public final MOD_SIG:I

.field public final MSG_LOOPBACK:I

.field public final MSG_TO_KERN:I

.field public calmModeFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cntFailFreeze:I

.field public cntFailUnfreeze:I

.field public cntFailUnfreezePilot:I

.field public filterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastUpdateTimeProcessAllowList:J

.field public mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mBroadcastRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mCalmModeDefaultAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCalmModeEnabled:Z

.field public mCarModeOn:Z

.field public mConfigFreecess:I

.field public mContext:Landroid/content/Context;

.field public mConvertConfigFreecess:I

.field public mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public mEmergencyModeOn:Z

.field public mEnableOLAFwithoutBGFreeze:Z

.field public mFGServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Lcom/android/server/am/FreecessPkgStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mFreezeExcludeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Lcom/android/server/am/FreecessPkgStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mFrozenPidList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGPSAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsDumpstateWorking:Z

.field public mIsFreecessEnable:Z

.field public mIsFreecessSkipTimeEnabled:Z

.field public mIsKernelSupportFreecess:Z

.field public mIsOLAFEnabled:Z

.field public mIsScreenOnFreecessEnabled:Z

.field public mIsSmartSwitchWorking:Z

.field public mJobScheduler:Landroid/app/job/IJobScheduler;

.field public mKilledTimeInterval:J

.field public mLatestUsedPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocationManager:Landroid/location/ILocationManager;

.field public mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mMapFrozenUidPidList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mMismatchFlag:Z

.field public mMonitorFreezedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNMs:Landroid/os/INetworkManagementService;

.field public final mOLAFAllowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOLAFAllowListForDebug:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOLAFBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOLAFOn:Z

.field public mOlafTargetPkg:Ljava/lang/String;

.field public mOlafTargetUserId:I

.field public mPendingBlocklistForGPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingIntentsIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPidUnfreezeEnabled:Z

.field public mProcessAllowListContains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessAllowListEndsWith:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessAllowListEquals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessAllowListStartsWith:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessObserver:Landroid/app/IProcessObserver;

.field public mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field public mRestrictionFlagFromDC:I

.field public mRunningJobList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenOn:Z

.field public mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

.field public final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipTriggerLcdOnFreeze:Z

.field public final mSsrmAllowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTopUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUidIdleCheck:Z

.field public mUidIdleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public olafUfzList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreecessManagedPackages(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenPidList(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsScreenOnFreecessEnabled(Lcom/android/server/am/FreecessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/am/FreecessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSkipTriggerLcdOnFreeze(Lcom/android/server/am/FreecessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidIdleCheck(Lcom/android/server/am/FreecessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageStatus(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "sys.config.mars_pilot_project"

    const/4 v1, 0x1

    .line 163
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    const-string/jumbo v0, "sys.config.mars_min_olaf_lock"

    .line 164
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const/4 v0, 0x0

    .line 170
    sput-object v0, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string/jumbo v2, "ro.product.model"

    .line 172
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    if-eqz v2, :cond_5f

    const-string v3, "SM-G98"

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "SM-G99"

    if-nez v2, :cond_3f

    sget-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    sget-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v4, "SM-N98"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 175
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINOR_PROJECT:Z

    .line 176
    :cond_3f
    sget-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v4, "SM-A32"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 177
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    .line 178
    :cond_4b
    sget-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    sget-object v2, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    const-string v3, "SM-S91"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 179
    :cond_5d
    sput-boolean v1, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 200
    :cond_5f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "CscFeature_Framework_ConfigPoliyForFreezeBackgroundApp"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    const/4 v1, 0x0

    .line 219
    sput-boolean v1, Lcom/android/server/am/FreecessController;->sProcessFreezerEnabled:Z

    .line 3820
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    const/16 v1, 0x1b

    .line 4108
    sput v1, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    .line 4109
    sput-object v0, Lcom/android/server/am/FreecessController;->mPlatform:Ljava/lang/String;

    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    .line 4111
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->mPlatform:Ljava/lang/String;

    if-eqz v0, :cond_95

    const-string/jumbo v1, "mt"

    .line 4112
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/16 v0, 0x1f

    .line 4113
    sput v0, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    :cond_95
    const/16 v0, 0x9c

    .line 4196
    sput v0, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 23

    move-object/from16 v0, p0

    .line 330
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 123
    iput v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_ADD_UID_CMD:I

    const/4 v2, 0x1

    .line 124
    iput v2, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_DEL_UID_CMD:I

    const/4 v3, 0x2

    .line 125
    iput v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_CLR_UID_CMD:I

    .line 127
    iput v2, v0, Lcom/android/server/am/FreecessController;->MSG_LOOPBACK:I

    .line 128
    iput v3, v0, Lcom/android/server/am/FreecessController;->MSG_TO_KERN:I

    .line 130
    iput v2, v0, Lcom/android/server/am/FreecessController;->MOD_BINDER:I

    .line 131
    iput v3, v0, Lcom/android/server/am/FreecessController;->MOD_SIG:I

    const/4 v3, 0x3

    .line 132
    iput v3, v0, Lcom/android/server/am/FreecessController;->MOD_PKG:I

    const/4 v3, 0x4

    .line 133
    iput v3, v0, Lcom/android/server/am/FreecessController;->MOD_CFB:I

    .line 145
    iput v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_DEFAULT_CONFIG_TRUE:I

    const-wide/32 v3, 0x493e0

    .line 147
    iput-wide v3, v0, Lcom/android/server/am/FreecessController;->mKilledTimeInterval:J

    .line 149
    new-instance v3, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v3}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 151
    new-instance v3, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v3}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    .line 155
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    .line 157
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 186
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 187
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 188
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 189
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    const-string/jumbo v3, "sys.config.mars_freecess_lrs"

    .line 192
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 194
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 202
    sget v3, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    if-nez v3, :cond_72

    move v3, v2

    goto :goto_73

    :cond_72
    move v3, v1

    :goto_73
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    .line 203
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    const-string v3, "-1"

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    .line 207
    iput v1, v0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    .line 208
    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessController;->convertProductFeature(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/am/FreecessController;->mConvertConfigFreecess:I

    .line 209
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 210
    iput-boolean v2, v0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 211
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 212
    iput-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 213
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 214
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 215
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 216
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 218
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 226
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    const-wide/16 v2, 0x0

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    const-string v3, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5jbG9ja3BhY2thZ2U="

    .line 238
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLmloLmFwcC5idHNkbHN2Yw=="

    .line 239
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLnNkcy5teXNpbmdsZXNxdWFyZQ=="

    .line 240
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLnNkcy5zc28uYWdlbnQ="

    .line 241
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5vbmVjb25uZWN0"

    .line 242
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAubmV0d29ya3N0b3JhZ2VtYW5hZ2Vy"

    .line 243
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5teWZpbGVz"

    .line 244
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lNb3Zlcg=="

    .line 245
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 246
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94"

    .line 247
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "##Y29tLnNhbXN1bmcuc3lzdGVtdWkubm90aWx1cw=="

    .line 248
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAuY2xvY2tmYWNl"

    .line 249
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "##Y29tLnNhbXN1bmcuYW5kcm9pZC50dnBsdXM="

    .line 250
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zb3VuZGFzc2lzdGFudA=="

    .line 251
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAuc3BhZ2U="

    .line 252
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5keW5hbWljbG9jaw=="

    .line 253
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "##Y29tLmFuZHJvaWQuY2hyb21l"

    .line 254
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zZXJ2aWNlLnRhZ3NlcnZpY2U="

    .line 255
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "##Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMuZ29vZ2xldm9pY2U="

    .line 256
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "##Y29tLmRyb3Bib3guYW5kcm9pZA=="

    .line 257
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "##Y29tLnNkcy5tbXMudWk="

    .line 258
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zaWRlZ2VzdHVyZXBhZA=="

    .line 259
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLmFuZHJvaWQuc2Ftc3VuZy5pY2Vib3g="

    .line 260
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLnRlc2xhbW90b3JzLnRlc2xh"

    .line 261
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 262
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLm5obi5hbmRyb2lkLmNhbGVuZGFy"

    .line 263
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLnNhbXN1bmcuYW5kcm9pZC52aXNpb25pbnRlbGxpZ2VuY2U="

    .line 264
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLmFuZHJvaWQuYW5ncnlHcHM="

    .line 265
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zcGF5"

    .line 266
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLmhkd2FsbHBhcGVyLndhbGxwYXBlcg=="

    .line 267
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5jYWxlbmRhcg=="

    .line 268
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5tdWx0aWFkdnNjYW5maWx0ZXI="

    .line 269
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE"

    .line 270
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLnNhbXN1bmcuYW5kcm9pZC53b25kZXJsYW5kLndhbGxwYXBlcg"

    .line 271
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "##Y29tLmdvb2dsZS5hbmRyb2lkLndlYXJhYmxlLmFwcA"

    .line 272
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowList:Ljava/util/ArrayList;

    const-string v10, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    .line 276
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAuY29ja3RhaWxiYXJzZXJ2aWNl"

    .line 278
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNlYy5hbmRyb2lkLmVhc3lvbmVoYW5k"

    .line 280
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hdXRoZnc="

    .line 282
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zYW1zdW5ncGFzcw=="

    .line 283
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLmdvb2dsZS5hbmRyb2lkLnByb3ZpZGVycy5tZWRpYS5tb2R1bGU="

    .line 285
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5zZXJ2aWNlLmFpcmNvbW1hbmQ="

    .line 287
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5hcHAuc21hcnRjYXB0dXJl"

    .line 288
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5jYXJsaW5r"

    .line 289
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    const-string v4, "##Y29tLmZseWVyc29mdC5tb29ucmVhZGVycA=="

    .line 295
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLnVyYmFuZHJvaWQuZG9udGtpbGxteWFwcA=="

    .line 296
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLmFsdS5wcm9zZXJ2LmlwZHNw"

    .line 297
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    const-string/jumbo v4, "screenOn"

    const-string/jumbo v5, "screenOn-widget"

    const-string v6, "AppLockerKill"

    const-string v7, "CancelPolicy"

    const-string v8, "RegException"

    const-string v9, "activity"

    const-string v10, "backup"

    const-string v11, "AutoRunKill"

    const-string v12, "UidActive"

    const-string v13, "charging"

    const-string v14, "FGActivity"

    const-string v15, "DeviceIdleOFF"

    const-string v16, "SmartSwitch"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/ArrayList;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "FGActivity"

    const-string v5, "Binder(0)"

    const-string v6, "Signal"

    const-string v7, "activity"

    const-string v8, "broadcast"

    const-string v9, "bindService"

    const-string/jumbo v10, "startService"

    const-string/jumbo v11, "provider"

    const-string v12, "MediaKeyEvent"

    const-string v13, "DisableFC"

    const-string v14, "FBException"

    const-string v15, "charging"

    const-string v16, "Watchdog"

    const-string v17, "Watchdog_HALF"

    const-string v18, "CancelPolicy"

    const-string v19, "PkgRemoved"

    const-string v20, "BugReport"

    const-string v21, "SmartSwitch"

    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "CancelPolicy"

    const-string v5, "activity"

    const-string v6, "Binder(0)"

    const-string v7, "Binder(1)-"

    const-string v8, "Cfb"

    const-string v9, "FGActivity"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/ArrayList;

    const/16 v2, -0xa

    .line 323
    iput v2, v0, Lcom/android/server/am/FreecessController;->INVALID_USERID:I

    .line 324
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v2, -0xa

    .line 326
    iput v2, v0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 2675
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/List;

    const-string v4, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5nYW1lLmdvcw=="

    .line 2679
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "##Y29tLnNhbXN1bmcuYW5kcm9pZC5nYW1lLmdhbWV0b29scw=="

    .line 2680
    invoke-static {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2681
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLnRlbmNlbnQubW0="

    .line 2682
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLnRlbmNlbnQubW9iaWxlcXE="

    .line 2683
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "##Y29tLnNlYy5hbmRyb2lkLmFwcC5zaGVhbHRo"

    .line 2684
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 2686
    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 3121
    new-instance v2, Lcom/android/server/am/FreecessController$1;

    invoke-direct {v2, v0}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 3159
    new-instance v2, Lcom/android/server/am/FreecessController$2;

    invoke-direct {v2, v0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    .line 3898
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    .line 3899
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    .line 4118
    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4119
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/FreecessController-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/FreecessController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/FreecessController;
    .registers 1

    .line 337
    invoke-static {}, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addUidToReleaseRestrictionList(I)V
    .registers 5

    .line 3534
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3535
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3536
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3537
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_39

    .line 3538
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_38

    .line 3539
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to release restriction list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    :catchall_39
    move-exception p0

    .line 3537
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public cacheBroadcastRecord(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)V
    .registers 10

    .line 3902
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3903
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 3904
    :cond_9
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2b

    .line 3905
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheBroadcastRecord....action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", broadcastRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3f

    .line 3908
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3909
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    :cond_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_44
    if-ge v3, v2, :cond_5f

    .line 3915
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 3916
    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_5c

    iget-boolean v4, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-ne v4, v5, :cond_5c

    .line 3917
    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_5f
    :goto_5f
    if-lt v3, v2, :cond_64

    .line 3922
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3924
    :cond_64
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public cacheReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 3929
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3930
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 3931
    :cond_9
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2b

    .line 3932
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheReceiver....action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3f

    .line 3935
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3936
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    :cond_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_44
    if-ge v3, v2, :cond_57

    .line 3942
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3943
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3944
    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_57
    :goto_57
    if-lt v3, v2, :cond_5c

    .line 3949
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3951
    :cond_5c
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public cancelCalmMode()V
    .registers 11

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2771
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2772
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 2773
    :goto_10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5e

    .line 2774
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 2775
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v6

    .line 2776
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_40

    if-eqz v6, :cond_39

    goto :goto_40

    .line 2782
    :cond_39
    iget-boolean v6, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v6, :cond_5b

    .line 2783
    iput-boolean v3, v5, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    goto :goto_5b

    :cond_40
    :goto_40
    const-string v6, "CalmMode"

    .line 2777
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 2778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2786
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_70

    .line 2787
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeCalmModeFreezeMsg()V

    .line 2788
    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2789
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V

    return-void

    :catchall_70
    move-exception p0

    .line 2786
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public checkFrozenBinder(I)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1601
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result p1

    if-gez p1, :cond_d

    const-string p1, "FBException"

    .line 1603
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z
    .registers 8

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1480
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_36

    .line 1481
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is important[!isUidIdle]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    monitor-exit v0

    return v2

    .line 1484
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_8f

    .line 1485
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    const/4 v0, 0x0

    .line 1486
    :try_start_3b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1487
    monitor-exit v1

    return v2

    .line 1488
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p0

    if-eqz p0, :cond_4c

    const/16 p0, 0xf

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x4

    .line 1490
    :goto_4d
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_89

    .line 1492
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is important["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit v1

    return v2

    .line 1495
    :cond_89
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_8c
    move-exception p0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_3b .. :try_end_8e} :catchall_8c

    throw p0

    :catchall_8f
    move-exception p0

    .line 1484
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public final cleanPacketMonitoredUids()V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 1634
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_18

    .line 1636
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1637
    :try_start_c
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_13

    .line 1638
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1640
    :cond_13
    monitor-exit v0

    goto :goto_1f

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p0

    .line 1642
    :cond_18
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "cleanPacketMonitoredUids Exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public clearTargetPkgForOLAF()V
    .registers 3

    .line 2313
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2314
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    const/16 v0, -0xa

    .line 2315
    iput v0, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    return-void
.end method

.method public final closeSocketNetLink(Ljava/io/FileDescriptor;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 4171
    :try_start_2
    invoke-static {p1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 4173
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public closeSocketsForFreecessFirewallChain()V
    .registers 6

    .line 1527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1529
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    const-string/jumbo v2, "network_management"

    .line 1530
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1533
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_41

    const/4 v2, 0x7

    :try_start_1a
    const-string v3, "fw_oem_deny_1"

    .line 1535
    invoke-interface {p0, v2, v3}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_25
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 1539
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    :catchall_23
    move-exception p0

    goto :goto_3d

    :catch_25
    move-exception p0

    .line 1537
    :try_start_26
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while closeSocketsForFreecessFirewallChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_23

    goto :goto_1f

    .line 1539
    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1540
    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public configPacketMonitoredUid(ILjava/lang/String;I)V
    .registers 7

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1608
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_28

    .line 1610
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1611
    :try_start_c
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p2, :cond_23

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 1612
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    :cond_23
    monitor-exit v0

    goto :goto_2d

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    const-string p1, "RegException"

    .line 1616
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public final convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5

    .line 2569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    if-eqz p1, :cond_26

    .line 2570
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_26

    const-string v1, "[OLAF] "

    .line 2571
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    if-eqz p2, :cond_45

    .line 2574
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_45

    const-string p1, "[IMP] "

    .line 2575
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    :cond_45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertProductFeature(I)I
    .registers 3

    if-gtz p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-eq p1, p0, :cond_12

    if-eq p1, v0, :cond_10

    const/16 p0, 0xf

    return p0

    :cond_10
    const/4 p0, 0x7

    return p0

    :cond_12
    return v0

    :cond_13
    return p0
.end method

.method public convertUnfreezeTypeToReason(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const-string p0, "default"

    goto :goto_e

    :cond_9
    const-string p0, "SmartSwitch"

    goto :goto_e

    :cond_c
    const-string p0, "BugReport"

    :goto_e
    return-object p0
.end method

.method public final covertLcdOnFreezedState(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const-string p0, "Unknown"

    goto :goto_14

    :cond_c
    const-string p0, "Frozen"

    goto :goto_14

    :cond_f
    const-string p0, "Freezeable"

    goto :goto_14

    :cond_12
    const-string p0, "Initial"

    :goto_14
    return-object p0
.end method

.method public deInit()V
    .registers 3

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 378
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    .line 380
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 381
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 384
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->deInit()V

    .line 385
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->deInit()V

    return-void
.end method

.method public deletePacketMonitoredUid(I)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1621
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v0

    if-lez v0, :cond_28

    .line 1623
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1624
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1625
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1627
    :cond_23
    monitor-exit v0

    goto :goto_2f

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p0

    .line 1629
    :cond_28
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string p1, "deletePacketMonitoredUid Exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public deleteRemovedPackage(Ljava/lang/String;I)V
    .registers 6

    .line 857
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 858
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 859
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    const-string v2, "PkgRemoved"

    .line 860
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 862
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 863
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public destroySocketsForTargetUids([I)V
    .registers 2

    return-void
.end method

.method public dispatchPendingBroadcast(Lcom/android/server/am/BroadcastRecord;Ljava/util/ArrayList;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4059
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz v1, :cond_10b

    .line 4061
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->broadcastQueueForIntent(Landroid/content/Intent;)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 4064
    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v3, :cond_92

    .line 4065
    new-instance v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v18, v15

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v19, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/16 v24, 0x1

    move-object/from16 v21, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v22, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v23, v15

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v25, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v26, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v27, v4

    move-object v4, v3

    move-object/from16 v28, v5

    move-object v5, v0

    move-object/from16 v31, v15

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v25, v22

    move/from16 v26, v23

    move-object/from16 v22, v20

    move-object/from16 v23, v21

    move-object/from16 v20, v18

    move/from16 v21, v19

    move-object/from16 v18, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v28

    move/from16 v17, v27

    move-object/from16 v19, p2

    move/from16 v27, v29

    move/from16 v28, v30

    move-object/from16 v29, v31

    move/from16 v30, v1

    invoke-direct/range {v4 .. v30}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    .line 4069
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_108

    .line 4071
    :cond_92
    new-instance v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v18, v15

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v19, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/16 v24, 0x0

    move-object/from16 v21, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v22, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v23, v15

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v25, v15

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v26, v15

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v27, v4

    move-object v4, v3

    move-object/from16 v28, v5

    move-object v5, v0

    move-object/from16 v31, v15

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v25, v22

    move/from16 v26, v23

    move-object/from16 v22, v20

    move-object/from16 v23, v21

    move-object/from16 v20, v18

    move/from16 v21, v19

    move-object/from16 v18, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v28

    move/from16 v17, v27

    move-object/from16 v19, p2

    move/from16 v27, v29

    move/from16 v28, v30

    move-object/from16 v29, v31

    move/from16 v30, v1

    invoke-direct/range {v4 .. v30}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    .line 4075
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 4077
    :goto_108
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 4080
    :cond_10b
    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_7 .. :try_end_10c} :catchall_110

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_110
    move-exception v0

    :try_start_111
    monitor-exit v2
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 12

    .line 3565
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    .line 3567
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_b
    const-string v1, "FREECESS STATE"

    .line 3568
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "-FreecessEnabled : "

    .line 3569
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "Y"

    goto :goto_20

    :cond_1e
    const-string v1, "N"

    :goto_20
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-KernelSupport : "

    .line 3570
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz v1, :cond_2f

    const-string v1, "Y"

    goto :goto_31

    :cond_2f
    const-string v1, "N"

    :goto_31
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " -FreecessEnhancementEnabled : "

    .line 3571
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "Y"

    goto :goto_44

    :cond_42
    const-string v1, "N"

    :goto_44
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " -CscFeatureValue : "

    .line 3572
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " -ChinaPolicyEnabled : "

    .line 3573
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_6b

    const-string p1, "Y"

    goto :goto_6d

    :cond_6b
    const-string p1, "N"

    :goto_6d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -AngryBirdEnabled : "

    .line 3574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_7e

    const-string p1, "Y"

    goto :goto_80

    :cond_7e
    const-string p1, "N"

    :goto_80
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -RageBirdEnabled : "

    .line 3575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_91

    const-string p1, "Y"

    goto :goto_93

    :cond_91
    const-string p1, "N"

    :goto_93
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -FuryBirdEnabled : "

    .line 3576
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFuryBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_a4

    const-string p1, "Y"

    goto :goto_a6

    :cond_a4
    const-string p1, "N"

    :goto_a6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -MadBirdEnabled : "

    .line 3577
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getMadBirdEnabled()Z

    move-result p1

    if-eqz p1, :cond_b7

    const-string p1, "Y"

    goto :goto_b9

    :cond_b7
    const-string p1, "N"

    :goto_b9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -NewPILOT : "

    .line 3578
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz p1, :cond_c8

    const-string p1, "Y"

    goto :goto_ca

    :cond_c8
    const-string p1, "N"

    :goto_ca
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -Mimimize_OLAF_lock : "

    .line 3579
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    if-eqz p1, :cond_d9

    const-string p1, "Y"

    goto :goto_db

    :cond_d9
    const-string p1, "N"

    :goto_db
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -LRsEnabled : "

    .line 3582
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz p1, :cond_ea

    const-string p1, "Y"

    goto :goto_ec

    :cond_ea
    const-string p1, "N"

    :goto_ec
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " -AUFAllowBucketSize : "

    .line 3583
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p1, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " -cntFail(FZ/UFZ/UFZ_P) : "

    .line 3584
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ""

    .line 3586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    .line 3588
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "mFreecessManagedPackages --- size "

    .line 3590
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3591
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    move p1, v5

    .line 3593
    :goto_142
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_228

    .line 3594
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move v3, v5

    .line 3595
    :goto_15b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_224

    .line 3596
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    const-string v6, "-Uid "

    .line 3597
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%8d"

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3598
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3599
    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v6, :cond_18e

    const-string v6, "S"

    .line 3600
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_193

    :cond_18e
    const-string v6, "-"

    .line 3602
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_193
    const-string v6, ")"

    .line 3603
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Idle"

    .line 3605
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3606
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3607
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_1a5
    .catchall {:try_start_b .. :try_end_1a5} :catchall_33d

    .line 3608
    :try_start_1a5
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b9

    const-string v7, "Y"

    .line 3609
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1be

    :cond_1b9
    const-string v7, "-"

    .line 3611
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3612
    :goto_1be
    monitor-exit v6
    :try_end_1bf
    .catchall {:try_start_1a5 .. :try_end_1bf} :catchall_221

    :try_start_1bf
    const-string v6, ")"

    .line 3613
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Top"

    .line 3615
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "("

    .line 3616
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3617
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_1d1
    .catchall {:try_start_1bf .. :try_end_1d1} :catchall_33d

    .line 3618
    :try_start_1d1
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e5

    const-string v7, "Y"

    .line 3619
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ea

    :cond_1e5
    const-string v7, "-"

    .line 3621
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3622
    :goto_1ea
    monitor-exit v6
    :try_end_1eb
    .catchall {:try_start_1d1 .. :try_end_1eb} :catchall_21e

    :try_start_1eb
    const-string v6, ")"

    .line 3623
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3625
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3627
    iget-boolean v6, v4, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v6, :cond_204

    const-string v4, "--(F)"

    .line 3628
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_215

    .line 3629
    :cond_204
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v6

    iget v4, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v4}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v4

    if-eqz v4, :cond_215

    const-string v4, "--(R)"

    .line 3630
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_215
    :goto_215
    const-string v4, ""

    .line 3632
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21a
    .catchall {:try_start_1eb .. :try_end_21a} :catchall_33d

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15b

    :catchall_21e
    move-exception p0

    .line 3622
    :try_start_21f
    monitor-exit v6
    :try_end_220
    .catchall {:try_start_21f .. :try_end_220} :catchall_21e

    :try_start_220
    throw p0
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_33d

    :catchall_221
    move-exception p0

    .line 3612
    :try_start_222
    monitor-exit v6
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_221

    :try_start_223
    throw p0

    :cond_224
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_142

    :cond_228
    const-string/jumbo p1, "mFreezedPackages --- size "

    .line 3636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3637
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    move p1, v5

    .line 3638
    :goto_238
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_2bb

    .line 3639
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move v3, v5

    .line 3640
    :goto_251
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b7

    .line 3641
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    const-string v6, "-FZT "

    .line 3644
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-UFZT "

    .line 3647
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v4, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-UFZR "

    .line 3650
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%10s"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-UserId "

    .line 3652
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%3d"

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "-Pkg "

    .line 3654
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ""

    .line 3655
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_251

    :cond_2b7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_238

    :cond_2bb
    const-string/jumbo p1, "mMonitorFreezedList --- size "

    .line 3659
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3660
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    move p1, v5

    .line 3661
    :goto_2cb
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2e9

    const-string v1, "%d "

    new-array v3, v2, [Ljava/lang/Object;

    .line 3662
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2cb

    :cond_2e9
    const-string/jumbo p1, "mLatestUsedPackagesList --- size "

    .line 3665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3666
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 3667
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_2fb
    .catchall {:try_start_223 .. :try_end_2fb} :catchall_33d

    move v1, v5

    .line 3668
    :goto_2fc
    :try_start_2fc
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31a

    const-string v3, "%d "

    new-array v4, v2, [Ljava/lang/Object;

    .line 3669
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fc

    .line 3671
    :cond_31a
    monitor-exit p1
    :try_end_31b
    .catchall {:try_start_2fc .. :try_end_31b} :catchall_33a

    :try_start_31b
    const-string p0, ""

    .line 3673
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    monitor-exit v0
    :try_end_321
    .catchall {:try_start_31b .. :try_end_321} :catchall_33d

    .line 3677
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz p0, :cond_339

    .line 3678
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p2, "Freecess"

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_339
    return-void

    :catchall_33a
    move-exception p0

    .line 3671
    :try_start_33b
    monitor-exit p1
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33a

    :try_start_33c
    throw p0

    :catchall_33d
    move-exception p0

    .line 3675
    monitor-exit v0
    :try_end_33f
    .catchall {:try_start_33c .. :try_end_33f} :catchall_33d

    throw p0
.end method

.method public dumpFreecessCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    const-string/jumbo v0, "list"

    const/4 v1, 0x1

    .line 3683
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3684
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_f
    const-string v0, "freecess"

    .line 3686
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_b6

    .line 3687
    array-length v0, p3

    if-ge v0, v3, :cond_41

    .line 3688
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(freecess ) !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    const-string v0, "MARstest -- freecess enabled has turned to false"

    .line 3690
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b6

    :cond_41
    const-string/jumbo v0, "on"

    .line 3692
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "1"

    .line 3693
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3694
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b6

    :cond_5a
    const-string v0, "0"

    .line 3695
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3696
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(freecess off) ! +   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 3698
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v5, "Debug"

    invoke-virtual {v0, v5}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b6

    :cond_90
    const-string/jumbo v0, "off"

    .line 3701
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string v0, "1"

    .line 3702
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3703
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b6

    :cond_a9
    const-string v0, "0"

    .line 3704
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3706
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    :cond_b6
    :goto_b6
    const-string/jumbo v0, "netd"

    .line 3711
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string/jumbo v0, "on"

    .line 3712
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x7

    if-eqz v0, :cond_101

    .line 3714
    :try_start_cd
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 3715
    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 3716
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 3717
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(netd on)uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_f8} :catch_f9

    goto :goto_13c

    .line 3719
    :catch_f9
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v5, "dumpMARsCommand(netd on) parseInt error!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    :cond_101
    const-string/jumbo v0, "off"

    .line 3721
    aget-object v6, p3, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 3723
    :try_start_10c
    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 3724
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 3725
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(netd off)uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catch Ljava/lang/NumberFormatException; {:try_start_10c .. :try_end_134} :catch_135

    goto :goto_13c

    .line 3727
    :catch_135
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v5, "dumpMARsCommand(netd off) parseInt error!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13c
    :goto_13c
    const-string/jumbo v0, "olaf"

    .line 3732
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    const-string/jumbo v0, "on"

    .line 3733
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 3734
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_251

    :cond_156
    const-string/jumbo v0, "off"

    .line 3735
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 3736
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_251

    :cond_165
    const-string v0, "debug"

    .line 3737
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 3738
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 3739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "olaf debugging mode is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_187

    const-string/jumbo v5, "on"

    goto :goto_18a

    :cond_187
    const-string/jumbo v5, "off"

    :goto_18a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " now!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_251

    :cond_19b
    const-string v0, "enter"

    .line 3740
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 3741
    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->enterOLAF(I)V

    goto/16 :goto_251

    :cond_1b0
    const-string v0, "exit"

    .line 3742
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 3743
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto/16 :goto_251

    :cond_1bf
    const-string v0, "allowlist"

    .line 3744
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    const-string v0, "add"

    .line 3745
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_1dc

    .line 3746
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, p3, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    :cond_1dc
    const-string/jumbo v0, "remove"

    .line 3747
    aget-object v6, p3, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 3748
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, p3, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_251

    :cond_1ef
    const-string v0, "clear"

    .line 3749
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 3750
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_251

    :cond_1ff
    const-string/jumbo v0, "list"

    .line 3751
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 3752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "list size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_22b

    :cond_24c
    const-string v0, ""

    .line 3755
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_251
    :goto_251
    const-string v0, "frz"

    .line 3760
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_267

    .line 3761
    aget-object v6, p3, v4

    const/4 v7, 0x0

    const-string v8, "force"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/FreecessController;->freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z

    :cond_267
    const-string/jumbo v0, "ufz"

    .line 3764
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 3765
    aget-object v0, p3, v4

    const-string v5, "force"

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_279
    const-string/jumbo v0, "lrs"

    .line 3769
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    const-string/jumbo v0, "on"

    .line 3770
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_299

    .line 3771
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    const-string/jumbo v0, "lrs set enable"

    .line 3772
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ad

    :cond_299
    const-string/jumbo v0, "off"

    .line 3773
    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 3774
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    const-string/jumbo v0, "lrs set disable"

    .line 3775
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2ad
    :goto_2ad
    const-string/jumbo v0, "pending"

    .line 3779
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 3780
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->dumpPendingBroadcast(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_2bb
    const-string/jumbo p1, "uid_idle"

    .line 3783
    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30b

    .line 3784
    array-length p1, p3

    if-ge p1, v3, :cond_2ee

    .line 3785
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 3786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MARstest -- uid idle check mode has turned to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30b

    :cond_2ee
    const-string/jumbo p1, "on"

    .line 3788
    aget-object p2, p3, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2fd

    .line 3789
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    goto :goto_30b

    :cond_2fd
    const-string/jumbo p1, "off"

    .line 3790
    aget-object p2, p3, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30b

    .line 3791
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    :cond_30b
    :goto_30b
    const-string/jumbo p1, "window"

    .line 3796
    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_363

    .line 3797
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_319
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_31c
    .catchall {:try_start_319 .. :try_end_31c} :catchall_35d

    .line 3800
    :try_start_31c
    aget-object p2, p3, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3801
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p0, :cond_331

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p0, :cond_331

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result p0

    if-eqz p0, :cond_331

    goto :goto_332

    :cond_331
    move v1, v2

    .line 3804
    :goto_332
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dumpMARsCommand(window) "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ishasFloatingWindow:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catch Ljava/lang/NumberFormatException; {:try_start_31c .. :try_end_350} :catch_351
    .catchall {:try_start_31c .. :try_end_350} :catchall_35d

    goto :goto_358

    .line 3806
    :catch_351
    :try_start_351
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string p2, "dumpMARsCommand(window) parseInt error!"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :goto_358
    monitor-exit p1
    :try_end_359
    .catchall {:try_start_351 .. :try_end_359} :catchall_35d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_363

    :catchall_35d
    move-exception p0

    :try_start_35e
    monitor-exit p1
    :try_end_35f
    .catchall {:try_start_35e .. :try_end_35f} :catchall_35d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_363
    :goto_363
    return-void
.end method

.method public final dumpPendingBroadcast(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 10

    .line 4084
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const/4 v0, 0x0

    move v1, v0

    .line 4085
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 4086
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4087
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4088
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_63

    const-string v4, "---- pending broadcast infos ----"

    .line 4090
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v0

    .line 4091
    :goto_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_63

    .line 4092
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 4093
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_60

    .line 4094
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_60

    :cond_45
    move v5, v0

    .line 4096
    :goto_46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5b

    const-string v6, "--"

    .line 4097
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_5b
    const-string v5, ""

    .line 4100
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4104
    :cond_66
    monitor-exit p1

    return-void

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public enterOLAF(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2252
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    return-void
.end method

.method public enterOLAF(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "com.sec.android.app.camera"

    .line 2258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1388

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2260
    :goto_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    return-void
.end method

.method public final enterOLAF(Ljava/lang/String;II)V
    .registers 9

    .line 2264
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 2267
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    if-eqz v0, :cond_17

    goto/16 :goto_8e

    .line 2270
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    const-string v0, "com.google.android.youtube"

    .line 2274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    :cond_25
    const-string v0, "com.jingdong.app.mall"

    .line 2277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    :cond_2e
    if-eqz p3, :cond_5a

    const/16 v0, 0x64

    if-ge p3, v0, :cond_35

    return-void

    :cond_35
    const/16 v0, 0x1388

    if-le p3, v0, :cond_3a

    move p3, v0

    .line 2287
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 2288
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v2

    .line 2289
    :try_start_43
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_4f

    .line 2290
    monitor-exit v2

    return-void

    .line 2291
    :cond_4f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 2292
    monitor-exit v2

    goto :goto_5a

    :catchall_57
    move-exception p0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_57

    throw p0

    .line 2295
    :cond_5a
    :goto_5a
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_84

    .line 2296
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter OLAF! pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    const/4 p3, 0x1

    .line 2299
    iput-boolean p3, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    .line 2301
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public exitOLAF()V
    .registers 6

    .line 2320
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_b

    .line 2321
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Exit OLAF!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 2326
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_15

    return-void

    .line 2329
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v0

    .line 2330
    :try_start_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_28

    .line 2331
    monitor-exit v0

    return-void

    .line 2332
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_3b

    .line 2335
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeOLAFTimeOutMsg()V

    .line 2337
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    return-void

    :catchall_3b
    move-exception p0

    .line 2332
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
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

    .line 3813
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3814
    :cond_16
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3815
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3816
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v1, 0x3

    if-ne v9, v1, :cond_14

    move/from16 v21, v13

    goto :goto_16

    :cond_14
    move/from16 v21, v12

    .line 2063
    :goto_16
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2064
    :try_start_19
    iget-boolean v2, v7, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    if-eqz v2, :cond_4b

    .line 2065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lcom/android/server/am/FreecessController;->mKilledTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_45

    .line 2066
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKilledBy Chimera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    monitor-exit v1

    return v12

    .line 2069
    :cond_45
    iput-boolean v12, v7, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    const-wide/16 v2, 0x0

    .line 2070
    iput-wide v2, v7, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    .line 2074
    :cond_4b
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_61

    .line 2075
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "monitored size exception(64)..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    monitor-exit v1

    return v12

    .line 2078
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_19 .. :try_end_62} :catchall_1b7

    .line 2079
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2080
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It has not been able to freeze yet. name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_97

    .line 2082
    iget v1, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2083
    iput v13, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2086
    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_97

    .line 2087
    invoke-virtual {v0, v1, v13, v8, v7}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    :cond_97
    return v12

    .line 2091
    :cond_98
    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 2094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    .line 2095
    iput-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedReason:Ljava/lang/String;

    .line 2096
    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2097
    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 2098
    iput v9, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2099
    iput-boolean v10, v7, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2100
    iput-boolean v11, v7, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2102
    invoke-virtual {v0, v7, v13}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2104
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d1

    .line 2105
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    :cond_d1
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/16 v3, 0x1a

    iget v4, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz v11, :cond_110

    .line 2110
    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 2111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 2114
    :cond_110
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_182

    .line 2115
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_182

    .line 2117
    :cond_126
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v2

    .line 2119
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UFZ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") because failed to freeze, success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_182
    :goto_182
    if-eqz v1, :cond_1b6

    .line 2123
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v14

    iget-object v15, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v4, -0x1

    if-eqz v10, :cond_194

    move/from16 v18, v13

    goto :goto_196

    :cond_194
    move/from16 v18, v4

    :goto_196
    if-eqz v1, :cond_19b

    move/from16 v19, v13

    goto :goto_19d

    :cond_19b
    move/from16 v19, v4

    :goto_19d
    const/16 v20, 0x1

    const/16 v22, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v14 .. v22}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 2129
    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(I)V

    .line 2130
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(ZI)V

    :cond_1b6
    return v1

    :catchall_1b7
    move-exception v0

    .line 2078
    :try_start_1b8
    monitor-exit v1
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v0
.end method

.method public freezeBgPackageLocked(Ljava/lang/String;I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ActivityManagerService.class"
        }
    .end annotation

    .line 1833
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v0, :cond_125

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_a

    goto/16 :goto_125

    .line 1840
    :cond_a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v5

    .line 1841
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v6

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v8

    goto :goto_3b

    :cond_3a
    move v0, v7

    .line 1849
    :goto_3b
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result v1

    .line 1857
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v2

    .line 1861
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 1862
    :try_start_48
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v10

    if-eqz v10, :cond_120

    .line 1863
    iget-boolean v3, v10, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v3, :cond_58

    goto/16 :goto_120

    .line 1867
    :cond_58
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v10, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4, v11}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1868
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not MARs target, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1870
    monitor-exit v9

    return-void

    :cond_80
    const-string v3, "com.samsung.android.spay"

    .line 1873
    iget-object v4, v10, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1874
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1875
    monitor-exit v9

    return-void

    :cond_8e
    if-eqz v0, :cond_aa

    .line 1879
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has floating or onScreen window, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1881
    monitor-exit v9

    return-void

    :cond_aa
    if-eqz v1, :cond_c6

    .line 1885
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has Touch Event, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1887
    monitor-exit v9

    return-void

    :cond_c6
    if-eqz v2, :cond_e2

    .line 1891
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has pending broadcast, skip to freeze"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1893
    monitor-exit v9

    return-void

    :cond_e2
    const-string v3, "Bg"

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, v10

    .line 1896
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result p0

    if-eqz p0, :cond_f6

    .line 1898
    iput-boolean v8, v10, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 1899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    goto :goto_fa

    .line 1901
    :cond_f6
    iput-boolean v7, v10, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 1902
    iput v8, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1904
    :goto_fa
    monitor-exit v9
    :try_end_fb
    .catchall {:try_start_48 .. :try_end_fb} :catchall_122

    if-eqz p0, :cond_11f

    .line 1907
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string v0, "FRZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    return-void

    .line 1864
    :cond_120
    :goto_120
    :try_start_120
    monitor-exit v9

    return-void

    :catchall_122
    move-exception p0

    .line 1904
    monitor-exit v9
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_122

    throw p0

    :cond_125
    :goto_125
    return-void
.end method

.method public freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 12

    .line 2795
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v0

    .line 2797
    iget-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return v2

    .line 2802
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    .line 2806
    :cond_19
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_29

    return v2

    .line 2810
    :cond_29
    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v1, :cond_36

    goto :goto_86

    .line 2814
    :cond_36
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_49

    return v2

    .line 2820
    :cond_49
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v8

    .line 2821
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v7

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 2822
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_85

    .line 2824
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2826
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FZ"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    return v0

    :cond_86
    :goto_86
    return v2
.end method

.method public final freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 10

    .line 2605
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 2606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    goto :goto_f

    .line 2608
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2612
    :goto_f
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    .line 2616
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedReason:Ljava/lang/String;

    const/4 p0, 0x1

    .line 2617
    iput-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2619
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_62

    .line 2620
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLAF FZ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 2622
    :cond_58
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {p0, p2, v1, p1, v2}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    :cond_62
    :goto_62
    return v0
.end method

.method public final freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    .registers 6

    if-eqz p1, :cond_6b

    .line 2583
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-nez v0, :cond_6b

    invoke-virtual {p1}, Lcom/android/server/am/FreecessPkgStatus;->isFreezeProtected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6b

    :cond_d
    const-string v0, "OLAF"

    .line 2586
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 2588
    iput p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2589
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2594
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    if-ne v0, v1, :cond_56

    .line 2595
    :cond_38
    iput p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2596
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2597
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2598
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    const/4 v0, 0x4

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 2600
    :cond_56
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6b

    .line 2601
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    return-void
.end method

.method public freezePackage(ILjava/lang/String;IZZ)Z
    .registers 16

    .line 1934
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_a

    goto :goto_61

    .line 1942
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result v0

    .line 1946
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1947
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v4

    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz v4, :cond_50

    .line 1948
    iget-boolean v5, v4, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-nez v5, :cond_50

    if-eqz v0, :cond_3b

    .line 1950
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " has Touch Event, skip to freeze"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iput p1, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1952
    monitor-exit v2

    return v1

    .line 1955
    :cond_3b
    iget-object v0, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1956
    iget v9, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 1957
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1958
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1

    :cond_4e
    move-object v3, v0

    goto :goto_51

    :cond_50
    move v9, v1

    .line 1960
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_11 .. :try_end_52} :catchall_5e

    if-eqz v1, :cond_5d

    if-eqz v3, :cond_5d

    .line 1962
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v3, v9, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_5d
    return v1

    :catchall_5e
    move-exception p0

    .line 1960
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0

    :cond_61
    :goto_61
    return v1
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z
    .registers 15

    .line 1914
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_a

    goto :goto_36

    .line 1918
    :cond_a
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1919
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1920
    iget-boolean v2, v3, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-nez v2, :cond_27

    const/4 v2, 0x0

    .line 1921
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object v2, p0

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 1922
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1

    .line 1924
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_33

    if-eqz v1, :cond_32

    .line 1926
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_32
    return v1

    :catchall_33
    move-exception p0

    .line 1924
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    :goto_36
    return v1
.end method

.method public final getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/fs/cgroup/uid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 922
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 925
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 926
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_57

    const/4 v1, 0x0

    .line 928
    :goto_28
    array-length v2, p2

    if-ge v1, v2, :cond_57

    .line 929
    aget-object v2, p2, v1

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cgroup.procs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/am/FreecessController;->readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_57
    return-object v0
.end method

.method public getAngryBirdEnabled()Z
    .registers 2

    .line 469
    iget v0, p0, Lcom/android/server/am/FreecessController;->mConvertConfigFreecess:I

    iget p0, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    and-int/2addr p0, v0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/am/FreecessPkgMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2737
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 2739
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 2741
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string v4, ", "

    .line 2743
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2744
    array-length v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3c

    const/4 v2, 0x0

    .line 2745
    aget-object v2, v1, v2

    .line 2747
    :try_start_2a
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_3c

    .line 2749
    :catch_35
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v4, "CalmMode parseInt error!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_3c
    :goto_3c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_44
    return-object v0
.end method

.method public getCarModeOnState()Z
    .registers 1

    .line 514
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    return p0
.end method

.method public getEmergencyModeOnState()Z
    .registers 1

    .line 522
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    return p0
.end method

.method public getEnableOLAFwithoutBGFreeze()Z
    .registers 1

    .line 465
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    return p0
.end method

.method public getFreecessEnabled()Z
    .registers 1

    .line 461
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    return p0
.end method

.method public getFreecessEnabledConfig()Z
    .registers 4

    .line 395
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    return p0
.end method

.method public getFreecessEnhancementEnabledState()Z
    .registers 1

    .line 530
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    return p0
.end method

.method public getFreecessSkipTimeEnabled()Z
    .registers 1

    .line 506
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    return p0
.end method

.method public getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 4

    .line 868
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v0

    if-eqz v0, :cond_15

    .line 869
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz p0, :cond_16

    return-object p0

    :cond_15
    const/4 p0, 0x0

    :cond_16
    return-object p0
.end method

.method public final getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 4

    .line 777
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 779
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 781
    :goto_17
    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 5

    .line 767
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v1

    if-lez v1, :cond_16

    .line 769
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 771
    :goto_17
    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getFrozenPids()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 941
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 942
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v1

    .line 943
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 944
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 945
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 947
    :cond_2f
    monitor-exit v1

    return-object v0

    .line 949
    :cond_31
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_34
    move-exception p0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public getFuryBirdEnabled()Z
    .registers 2

    .line 477
    iget v0, p0, Lcom/android/server/am/FreecessController;->mConvertConfigFreecess:I

    iget p0, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    and-int/2addr p0, v0

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getIsDoingGC(I)Z
    .registers 3

    .line 724
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 725
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_11

    .line 727
    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz p0, :cond_f

    const/4 p1, 0x1

    :cond_f
    monitor-exit v0

    return p1

    .line 729
    :cond_11
    monitor-exit v0

    return p1

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getIsDumpstateWorking()Z
    .registers 1

    .line 708
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    return p0
.end method

.method public getIsSmartSwitchWorking()Z
    .registers 1

    .line 716
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    return p0
.end method

.method public getLRsEnabled()Z
    .registers 1

    .line 635
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    return p0
.end method

.method public getMadBirdEnabled()Z
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/server/am/FreecessController;->mConvertConfigFreecess:I

    iget p0, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    and-int/2addr p0, v0

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getMonitorPacketFlag(I)Z
    .registers 4

    .line 1822
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-eq p1, v1, :cond_1f

    .line 1823
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public getOLAFEnabled()Z
    .registers 1

    .line 534
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    return p0
.end method

.method public final getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 8

    .line 821
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 822
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 823
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v1, :cond_1f

    .line 824
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, p1, :cond_1f

    .line 825
    monitor-exit v0

    return-object v1

    :cond_1e
    move-object v1, v2

    .line 828
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_83

    if-nez v1, :cond_82

    .line 832
    :try_start_22
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 833
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    const/4 v3, 0x0

    .line 834
    aget-object v0, v0, v3

    if-eqz v0, :cond_3e

    const-string v3, "com.android.cts"

    .line 835
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    return-object v2

    :cond_3e
    const/16 v2, 0x100f

    .line 840
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v3, v0, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 841
    new-instance v3, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v0, p1, v4}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;II)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_56} :catch_6b

    if-eqz v2, :cond_5e

    .line 842
    :try_start_58
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 843
    iput-object v1, v3, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 845
    :cond_5e
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_66} :catch_68

    move-object v1, v3

    goto :goto_82

    :catch_68
    move-exception p0

    move-object v1, v3

    goto :goto_6c

    :catch_6b
    move-exception p0

    .line 849
    :goto_6c
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageStatus() failed to create ps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-object v1

    :catchall_83
    move-exception p0

    .line 828
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public final getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    const-string v1, "com.android.cts"

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 789
    :cond_c
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 790
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v2

    if-lez v2, :cond_23

    .line 791
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_23

    .line 793
    monitor-exit v1

    return-object v0

    .line 796
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_69

    if-nez v0, :cond_68

    const/16 v1, 0x100f

    .line 804
    :try_start_28
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    int-to-long v3, v1

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 805
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_68

    .line 806
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 807
    new-instance v3, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v3, p1, v2, p2}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;II)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_51

    .line 808
    :try_start_3e
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz p2, :cond_44

    iput-object p2, v3, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 809
    :cond_44
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p2, v2, p1, v3}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4c} :catch_4e

    move-object v0, v3

    goto :goto_68

    :catch_4e
    move-exception p0

    move-object v0, v3

    goto :goto_52

    :catch_51
    move-exception p0

    .line 813
    :goto_52
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageStatus() failed to create ps "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return-object v0

    :catchall_69
    move-exception p0

    .line 796
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public getPidProcessName(I)Ljava/lang/String;
    .registers 7

    .line 747
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/comm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 749
    :try_start_17
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_32
    .catchall {:try_start_17 .. :try_end_21} :catchall_30

    .line 750
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_2e
    .catchall {:try_start_21 .. :try_end_25} :catchall_60

    .line 756
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_5f

    :catch_29
    move-exception p1

    .line 758
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    :catch_2e
    move-exception p1

    goto :goto_36

    :catchall_30
    move-exception p0

    goto :goto_62

    :catch_32
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 752
    :goto_36
    :try_start_36
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_60

    if-eqz v0, :cond_5d

    .line 756
    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 758
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5d
    :goto_5d
    const-string p0, ""

    :goto_5f
    return-object p0

    :catchall_60
    move-exception p0

    move-object p1, v0

    :goto_62
    if-eqz p1, :cond_6c

    .line 756
    :try_start_64
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p1

    .line 758
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 761
    :cond_6c
    :goto_6c
    throw p0
.end method

.method public getRageBirdEnabled()Z
    .registers 2

    .line 473
    iget v0, p0, Lcom/android/server/am/FreecessController;->mConvertConfigFreecess:I

    iget p0, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    and-int/2addr p0, v0

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getRestrictNetworkFlag(I)Z
    .registers 2

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_1c

    .line 1828
    :cond_12
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public getScreenOnFreecessEnabled()Z
    .registers 1

    .line 3044
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return p0
.end method

.method public getScreenOnState()Z
    .registers 1

    .line 3070
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return p0
.end method

.method public getUidIdleCheckMode()Z
    .registers 1

    .line 3060
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    return p0
.end method

.method public handleLcdOnResetState(Ljava/lang/String;I)V
    .registers 7

    .line 3374
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3375
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_b

    .line 3376
    monitor-exit v0

    return-void

    .line 3378
    :cond_b
    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1e

    .line 3379
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3380
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_44

    :cond_1e
    if-ne p2, v2, :cond_3b

    .line 3382
    iget-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p2, :cond_2e

    .line 3384
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v2, "UidActive"

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_30

    .line 3386
    :cond_2e
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3388
    :goto_30
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 p2, 0x4

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_44

    .line 3390
    :cond_3b
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3392
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public handleResetAllPreAction()V
    .registers 5

    .line 3423
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start thread for preaction unfreezing!!! cntFail(FZ/UFZ/UFZ_P) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3425
    new-instance v2, Lcom/android/server/am/FreecessController$3;

    const-string v3, "MARsWatchdogUnfreezer"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/FreecessController$3;-><init>(Lcom/android/server/am/FreecessController;Ljava/lang/String;J)V

    .line 3443
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public handleResetAllState(Ljava/lang/String;)V
    .registers 7

    .line 3410
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SoftReset"

    .line 3412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3413
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 3414
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    .line 3415
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3417
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unfreezeAllPackages(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->resetFreecessStateForLcdOnFreeze()V

    .line 3419
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUnfreezeActivePackages(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "screenOn-widget"

    .line 3447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3448
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeWidgetPackages(Ljava/lang/String;)V

    goto :goto_10

    .line 3450
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeActivePackages(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public handleUnfreezeRequestFocusPackage()V
    .registers 4

    .line 3456
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3457
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_13

    .line 3458
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRequestFocusPkg()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 3460
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3462
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3463
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string/jumbo v2, "has Focus"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_30
    return-void

    :catchall_31
    move-exception p0

    .line 3460
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 341
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 342
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 345
    sget p2, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_13

    const/4 v2, 0x2

    if-eq p2, v2, :cond_13

    iget-boolean p2, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    .line 347
    :cond_13
    :goto_13
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 348
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 349
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 350
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 351
    iget p0, p0, Lcom/android/server/am/FreecessController;->mConfigFreecess:I

    const/4 p2, 0x4

    if-ne p0, p2, :cond_2a

    if-eqz v0, :cond_2a

    .line 352
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;)V

    :cond_2a
    return-void
.end method

.method public initSendRecvMsgNetLink()Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4125
    :try_start_3
    sget v3, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    invoke-static {v3}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4126
    invoke-static {v3}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 4127
    invoke-static {}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->getFreecessNetlinkMessageSize()I

    move-result v3

    sput v3, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    move v3, v2

    :goto_15
    const/4 v4, 0x4

    if-gt v3, v4, :cond_cb

    .line 4130
    invoke-static {v2, v3, v1, v1, v1}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object v6

    .line 4131
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    array-length v8, v6

    const-wide/16 v9, 0x1f4

    invoke-static/range {v5 .. v10}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v4

    if-gez v4, :cond_38

    .line 4133
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->closeSocketNetLink(Ljava/io/FileDescriptor;)V

    .line 4134
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    .line 4136
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initSendRecvMsgNetLink sendMessage error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4139
    :cond_38
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    sget v5, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    const-wide/16 v6, 0x1f4

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 4140
    invoke-static {v4}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    move-result-object v4

    if-eqz v4, :cond_c7

    .line 4142
    iget v5, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    const/high16 v6, 0x10000000

    if-eq v5, v6, :cond_50

    .line 4143
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    .line 4145
    :cond_50
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v5, :cond_c7

    .line 4146
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initSendRecvNetlink type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mod:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " src_portid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dst_portid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target_uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c7} :catch_cd

    :cond_c7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_cb
    move v1, v2

    goto :goto_d8

    :catch_cd
    move-exception v2

    .line 4160
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4161
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->closeSocketNetLink(Ljava/io/FileDescriptor;)V

    .line 4162
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    :goto_d8
    return v1
.end method

.method public isCalmModeOnoff()Z
    .registers 1

    .line 2909
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    return p0
.end method

.method public isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 2870
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 2873
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    .line 2876
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    return v0

    .line 2879
    :cond_25
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_32

    return v0

    :cond_32
    const/4 p0, 0x2

    .line 2883
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v4, 0x13

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(Ljava/lang/String;III)I

    move-result p1

    if-ne p0, p1, :cond_46

    return v0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public isFreezedByLcdOffPolicy(Ljava/lang/String;I)Z
    .registers 4

    .line 1746
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1747
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1748
    iget-boolean p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-nez p1, :cond_18

    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-nez p0, :cond_18

    const/4 p0, 0x1

    .line 1749
    monitor-exit v0

    return p0

    :cond_18
    const/4 p0, 0x0

    .line 1751
    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 1752
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z
    .registers 4

    .line 1756
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1757
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1758
    iget-boolean p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-nez p1, :cond_15

    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz p0, :cond_18

    :cond_15
    const/4 p0, 0x1

    .line 1759
    monitor-exit v0

    return p0

    :cond_18
    const/4 p0, 0x0

    .line 1761
    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 1762
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public isFreezedPackage(I)Z
    .registers 3

    .line 1736
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1737
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1738
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    .line 1739
    monitor-exit v0

    return p0

    :cond_10
    const/4 p0, 0x0

    .line 1741
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 1742
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isFreezedPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 1726
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1727
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1728
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    .line 1729
    monitor-exit v0

    return p0

    :cond_10
    const/4 p0, 0x0

    .line 1731
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 1732
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isFrozenByCalmMode(I)Z
    .registers 4

    .line 2896
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2899
    :cond_6
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2900
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2902
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    monitor-exit v0

    return p0

    .line 2904
    :cond_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_3f

    .line 1449
    iget-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    const/4 p2, 0x1

    if-eqz p0, :cond_8

    return p2

    .line 1452
    :cond_8
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_3e

    iget-object p0, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz p0, :cond_15

    goto :goto_3e

    .line 1455
    :cond_15
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz p0, :cond_32

    .line 1456
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is doing GC, skip to freeze it."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 1460
    :cond_32
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object p0

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTAllowList(I)Z

    move-result p0

    if-eqz p0, :cond_3f

    :cond_3e
    :goto_3e
    return p2

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z
    .registers 4

    .line 1468
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1469
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 v1, 0x0

    .line 1471
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1473
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

.method public isInGPSAllowList(I)Z
    .registers 2

    .line 1423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1424
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isInRunningJobList(Ljava/lang/String;)Z
    .registers 2

    .line 1431
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isInSpecialTargetForGPS(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isPacketMonitoredApp(I)Z
    .registers 3

    .line 1648
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1649
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    .line 1650
    monitor-exit v0

    return p0

    .line 1651
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

.method public isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 553
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/FreecessController;->getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 556
    :cond_8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    .line 557
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result p2

    .line 558
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v0, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz v2, :cond_2e

    if-eqz v2, :cond_47

    .line 560
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-nez v0, :cond_2e

    if-eqz p2, :cond_47

    .line 561
    :cond_2e
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-eqz p2, :cond_3a

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    return v0

    .line 565
    :cond_3a
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz p0, :cond_47

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    if-eqz p3, :cond_47

    return v0

    :cond_47
    return v1
.end method

.method public isProcessAllowList(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8c

    .line 3956
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_8c

    .line 3958
    :cond_9
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastCheckTimeExceptFreeze:J

    iget-wide v4, p0, Lcom/android/server/am/FreecessController;->lastUpdateTimeProcessAllowList:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_89

    .line 3959
    iput-wide v4, p1, Lcom/android/server/am/ProcessRecord;->lastCheckTimeExceptFreeze:J

    .line 3961
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1b
    if-ltz v2, :cond_2f

    .line 3962
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3963
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v3

    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 3967
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_36
    if-ltz v2, :cond_4c

    .line 3968
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3969
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v3

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 3973
    :cond_4c
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_53
    if-ltz v2, :cond_69

    .line 3974
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 3975
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v3

    :cond_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    .line 3979
    :cond_69
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_70
    if-ltz v2, :cond_86

    .line 3980
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 3981
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v3

    :cond_83
    add-int/lit8 v2, v2, -0x1

    goto :goto_70

    .line 3985
    :cond_86
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v0

    .line 3987
    :cond_89
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return p0

    :cond_8c
    :goto_8c
    return v0
.end method

.method public final isReceivingTouchEvent(I)Z
    .registers 2

    .line 1815
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz p0, :cond_9

    .line 1816
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->isUidTouched(I)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    .registers 11

    .line 4225
    iget v0, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    goto :goto_44

    .line 4247
    :cond_10
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportCFBUid(I)V

    goto :goto_44

    .line 4243
    :cond_16
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->reportPacketUid(I)V

    goto :goto_44

    .line 4239
    :cond_1c
    iget p1, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessController;->reportSignalUid(II)V

    goto :goto_44

    .line 4229
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "mismatch"

    move-object v6, v0

    move v8, v2

    goto :goto_39

    .line 4233
    :cond_2c
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v8, v1

    :goto_39
    const/4 v3, 0x0

    .line 4235
    iget v4, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iget v5, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    iget v7, p1, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/FreecessController;->reportBinderUid(IIILjava/lang/String;II)V

    :goto_44
    return-void
.end method

.method public killPkgForCalmMode(ILjava/lang/String;)Z
    .registers 5

    .line 2846
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2852
    :cond_6
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2853
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2855
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v1

    .line 2857
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2b

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    .line 2859
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 2860
    iget-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v1, "CalmMode"

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/am/FreecessController;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    :cond_29
    const/4 p0, 0x1

    return p0

    :catchall_2b
    move-exception p0

    .line 2857
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 2891
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "CalmMode"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    .line 2892
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public lcdOnFreezePackage(Ljava/lang/String;I)V
    .registers 4

    .line 3468
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_18

    .line 3469
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->freezeBgPackageLocked(Ljava/lang/String;I)V

    .line 3471
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_18

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_18
    :goto_18
    return-void
.end method

.method public lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 8

    .line 3350
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3351
    :try_start_3
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p3

    if-nez p3, :cond_b

    .line 3352
    monitor-exit v0

    return-void

    .line 3354
    :cond_b
    iget p4, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_19

    const/4 p5, 0x3

    if-eq p1, p5, :cond_14

    goto :goto_20

    :cond_14
    if-ne p4, v1, :cond_20

    .line 3365
    iput p5, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_20

    :cond_19
    const/4 p1, 0x1

    if-ne p4, p1, :cond_20

    if-nez p5, :cond_20

    .line 3359
    iput v1, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3369
    :cond_20
    :goto_20
    iget p1, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 3370
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public matchFreezeState(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 6

    .line 1773
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1774
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    .line 1775
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/FreecessController;->matchFreezeStateLocked(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1776
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public matchFreezeState(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 7

    .line 1766
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1767
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    .line 1768
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/FreecessController;->matchFreezeStateLocked(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1769
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final matchFreezeStateLocked(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    if-eqz p2, :cond_f

    .line 1782
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eq p2, v0, :cond_f

    return p0

    :cond_f
    if-eqz p3, :cond_1a

    .line 1784
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean p3, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-eq p2, p3, :cond_1a

    return p0

    :cond_1a
    if-eqz p4, :cond_25

    .line 1786
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean p1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eq p2, p1, :cond_25

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public onFreezeStateChanged(ZI)V
    .registers 7

    .line 3511
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    if-nez v0, :cond_e

    .line 3512
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 3513
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->onFreezeStateChanged(ZI)V

    .line 3516
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getLRsEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3518
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_2a

    const-string/jumbo v0, "location"

    .line 3519
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 3521
    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_59

    .line 3522
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_32

    goto :goto_59

    :catch_32
    move-exception v0

    .line 3525
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while setLRs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    if-eqz p1, :cond_5e

    .line 3530
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(I)V

    :cond_5e
    return-void
.end method

.method public onUnfreeze(Ljava/lang/String;IIZZ)V
    .registers 16

    .line 1792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1796
    :try_start_4
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-virtual {v3, v4, p3}, Lcom/android/server/am/FreecessHandler;->sendUpdateBTMsg(II)V

    if-eqz p5, :cond_13

    const/4 v3, 0x1

    .line 1799
    invoke-virtual {p0, p3, v3}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_2b

    .line 1802
    :cond_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    if-eqz p4, :cond_1e

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1e
    const/4 v2, -0x1

    :goto_1f
    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    return-void

    :catchall_2b
    move-exception v0

    .line 1802
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    throw v0
.end method

.method public postMonitoringFrozenProcs()V
    .registers 10

    .line 1153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1156
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 1157
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1160
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    if-nez v5, :cond_2d

    .line 1161
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1165
    :cond_2d
    iget-wide v5, v4, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x9c4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_38

    goto :goto_f

    :cond_38
    add-int/lit8 v3, v3, 0x1

    .line 1169
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->getReasonProcShouldNotBeFrozen(Lcom/android/server/am/ProcessRecord;)I

    move-result v5

    if-lez v5, :cond_f

    packed-switch v5, :pswitch_data_aa

    .line 1194
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "Post-Monitoring"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1191
    :pswitch_4d
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "RunningLogcat"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1188
    :pswitch_55
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ForegroundAdj"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1185
    :pswitch_5d
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "StartProcess"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1182
    :pswitch_65
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "LaunchingProvider"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1179
    :pswitch_6d
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ReceivingIntent"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1176
    :pswitch_75
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "ExecutingService"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    .line 1173
    :pswitch_7d
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "AlreadyDied"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_f

    :cond_85
    if-lez v3, :cond_8e

    .line 1202
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    .line 1204
    :cond_8e
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_a9

    .line 1205
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postMonitoringFrozenProcs() numProcessNeedToCheck is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
    .end packed-switch
.end method

.method public protectFreezePackage(ILjava/lang/String;J)Z
    .registers 8

    .line 1709
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1710
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_17

    .line 1712
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 1713
    iget-boolean p3, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p3, :cond_17

    .line 1715
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_19

    :cond_17
    move p0, v2

    move v1, p0

    .line 1718
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_27

    .line 1720
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_27
    return v1

    :catchall_28
    move-exception p0

    .line 1718
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z
    .registers 10

    .line 1689
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1690
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    .line 1692
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/FreecessPkgStatus;->updateProtectionTime(J)V

    .line 1693
    iget-boolean p4, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p4, :cond_17

    .line 1695
    invoke-virtual {p0, v1, p3, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_19

    :cond_17
    move p0, v3

    move v2, p0

    .line 1698
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    if-eqz p0, :cond_23

    .line 1700
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_23
    return v2

    :catchall_24
    move-exception p0

    .line 1698
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 2758
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2759
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2761
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 2763
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2766
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 882
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_91
    .catchall {:try_start_1 .. :try_end_b} :catchall_8f

    .line 883
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x1

    if-eqz v0, :cond_2d

    .line 885
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 886
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_28

    move v3, v4

    .line 890
    :cond_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 892
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    if-eqz v0, :cond_7d

    if-nez p3, :cond_7d

    if-nez v3, :cond_7d

    const-string/jumbo p3, "pid_"

    .line 894
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v4

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 895
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    .line 896
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get pid from uid. but bring it in a different way. pid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_7d} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7d} :catch_89
    .catchall {:try_start_b .. :try_end_7d} :catchall_86

    .line 908
    :cond_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_dd

    :catch_81
    move-exception p0

    .line 910
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_dd

    :catchall_86
    move-exception p0

    move-object v0, v1

    goto :goto_de

    :catch_89
    move-exception p0

    move-object v0, v1

    goto :goto_92

    :catch_8c
    move-exception p0

    move-object v0, v1

    goto :goto_bb

    :catchall_8f
    move-exception p0

    goto :goto_de

    :catch_91
    move-exception p0

    .line 904
    :goto_92
    :try_start_92
    sget-object p2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred when reading "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_92 .. :try_end_b4} :catchall_8f

    if-eqz v0, :cond_dd

    .line 908
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_81

    goto :goto_dd

    :catch_ba
    move-exception p0

    .line 902
    :goto_bb
    :try_start_bb
    sget-object p2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t read "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_8f

    if-eqz v0, :cond_dd

    .line 908
    :try_start_da
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_81

    :cond_dd
    :goto_dd
    return-void

    :goto_de
    if-eqz v0, :cond_e8

    :try_start_e0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception p1

    .line 910
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 913
    :cond_e8
    :goto_e8
    throw p0
.end method

.method public readSysfs()V
    .registers 15

    const-string v0, ":"

    const-string v1, "e = "

    const/4 v2, 0x0

    .line 3826
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/system/ssrm_local_freecess"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_165
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13d
    .catchall {:try_start_5 .. :try_end_11} :catchall_13b

    .line 3827
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_113

    .line 3828
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 3829
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3830
    array-length v5, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_11

    .line 3831
    aget-object v5, v2, v4
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_138
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_135
    .catchall {:try_start_11 .. :try_end_28} :catchall_132

    const-string v7, ""

    if-eqz v5, :cond_37

    :try_start_2c
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_38

    :cond_37
    move-object v5, v7

    :goto_38
    const/4 v8, 0x1

    .line 3832
    aget-object v9, v2, v8

    if-eqz v9, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v9, v7

    .line 3833
    :goto_3f
    aget-object v2, v2, v6

    if-eqz v2, :cond_44

    move-object v7, v2

    :cond_44
    const-string v2, "ALL"

    .line 3834
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4a} :catch_138
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_135
    .catchall {:try_start_2c .. :try_end_4a} :catchall_132

    const-string v6, "Enhance_Switch"

    const-string v10, "@"

    const-string v11, "Switch"

    const-string v12, "WL"

    const-string v13, "1"

    if-eqz v2, :cond_ad

    .line 3835
    :try_start_56
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    if-eqz v7, :cond_11

    .line 3837
    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3839
    array-length v5, v2

    :goto_63
    if-ge v4, v5, :cond_11

    aget-object v6, v2, v4

    if-eqz v6, :cond_7a

    .line 3840
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 3841
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 3845
    :cond_7d
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 3846
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 3847
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_90

    move v4, v8

    .line 3848
    :cond_90
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_11

    .line 3849
    :cond_95
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3850
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 3851
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-eqz v2, :cond_a8

    move v4, v8

    .line 3852
    :cond_a8
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V

    goto/16 :goto_11

    .line 3854
    :cond_ad
    sget-object v2, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3855
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    if-eqz v7, :cond_11

    .line 3857
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 3858
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3860
    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3862
    array-length v5, v2

    :goto_c9
    if-ge v4, v5, :cond_11

    aget-object v6, v2, v4

    if-eqz v6, :cond_e0

    .line 3863
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e0

    .line 3864
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 3869
    :cond_e3
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 3870
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 3871
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_f6

    move v4, v8

    .line 3872
    :cond_f6
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_11

    .line 3873
    :cond_fb
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3874
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 3875
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-eqz v2, :cond_10e

    move v4, v8

    .line 3876
    :cond_10e
    invoke-virtual {p0, v4}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_111} :catch_138
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_111} :catch_135
    .catchall {:try_start_56 .. :try_end_111} :catchall_132

    goto/16 :goto_11

    .line 3889
    :cond_113
    :try_start_113
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_118

    goto/16 :goto_18d

    :catch_118
    move-exception p0

    .line 3892
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    :catchall_132
    move-exception p0

    move-object v2, v3

    goto :goto_18e

    :catch_135
    move-exception p0

    move-object v2, v3

    goto :goto_13e

    :catch_138
    move-exception p0

    move-object v2, v3

    goto :goto_166

    :catchall_13b
    move-exception p0

    goto :goto_18e

    :catch_13d
    move-exception p0

    .line 3885
    :goto_13e
    :try_start_13e
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catchall {:try_start_13e .. :try_end_156} :catchall_13b

    if-eqz v2, :cond_18d

    .line 3889
    :try_start_158
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15c

    goto :goto_18d

    :catch_15c
    move-exception p0

    .line 3892
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_120

    :catch_165
    move-exception p0

    .line 3883
    :goto_166
    :try_start_166
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_166 .. :try_end_17e} :catchall_13b

    if-eqz v2, :cond_18d

    .line 3889
    :try_start_180
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_184

    goto :goto_18d

    :catch_184
    move-exception p0

    .line 3892
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_120

    :cond_18d
    :goto_18d
    return-void

    :goto_18e
    if-eqz v2, :cond_1ad

    .line 3889
    :try_start_190
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194

    goto :goto_1ad

    :catch_194
    move-exception v0

    .line 3892
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    :cond_1ad
    :goto_1ad
    throw p0
.end method

.method public recoverFreezerStateIfTHAWED()V
    .registers 7

    .line 411
    new-instance p0, Ljava/io/File;

    const-string v0, "/dev/freezer/frozen/freezer.state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_be

    :cond_15
    const/4 p0, 0x0

    .line 417
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_75
    .catchall {:try_start_16 .. :try_end_20} :catchall_70

    .line 418
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 419
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer.state == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5c

    const-string v3, "THAWED"

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 421
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_4a} :catch_6d
    .catchall {:try_start_20 .. :try_end_4a} :catchall_6a

    :try_start_4a
    const-string p0, "FROZEN"

    const-string v0, "UTF-8"

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 423
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_58} :catch_5a
    .catchall {:try_start_4a .. :try_end_58} :catchall_a8

    move-object p0, v2

    goto :goto_5c

    :catch_5a
    move-exception p0

    goto :goto_79

    .line 430
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    if-eqz p0, :cond_a7

    .line 437
    :try_start_66
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_a3

    goto :goto_a7

    :catchall_6a
    move-exception v0

    move-object v2, p0

    goto :goto_73

    :catch_6d
    move-exception v0

    move-object v2, p0

    goto :goto_78

    :catchall_70
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_73
    move-object p0, v0

    goto :goto_a9

    :catch_75
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    :goto_78
    move-object p0, v0

    .line 426
    :goto_79
    :try_start_79
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t read or write /dev/freezer/frozen/freezer.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_a8

    if-eqz v1, :cond_9d

    .line 430
    :try_start_95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_9d

    :catch_99
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9d
    :goto_9d
    if-eqz v2, :cond_a7

    .line 437
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a7

    :catch_a3
    move-exception p0

    .line 439
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a7
    :goto_a7
    return-void

    :catchall_a8
    move-exception p0

    :goto_a9
    if-eqz v1, :cond_b3

    .line 430
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b3
    :goto_b3
    if-eqz v2, :cond_bd

    .line 437
    :try_start_b5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    :cond_bd
    :goto_bd
    throw p0

    .line 413
    :cond_be
    :goto_be
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recoverFreezerStateIfTHAWED error: file doesn\'t exist or can\'t write"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recvNetLinkAction()V
    .registers 5

    .line 4200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_93

    .line 4201
    sget v1, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    const-wide v2, 0x12a05f200L

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4202
    invoke-static {v0}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 4204
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v1, :cond_8b

    .line 4205
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecvNetlink type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " src_portid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dst_portid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target_uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    :cond_8b
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->kernelFreecessReport(Lcom/android/server/am/mars/netlink/StructFreeCessMsg;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    .line 4220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_93
    :goto_93
    return-void
.end method

.method public registerFreecessTrigger()V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v2, 0xf

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_16

    .line 364
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 366
    :cond_16
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessTrigger;->init(Landroid/content/Context;)V

    const-string/jumbo v0, "input"

    .line 369
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    :cond_35
    return-void
.end method

.method public releaseFreezedAppPid(I)V
    .registers 8

    .line 1210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1211
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1212
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    .line 1214
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_17
    move v2, v3

    .line 1216
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_7c

    .line 1218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1220
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v4, :cond_2d

    .line 1221
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CustomFrequencyManager;

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1223
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz p0, :cond_73

    if-eqz v2, :cond_73

    const-string v2, "freeze"

    .line 1224
    invoke-virtual {p0, p1, v3, v2}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_58

    .line 1226
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UFZ error : pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 1228
    :cond_58
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UFZ : release pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (when app died or watchdog half)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_77

    .line 1231
    :cond_73
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_77
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1232
    throw p0

    :catchall_7c
    move-exception p0

    .line 1216
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public releaseRestriction(I)V
    .registers 5

    .line 3544
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3546
    monitor-exit v0

    return-void

    .line 3547
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3548
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3f

    .line 3549
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_36

    .line 3550
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release restriction for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_36
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessHandler;->sendOnFreezeStateChanged(ZI)V

    return-void

    :catchall_3f
    move-exception p0

    .line 3548
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public removeBgTriggerMsg()V
    .registers 2

    .line 3115
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_c

    .line 3116
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "removeBgTriggerMsg...."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_c
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    return-void
.end method

.method public reportAsyncBinder(IIILjava/lang/String;I)V
    .registers 9

    if-eqz p4, :cond_8c

    const-string v0, "free_buffer_full"

    .line 1660
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    if-eq p3, v0, :cond_16

    :cond_d
    const-string/jumbo v0, "mismatch"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_16
    const-string p1, "Binder(1)-"

    .line 1661
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    .line 1664
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    .line 1666
    :cond_34
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    .line 1669
    :cond_56
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1670
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1671
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1672
    :try_start_69
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1673
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binder(1)-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1674
    monitor-exit v1

    return-void

    .line 1676
    :cond_87
    monitor-exit v1

    goto :goto_8c

    :catchall_89
    move-exception p0

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_69 .. :try_end_8b} :catchall_89

    throw p0

    .line 1679
    :cond_8c
    :goto_8c
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_c5

    .line 1680
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string v0, "ABI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    return-void
.end method

.method public final reportBinderUid(IIILjava/lang/String;II)V
    .registers 13

    const/4 v0, 0x1

    if-ne p5, v0, :cond_d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    .line 4263
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->reportAsyncBinder(IIILjava/lang/String;I)V

    goto :goto_58

    .line 4265
    :cond_d
    sget-boolean p6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz p6, :cond_4c

    .line 4267
    sget-object p6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive binder-module info(callerPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",uid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",code:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",interfaceToken:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",flag:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") from kernel"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const-string p1, "Binder(0)"

    .line 4270
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_55

    return-void

    .line 4273
    :cond_55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    :goto_58
    return-void
.end method

.method public final reportCFBUid(I)V
    .registers 5

    .line 4302
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_1f

    .line 4303
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive cfb-module info(uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from kernel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string v0, "Cfb"

    .line 4305
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-void

    .line 4308
    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void
.end method

.method public final reportPacketUid(I)V
    .registers 5

    .line 4278
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_1f

    .line 4279
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive packet-module info(uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from kernel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isFrozenByCalmMode(I)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    const-string v0, "Packet"

    .line 4284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void
.end method

.method public final reportSignalUid(II)V
    .registers 6

    .line 4254
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_27

    .line 4255
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive signal-module info(callerPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",uid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") from kernel"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-wide/16 v0, 0x3e8

    const-string p1, "Signal"

    .line 4258
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    return-void
.end method

.method public reportSocketResult(Z)V
    .registers 4

    .line 4288
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    if-eqz v0, :cond_b

    .line 4289
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Receive socket exception from kernel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 4292
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 4293
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 4294
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 4295
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    if-eqz p1, :cond_1b

    .line 4297
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->registerFreecessTrigger()V

    :cond_1b
    return-void
.end method

.method public final resetFreecessStateForLcdOnFreeze()V
    .registers 5

    .line 3396
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_27

    .line 3397
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3398
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 3399
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3400
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    .line 3402
    iput v3, v2, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3405
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public sendFreecessMsg2kernel(IIII)I
    .registers 13

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 4185
    :try_start_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object v3

    .line 4187
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_18

    const/4 v4, 0x0

    .line 4188
    array-length v5, v3

    const-wide/16 v6, 0x1f4

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_14

    move v1, p0

    goto :goto_18

    :catch_14
    move-exception p0

    .line 4191
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return v1
.end method

.method public final sendFreecessSignal(II)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p0, 0x0

    goto :goto_15

    :cond_8
    const-string p1, "/dev/freezer/thaw/cgroup.procs"

    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_15

    :cond_f
    const-string p1, "/dev/freezer/frozen/cgroup.procs"

    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;I)Z

    move-result p0

    :goto_15
    return p0
.end method

.method public final sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1283
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result p0

    return p0
.end method

.method public final sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p4, v0, :cond_18

    const/4 v0, 0x2

    if-eq p4, v0, :cond_8

    const/4 p0, 0x0

    goto :goto_23

    :cond_8
    const-string v4, "/dev/freezer/thaw/cgroup.procs"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 1291
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result p1

    .line 1293
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->releaseRestriction(I)V

    move p0, p1

    goto :goto_23

    :cond_18
    const-string v4, "/dev/freezer/frozen/cgroup.procs"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 1296
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result p0

    :goto_23
    return p0
.end method

.method public sendPendingBroadcast(Ljava/lang/String;I)V
    .registers 16

    .line 3993
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3994
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3995
    :try_start_8
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_2b

    .line 3996
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPendingBroadcast to packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v2, 0x0

    move v3, v2

    .line 3998
    :goto_2d
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d4

    .line 3999
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4000
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4001
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v5, :cond_d0

    if-nez v6, :cond_53

    goto/16 :goto_d0

    :cond_53
    move v7, v2

    .line 4005
    :goto_54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c0

    .line 4006
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    .line 4009
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v2

    .line 4010
    :goto_66
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_b0

    .line 4011
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 4012
    instance-of v12, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v12, :cond_86

    .line 4013
    check-cast v11, Lcom/android/server/am/BroadcastFilter;

    .line 4014
    iget-object v12, v11, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ad

    iget v12, v11, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-ne p2, v12, :cond_ad

    .line 4015
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 4017
    :cond_86
    instance-of v12, v11, Landroid/content/pm/ResolveInfo;

    if-eqz v12, :cond_ad

    .line 4018
    check-cast v11, Landroid/content/pm/ResolveInfo;

    if-eqz v8, :cond_ad

    .line 4019
    iget-boolean v12, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v12, :cond_ad

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4020
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ad

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne p2, v12, :cond_ad

    .line 4021
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ad
    :goto_ad
    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    .line 4026
    :cond_b0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_b7

    goto :goto_c0

    .line 4030
    :cond_b7
    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4034
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 4038
    :cond_c0
    :goto_c0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_d0

    .line 4039
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4040
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    :goto_d0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2d

    .line 4043
    :cond_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_8 .. :try_end_d5} :catchall_f9

    .line 4045
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4046
    :goto_dd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f8

    .line 4047
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BroadcastRecord;

    .line 4048
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz p2, :cond_f4

    .line 4050
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/FreecessController;->dispatchPendingBroadcast(Lcom/android/server/am/BroadcastRecord;Ljava/util/ArrayList;)V

    .line 4053
    :cond_f4
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_dd

    :cond_f8
    return-void

    :catchall_f9
    move-exception p0

    .line 4043
    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p0
.end method

.method public setCarModeOnState(Z)V
    .registers 2

    .line 510
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    return-void
.end method

.method public setEmergencyModeOnState(Z)V
    .registers 2

    .line 518
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    return-void
.end method

.method public final setFirewallChainEnabled(IZ)V
    .registers 6

    .line 1563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1564
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    const-string/jumbo v2, "network_management"

    .line 1565
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1568
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_3e

    .line 1570
    :try_start_19
    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_22
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 1574
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_20
    move-exception p0

    goto :goto_3a

    :catch_22
    move-exception p0

    .line 1572
    :try_start_23
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while setFirewallChainEnabled: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_20

    goto :goto_1c

    .line 1574
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setFreeceeEnhanceEnabled(Z)V
    .registers 2

    .line 526
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    return-void
.end method

.method public setFreecessEnableForDump(Z)V
    .registers 3

    .line 655
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_a

    .line 659
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 661
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    return-void
.end method

.method public setFreecessEnableForSmartSwitch(Z)V
    .registers 3

    .line 665
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    :cond_a
    const/4 v0, 0x2

    .line 671
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    return-void
.end method

.method public setFreecessEnableForSpecificReason(ZI)V
    .registers 7

    .line 675
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->convertUnfreezeTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_12

    const-string v3, "ON"

    goto :goto_14

    :cond_12
    const-string v3, "OFF"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 685
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    goto :goto_55

    .line 687
    :cond_33
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 690
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 694
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/android/server/am/FreecessHandler;->removeMessages(I)V

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 699
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public setFreecessEnabled(Z)V
    .registers 2

    .line 452
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 453
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez p1, :cond_b

    const-string p1, "DisableFC"

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setFreecessSkipTimeEnabled(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    return-void
.end method

.method public setFreezeExcludeList(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3091
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3092
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3093
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3094
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3096
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3099
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_64

    .line 3100
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    .line 3101
    :try_start_33
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3102
    :goto_3b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 3103
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v3, :cond_5c

    .line 3105
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3106
    iput-boolean v1, v3, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 3107
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 3111
    :cond_5f
    monitor-exit p1

    return-void

    :catchall_61
    move-exception p0

    monitor-exit p1
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_61

    throw p0

    :catchall_64
    move-exception p0

    .line 3099
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public setIsDoingGC(IZ)V
    .registers 4

    .line 735
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 736
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_18

    if-eqz p2, :cond_12

    .line 738
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    goto :goto_18

    .line 739
    :cond_12
    iget p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 741
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setIsDumpstateWorking(Z)V
    .registers 2

    .line 712
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    return-void
.end method

.method public setIsSmartSwitchWorking(Z)V
    .registers 2

    .line 720
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    return-void
.end method

.method public setLRsEnabled(Z)V
    .registers 2

    .line 631
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    return-void
.end method

.method public setOLAFBlockList(Ljava/lang/String;)V
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 547
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 548
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public setOLAFDebugEnabled(Z)V
    .registers 2

    .line 542
    sput-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    return-void
.end method

.method public setOLAFEnabled(Z)V
    .registers 2

    .line 538
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    return-void
.end method

.method public setPendingBlocklistForGPS(Ljava/lang/String;)V
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 593
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 594
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public setPendingIntentList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 575
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const-string v0, "block"

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 579
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_20
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "blockchn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 582
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    const-string/jumbo v0, "idle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 587
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method public declared-synchronized setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_7a

    if-nez p2, :cond_7

    goto/16 :goto_7a

    :cond_7
    :try_start_7
    const-string v0, "equals"

    .line 601
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 602
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    if-eqz p2, :cond_6f

    .line 603
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_77

    if-eqz p2, :cond_1b

    .line 604
    monitor-exit p0

    return-void

    .line 605
    :cond_1b
    :try_start_1b
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_21
    const-string v0, "contains"

    .line 607
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 608
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    if-eqz p2, :cond_6f

    .line 609
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_77

    if-eqz p2, :cond_35

    .line 610
    monitor-exit p0

    return-void

    .line 611
    :cond_35
    :try_start_35
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_3b
    const-string/jumbo v0, "startsWith"

    .line 613
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 614
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    if-eqz p2, :cond_6f

    .line 615
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_77

    if-eqz p2, :cond_50

    .line 616
    monitor-exit p0

    return-void

    .line 617
    :cond_50
    :try_start_50
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_56
    const-string v0, "endsWith"

    .line 619
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 620
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    if-eqz p2, :cond_6f

    .line 621
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_77

    if-eqz p2, :cond_6a

    .line 622
    monitor-exit p0

    return-void

    .line 623
    :cond_6a
    :try_start_6a
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_6f
    :goto_6f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/FreecessController;->lastUpdateTimeProcessAllowList:J
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_77

    .line 627
    monitor-exit p0

    return-void

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1

    .line 600
    :cond_7a
    :goto_7a
    monitor-exit p0

    return-void
.end method

.method public setRestrictionFlagFromDC(I)V
    .registers 2

    .line 485
    iput p1, p0, Lcom/android/server/am/FreecessController;->mRestrictionFlagFromDC:I

    .line 486
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->registerReceiverForBird()V

    return-void
.end method

.method public setScreenOnFreecessEnabled(Z)V
    .registers 4

    .line 3048
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_a

    .line 3049
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    xor-int/2addr p1, v1

    .line 3050
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 3053
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 3054
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 3055
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    :cond_13
    return-void
.end method

.method public setScreenOnState(Z)V
    .registers 9

    .line 3074
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz p1, :cond_23

    .line 3075
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_23

    .line 3076
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 3077
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_23

    .line 3078
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/16 v5, 0x2710

    const-string v4, "TopApp-ScreenOn"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 3079
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->unfreezeWallPaperPackage()V

    :cond_23
    return-void
.end method

.method public setUidIdleCheckMode(Z)V
    .registers 4

    .line 3064
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 3065
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz p1, :cond_1e

    .line 3066
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public setWakeLockEnableDisable(Ljava/lang/String;IZZ)V
    .registers 7

    .line 3484
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    .line 3485
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 3488
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 3491
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_23

    const-string p3, "disable"

    goto :goto_25

    :cond_23
    const-string p3, "enable"

    :goto_25
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " frozen app ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") wakelock."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_45
    const/4 p3, 0x2

    if-ne v0, p3, :cond_7c

    if-eqz p4, :cond_59

    .line 3494
    iget-boolean p3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz p3, :cond_4f

    return-void

    .line 3498
    :cond_4f
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string p3, "Wakelock"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7c

    .line 3499
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result p3

    if-eqz p3, :cond_7c

    .line 3500
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter p3

    .line 3501
    :try_start_62
    iget-object p4, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_77

    .line 3503
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string p4, "Wakelock"

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3505
    :cond_77
    monitor-exit p3

    goto :goto_7c

    :catchall_79
    move-exception p0

    monitor-exit p3
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_79

    throw p0

    :cond_7c
    :goto_7c
    return-void
.end method

.method public final stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V
    .registers 8

    if-eq p1, p2, :cond_3a

    .line 3329
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 p1, 0x1

    if-eq p2, p1, :cond_5c

    const/4 p0, 0x2

    if-eq p2, p0, :cond_50

    const/4 p0, 0x3

    if-eq p2, p0, :cond_44

    goto :goto_7a

    .line 3344
    :cond_44
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendLcdOnFreezeTriggerMsg(Ljava/lang/String;I)V

    goto :goto_7a

    .line 3341
    :cond_50
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7a

    .line 3332
    :cond_5c
    invoke-virtual {p0, p4}, Lcom/android/server/am/FreecessController;->checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 3335
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    goto :goto_7a

    .line 3337
    :cond_6e
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    :goto_7a
    return-void
.end method

.method public triggerCalmMode(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2689
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2691
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    if-eqz p1, :cond_17

    .line 2694
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 2697
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2698
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2700
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_2a

    .line 2701
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object p1

    .line 2704
    :cond_2a
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2705
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2707
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 2708
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 2709
    :goto_43
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_ac

    .line 2710
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2713
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7a

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 2714
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_a9

    .line 2715
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has window surface, skip to freeze CalmMode"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    :cond_7a
    const-string v9, "CalmMode First trigger"

    .line 2720
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 2721
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v9, :cond_9d

    .line 2722
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 2723
    :cond_9d
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v9, :cond_a9

    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v9

    if-nez v9, :cond_a9

    .line 2724
    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    :cond_a9
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 2727
    :cond_ac
    monitor-exit v4
    :try_end_ad
    .catchall {:try_start_3b .. :try_end_ad} :catchall_e3

    .line 2728
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2730
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    const-string p1, "CalmMode "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_e3
    move-exception p0

    .line 2727
    :try_start_e4
    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw p0
.end method

.method public triggerLcdOnFreeze(ILjava/lang/String;)V
    .registers 7

    .line 3290
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3291
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v2

    .line 3292
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_48

    .line 3293
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->updateBTUsingPackages()V

    .line 3294
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 3295
    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-nez v0, :cond_2f

    .line 3296
    monitor-exit v3

    return-void

    :cond_2f
    if-eqz v1, :cond_3c

    .line 3299
    iget p1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    if-ne p1, v2, :cond_43

    const-string/jumbo p2, "uidIdle"

    .line 3300
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    goto :goto_43

    .line 3303
    :cond_3c
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/FreecessHandler;->sendUidIdleCheckMsg(ILjava/lang/String;Z)V

    .line 3305
    :cond_43
    :goto_43
    monitor-exit v3

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_45

    throw p0

    :catchall_48
    move-exception p0

    .line 3292
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public triggerOLAF(Ljava/lang/String;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2351
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Ljava/lang/String;I)V

    .line 2354
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-string v8, "activity"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2356
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v8, 0x40

    if-eqz v7, :cond_33

    const-string v7, "Trigger OLAF"

    .line 2357
    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2359
    :cond_33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_42

    .line 2362
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2365
    :cond_42
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2369
    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const/4 v13, 0x0

    if-eqz v10, :cond_226

    .line 2370
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2371
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 2373
    :try_start_56
    iget-object v15, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v15}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v15

    .line 2374
    :goto_5c
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v13, v8, :cond_6e

    .line 2375
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2376
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5c

    .line 2378
    :cond_6e
    monitor-exit v14
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_223

    .line 2380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2381
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_77
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/FreecessPkgStatus;

    .line 2382
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 2383
    :try_start_86
    iget-boolean v15, v13, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v15, :cond_91

    .line 2384
    monitor-exit v14

    :goto_8b
    move-wide/from16 v17, v5

    move-object/from16 v16, v10

    goto/16 :goto_216

    :cond_91
    if-eqz v1, :cond_a1

    .line 2386
    iget-object v15, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a1

    iget v15, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v15, v2, :cond_a1

    .line 2387
    monitor-exit v14

    goto :goto_8b

    .line 2390
    :cond_a1
    iget-object v15, v13, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v15, :cond_a7

    .line 2391
    monitor-exit v14

    goto :goto_8b

    .line 2395
    :cond_a7
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v15

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move-object/from16 v16, v10

    const/4 v10, 0x4

    invoke-virtual {v15, v11, v12, v10}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 2396
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v10, :cond_d5

    .line 2397
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip isInPolicyExceptionList app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_d5
    monitor-exit v14

    :goto_d6
    move-wide/from16 v17, v5

    goto/16 :goto_216

    .line 2403
    :cond_da
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    if-eqz v10, :cond_113

    .line 2404
    iget v11, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_113

    .line 2405
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_111

    .line 2406
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip to freeze prev app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_111
    monitor-exit v14

    goto :goto_d6

    .line 2414
    :cond_113
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_13f

    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 2415
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_13d

    .line 2416
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has window surface, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_13d
    monitor-exit v14

    goto :goto_d6

    .line 2421
    :cond_13f
    iget-boolean v10, v13, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v10, :cond_162

    .line 2422
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v10, :cond_15f

    .line 2423
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " olaf allowlist, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_15f
    monitor-exit v14

    goto/16 :goto_d6

    .line 2428
    :cond_162
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f7

    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v11, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17c

    goto/16 :goto_1f7

    .line 2437
    :cond_17c
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_17f
    .catchall {:try_start_86 .. :try_end_17f} :catchall_21c

    .line 2438
    :try_start_17f
    iget-object v11, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 2439
    monitor-exit v10
    :try_end_18c
    .catchall {:try_start_17f .. :try_end_18c} :catchall_1f4

    if-eqz v11, :cond_1a9

    .line 2441
    :try_start_18e
    sget-object v10, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is top app, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    monitor-exit v14

    goto/16 :goto_d6

    .line 2445
    :cond_1a9
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v10

    iget-object v11, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v15, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-wide/from16 v17, v5

    const/16 v5, 0xb

    invoke-virtual {v10, v5, v11, v12, v15}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_1c1

    .line 2447
    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    goto :goto_1df

    .line 2449
    :cond_1c1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    :goto_1df
    monitor-exit v14
    :try_end_1e0
    .catchall {:try_start_18e .. :try_end_1e0} :catchall_21c

    .line 2452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    const-wide/16 v10, 0x1

    cmp-long v5, v5, v10

    if-ltz v5, :cond_216

    .line 2455
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_216

    :catchall_1f4
    move-exception v0

    .line 2439
    :try_start_1f5
    monitor-exit v10
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    :try_start_1f6
    throw v0

    :cond_1f7
    :goto_1f7
    move-wide/from16 v17, v5

    .line 2429
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_215

    .line 2430
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v13, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_215
    monitor-exit v14

    :cond_216
    :goto_216
    move-object/from16 v10, v16

    move-wide/from16 v5, v17

    goto/16 :goto_77

    :catchall_21c
    move-exception v0

    .line 2451
    monitor-exit v14
    :try_end_21e
    .catchall {:try_start_1f6 .. :try_end_21e} :catchall_21c

    throw v0

    :cond_21f
    move-wide/from16 v17, v5

    goto/16 :goto_3ad

    :catchall_223
    move-exception v0

    .line 2378
    :try_start_224
    monitor-exit v14
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_223

    throw v0

    :cond_226
    move-wide/from16 v17, v5

    .line 2460
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 2462
    :try_start_22b
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 2463
    :goto_231
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v13, v8, :cond_3ac

    .line 2464
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2465
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v9, :cond_246

    :goto_241
    const/4 v12, 0x4

    :cond_242
    :goto_242
    const/16 v15, 0xb

    goto/16 :goto_3a8

    :cond_246
    if-eqz v1, :cond_255

    .line 2468
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_255

    iget v9, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v9, v2, :cond_255

    goto :goto_241

    .line 2472
    :cond_255
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v9, :cond_25a

    goto :goto_241

    .line 2477
    :cond_25a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_287

    .line 2478
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_242

    .line 2479
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip isInPolicyExceptionList app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_242

    .line 2485
    :cond_287
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2bf

    .line 2486
    iget v10, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2bf

    .line 2487
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_242

    .line 2488
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip to freeze prev app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_242

    .line 2494
    :cond_2bf
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2eb

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2eb

    .line 2495
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_242

    .line 2496
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has window surface, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_242

    .line 2501
    :cond_2eb
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v9, :cond_30d

    .line 2502
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_242

    .line 2503
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " olaf allowlist, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_242

    .line 2508
    :cond_30d
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38a

    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v10, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_326

    goto :goto_38a

    .line 2517
    :cond_326
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_329
    .catchall {:try_start_22b .. :try_end_329} :catchall_434

    .line 2518
    :try_start_329
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 2519
    monitor-exit v9
    :try_end_336
    .catchall {:try_start_329 .. :try_end_336} :catchall_387

    if-eqz v10, :cond_352

    .line 2521
    :try_start_338
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is top app, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_242

    .line 2525
    :cond_352
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v14, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v15, 0xb

    invoke-virtual {v9, v15, v10, v11, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_368

    .line 2527
    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    goto :goto_3a8

    .line 2529
    :cond_368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_386
    .catchall {:try_start_338 .. :try_end_386} :catchall_434

    goto :goto_3a8

    :catchall_387
    move-exception v0

    .line 2519
    :try_start_388
    monitor-exit v9
    :try_end_389
    .catchall {:try_start_388 .. :try_end_389} :catchall_387

    :try_start_389
    throw v0

    :cond_38a
    :goto_38a
    const/16 v15, 0xb

    .line 2509
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v9, :cond_3a8

    .line 2510
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a8
    :goto_3a8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_231

    .line 2532
    :cond_3ac
    monitor-exit v5
    :try_end_3ad
    .catchall {:try_start_389 .. :try_end_3ad} :catchall_434

    .line 2535
    :goto_3ad
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 2536
    iget-object v6, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3ea

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_3c8

    goto :goto_3b9

    .line 2542
    :cond_3c8
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3cf

    goto :goto_3b9

    .line 2546
    :cond_3cf
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    .line 2549
    :try_start_3d2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3e5

    .line 2550
    invoke-virtual {v0, v7, v5}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v7

    if-eqz v7, :cond_3e5

    .line 2552
    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 2555
    :cond_3e5
    monitor-exit v8

    goto :goto_3b9

    :catchall_3e7
    move-exception v0

    monitor-exit v8
    :try_end_3e9
    .catchall {:try_start_3d2 .. :try_end_3e9} :catchall_3e7

    throw v0

    .line 2558
    :cond_3ea
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_3f3

    const-wide/16 v5, 0x40

    .line 2559
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 2561
    :cond_3f3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OLAF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    move-wide/from16 v6, v17

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2562
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/FreecessController;->convertLevelChangeInfoToString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 2561
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    return-void

    :catchall_434
    move-exception v0

    .line 2532
    :try_start_435
    monitor-exit v5
    :try_end_436
    .catchall {:try_start_435 .. :try_end_436} :catchall_434

    throw v0
.end method

.method public turnOnOffFreecessMonitor(Z)V
    .registers 2

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setFreecessEnabled(Z)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    return-void
.end method

.method public final unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .registers 16

    const-string v0, "Packet"

    .line 2137
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1cc

    .line 2140
    iget-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_1cc

    .line 2142
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-eqz v2, :cond_4a

    .line 2143
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v2, :cond_39

    .line 2144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OLAF:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    return v1

    :cond_39
    if-eqz p3, :cond_4a

    .line 2147
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    if-eqz p3, :cond_4a

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4a

    .line 2148
    iput-boolean v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 2151
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    return v1

    .line 2159
    :cond_4a
    iget-object p3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {p0, p3, v2, v4, v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result p3

    const-string v2, "("

    if-eqz p3, :cond_18e

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2163
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2164
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2165
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2167
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UFZ"

    invoke-virtual {v0, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Watchdog_HALF"

    .line 2169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "UFZ : "

    if-nez v0, :cond_d6

    const-string v0, "Watchdog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_d6

    .line 2172
    :cond_af
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 2170
    :cond_d6
    :goto_d6
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), FZ-time:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :goto_106
    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v10, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v11, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    .line 2177
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2178
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2181
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_136

    .line 2182
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2183
    iput v5, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2184
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 2185
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v4, "CalmMode"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_15f

    .line 2187
    :cond_136
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-nez v0, :cond_13e

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    if-eqz v0, :cond_15d

    :cond_13e
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_15d

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 2188
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2189
    iget-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-eqz v2, :cond_151

    .line 2190
    iput v5, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_153

    .line 2192
    :cond_151
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2195
    :goto_153
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_15f

    .line 2196
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {p0, v0, v2, p2, p1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    goto :goto_15f

    .line 2198
    :cond_15d
    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2201
    :cond_15f
    :goto_15f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2204
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessHandler;->sendPendingBroadcastMsg(Ljava/lang/String;I)V

    .line 2206
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-wide/16 v7, 0x5dc

    move-object v3, p0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 2208
    iget-object p2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1cb

    .line 2209
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_1cb

    :cond_18e
    if-eqz v0, :cond_1a6

    .line 2213
    iget-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz p0, :cond_1a6

    .line 2214
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 2221
    :cond_1a6
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UFZ error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cb
    :goto_1cb
    move v1, p3

    :cond_1cc
    return v1
.end method

.method public final unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_13

    .line 2228
    iget-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz p2, :cond_13

    const/4 p2, 0x2

    .line 2229
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(II)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    .line 2232
    iput-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    const/4 p0, 0x1

    .line 2233
    iput-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->isPidFreezed:Z

    :cond_13
    return-void
.end method

.method public unFreezeActivePackages(Ljava/lang/String;)V
    .registers 9

    .line 2007
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2008
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2009
    :goto_f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 2010
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2011
    iget-boolean v5, v4, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2012
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2015
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 2833
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2836
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2839
    :cond_9
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_37

    .line 2840
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalmMode UFZ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return p0
.end method

.method public unFreezeForOLAF(Ljava/lang/String;)V
    .registers 15

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2954
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2956
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v4, 0x40

    if-eqz v3, :cond_30

    .line 2957
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OLAF unfreeze for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Unfreeze OLAF"

    .line 2958
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2961
    :cond_30
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 2962
    :try_start_33
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 2964
    :goto_3f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_cb

    .line 2965
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/FreecessPkgStatus;

    .line 2968
    iget-boolean v10, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v10, :cond_5b

    .line 2969
    iget-boolean v10, v9, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v10, :cond_5b

    .line 2971
    iput-boolean v7, v9, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    const/4 v10, 0x3

    .line 2972
    iput v10, v9, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2973
    iput v10, v9, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_c7

    .line 2982
    :cond_5b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    iget-object v11, v9, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 2983
    iget-boolean v10, v9, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v10, :cond_85

    .line 2985
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OLAF:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2987
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 2990
    :cond_85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":nMARsTG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v7}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 2993
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 2996
    :cond_a0
    iget-boolean v10, v9, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-eqz v10, :cond_ac

    .line 2998
    iget-object v10, v9, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 2999
    iput-boolean v7, v9, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    goto :goto_c4

    .line 3003
    :cond_ac
    iget-boolean v10, v9, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v10, :cond_c4

    .line 3004
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OLAF:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3008
    :cond_c4
    :goto_c4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    :goto_c7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3f

    :cond_cb
    move v6, v7

    .line 3013
    :goto_cc
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_e6

    .line 3014
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v8, :cond_e3

    .line 3016
    iget-object v9, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v10, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v8, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    :cond_e3
    add-int/lit8 v6, v6, 0x1

    goto :goto_cc

    .line 3019
    :cond_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_33 .. :try_end_e7} :catchall_143

    .line 3021
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v2, :cond_ee

    .line 3022
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3024
    :cond_ee
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v3, "UFA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OLAF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-nez p1, :cond_131

    move p1, v7

    .line 3028
    :goto_119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_131

    .line 3029
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    if-eqz v0, :cond_12e

    .line 3031
    iget v2, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    :cond_12e
    add-int/lit8 p1, p1, 0x1

    goto :goto_119

    .line 3037
    :cond_131
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter p1

    const-wide/16 v0, 0x0

    .line 3038
    :try_start_136
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 3039
    monitor-exit p1
    :try_end_13d
    .catchall {:try_start_136 .. :try_end_13d} :catchall_140

    .line 3040
    iput-boolean v7, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    return-void

    :catchall_140
    move-exception p0

    .line 3039
    :try_start_141
    monitor-exit p1
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw p0

    :catchall_143
    move-exception p0

    .line 3019
    :try_start_144
    monitor-exit v3
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw p0
.end method

.method public unFreezePackage(ILjava/lang/String;)V
    .registers 8

    .line 1983
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1984
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 1986
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 1987
    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x1

    .line 1988
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_17

    :cond_14
    const/4 v2, 0x0

    move p0, v1

    move v3, p0

    .line 1990
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    if-eqz p0, :cond_23

    if-eqz v2, :cond_23

    .line 1992
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v2, v3, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 1990
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public unFreezePackage(Ljava/lang/String;)V
    .registers 7

    .line 1997
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1998
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1999
    :goto_f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 2000
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2001
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2003
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 1969
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1970
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 1971
    iget-boolean v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 1972
    invoke-virtual {p0, v1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 1973
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    if-eqz p0, :cond_1f

    .line 1975
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    .line 1973
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public unFreezePackageForProc(IILjava/lang/String;)V
    .registers 6

    .line 2032
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2033
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    .line 2034
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v1, :cond_f

    .line 2035
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessController;->unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;I)V

    goto :goto_13

    :cond_f
    const/4 p2, 0x0

    .line 2037
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 2038
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public unFreezeWidgetPackages(Ljava/lang/String;)V
    .registers 12

    .line 2019
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2020
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2021
    :goto_f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 2022
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2023
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v9, 0x4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->filter(Ljava/lang/String;III)I

    move-result v5

    if-lez v5, :cond_2f

    .line 2025
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2028
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public unfreezeAllPackages(Ljava/lang/String;)V
    .registers 2

    .line 2241
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->cleanPacketMonitoredUids()V

    return-void
.end method

.method public unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .registers 7

    .line 2630
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2634
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2635
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2636
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    const/4 v1, 0x1

    .line 2637
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2638
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2640
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2641
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2643
    :cond_34
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UFZ"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_99

    .line 2646
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OLAF UFZ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    return-void
.end method

.method public unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 2652
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2656
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2657
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2658
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    const/4 v1, 0x1

    .line 2659
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2660
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4a

    .line 2664
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget p3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2666
    :cond_4a
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_78

    .line 2667
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OLAF UFZ : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method public final unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .registers 15

    const-string v0, "Packet"

    .line 2914
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2916
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v1

    const-string v2, "("

    if-eqz v1, :cond_b1

    .line 2919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2920
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2921
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2922
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2924
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OLAF:P-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UFZ"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v8, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v9, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    const/4 v0, 0x1

    .line 2928
    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2930
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 2931
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2933
    :cond_84
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz p0, :cond_ee

    .line 2934
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OLAF Pending UFZ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    :cond_b1
    if-eqz v0, :cond_c9

    .line 2938
    iget-boolean p0, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz p0, :cond_c9

    .line 2939
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V

    .line 2946
    :cond_c9
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UFZ error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    :goto_ee
    return-void
.end method

.method public unfreezeWallPaperPackage()V
    .registers 4

    .line 3085
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getWallpaperPackage()Ljava/lang/String;

    move-result-object p0

    .line 3086
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getWallpaperUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3087
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "WallPaper"

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1348
    :cond_3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 1349
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1350
    :try_start_11
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExcludeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1351
    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1352
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 1356
    :cond_2d
    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    throw p0

    .line 1359
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1360
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1361
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 1366
    :cond_4e
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1367
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1368
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    :cond_6a
    return-void
.end method

.method public final updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .registers 4

    .line 1580
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    goto :goto_14

    .line 1588
    :cond_c
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    goto :goto_14

    .line 1585
    :cond_f
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    goto :goto_14

    .line 1582
    :cond_12
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    :goto_14
    return-void
.end method

.method public final updateFreezedUidFirewall(IZ)V
    .registers 9

    .line 1501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1503
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    const-string/jumbo v2, "network_management"

    .line 1504
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1507
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_93

    const-string v2, "NET"

    const-string v3, ","

    const/4 v4, 0x7

    if-eqz p2, :cond_49

    const/4 p2, 0x1

    .line 1510
    :try_start_21
    invoke-interface {p0, v4, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 1511
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UFZ] "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1512
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_49
    const/4 p2, 0x2

    .line 1514
    invoke-interface {p0, v4, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 1515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FRZ] "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1516
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Lcom/android/server/am/MARsPolicyManager;->addNetDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_71} :catch_74
    .catchall {:try_start_21 .. :try_end_71} :catchall_72

    goto :goto_8b

    :catchall_72
    move-exception p0

    goto :goto_8f

    :catch_74
    move-exception p0

    .line 1519
    :try_start_75
    sget-object p1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured while updateFreezedUidFirewall: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_72

    .line 1521
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_93

    :goto_8f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    throw p0

    :cond_93
    :goto_93
    return-void
.end method

.method public updateJobSchedulerPackages()V
    .registers 4

    .line 1375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 1377
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1381
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    if-nez v1, :cond_1d

    const-string/jumbo v1, "jobscheduler"

    .line 1382
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/job/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    .line 1384
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_25

    .line 1385
    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v0

    .line 1387
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 1388
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_42} :catch_43

    goto :goto_29

    .line 1391
    :catch_43
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "Exception updateJobSchedulerPackages"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void
.end method

.method public updateKilledByChimera(I)V
    .registers 5

    .line 3555
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3556
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p1, 0x1

    .line 3558
    iput-boolean p1, p0, Lcom/android/server/am/FreecessPkgStatus;->isKilledByChimera:Z

    .line 3559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/FreecessPkgStatus;->killedTime:J

    .line 3561
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

.method public updateRunningLocationPackages()V
    .registers 5

    .line 1396
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1397
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1401
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_18

    const-string/jumbo v0, "location"

    .line 1402
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 1405
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_51

    .line 1406
    invoke-interface {v0}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1408
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 1410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 1418
    :catch_4a
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "failed to updateRunningLocationPackages!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public updateTargetPkgForOLAF(ZLjava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_10

    .line 2306
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2307
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 2308
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    :cond_10
    return-void
.end method

.method public final writeDevFile(Ljava/lang/String;I)Z
    .registers 9

    .line 1236
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_7f

    .line 1246
    :cond_14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "/dev/freezer/thaw/cgroup.procs"

    .line 1247
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    .line 1248
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1249
    :try_start_24
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 1250
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1252
    :cond_31
    monitor-exit v1

    goto :goto_54

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    const-string v1, "/dev/freezer/frozen/cgroup.procs"

    .line 1253
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1255
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter p1

    .line 1256
    :try_start_41
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1257
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_4e
    monitor-exit p1

    move p1, v3

    goto :goto_55

    :catchall_51
    move-exception p0

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_51

    throw p0

    :cond_54
    :goto_54
    move p1, v2

    .line 1262
    :goto_55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1265
    :try_start_59
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v4, :cond_69

    .line 1266
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CustomFrequencyManager;

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1268
    :cond_69
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v4, "freeze"

    invoke-virtual {p0, p2, p1, v4}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result p0
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_7a

    .line 1270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p1, -0x1

    if-ne p0, p1, :cond_78

    goto :goto_79

    :cond_78
    move v2, v3

    :goto_79
    return v2

    :catchall_7a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    throw p0

    .line 1242
    :cond_7f
    :goto_7f
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "writeDevFile error: file doesn\'t exist or can\'t write"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p4

    const-string v4, "/dev/freezer/frozen/cgroup.procs"

    .line 965
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_1c

    :cond_13
    const-string v4, "/dev/freezer/thaw/cgroup.procs"

    .line 966
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47b

    move v4, v6

    .line 970
    :goto_1c
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz p3, :cond_36

    .line 974
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 975
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 979
    :cond_36
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 982
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_84

    if-nez v4, :cond_84

    .line 983
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v9

    .line 984
    :try_start_44
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 985
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 986
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 987
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_60

    .line 988
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 989
    :cond_76
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    :cond_7f
    monitor-exit v9

    goto :goto_84

    :catchall_81
    move-exception v0

    monitor-exit v9
    :try_end_83
    .catchall {:try_start_44 .. :try_end_83} :catchall_81

    throw v0

    :cond_84
    :goto_84
    const/4 v0, 0x0

    if-eqz v4, :cond_d4

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v9

    if-eqz v9, :cond_d4

    .line 1000
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_d3

    packed-switch v9, :pswitch_data_47e

    goto :goto_d3

    .line 1024
    :pswitch_9c
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is RL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1021
    :pswitch_a4
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is FG"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1016
    :pswitch_ac
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is SP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1012
    :pswitch_b4
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is LP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1009
    :pswitch_bc
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is RI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1006
    :pswitch_c4
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is ES"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 1003
    :pswitch_cc
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Skip freeze : freeze target is AD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    :goto_d3
    return v6

    :cond_d4
    move-object v9, v0

    .line 1032
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1036
    :try_start_dd
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, -0x1

    :goto_e3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_f3
    .catchall {:try_start_dd .. :try_end_f3} :catchall_476

    .line 1038
    :try_start_f3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v4, :cond_156

    .line 1040
    iget-boolean v15, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v15, :cond_123

    .line 1041
    sget-object v15, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_104} :catch_1dc
    .catchall {:try_start_f3 .. :try_end_104} :catchall_476

    move-object/from16 p4, v14

    :try_start_106
    const-string v14, "UFZ : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), cached_pid: Y"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_125

    :cond_123
    move-object/from16 p4, v14

    .line 1042
    :goto_125
    iget-object v6, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_128} :catch_1da
    .catchall {:try_start_106 .. :try_end_128} :catchall_476

    .line 1043
    :try_start_128
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v14, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_135

    .line 1044
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v14, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1046
    :cond_135
    monitor-exit v6
    :try_end_136
    .catchall {:try_start_128 .. :try_end_136} :catchall_153

    .line 1047
    :try_start_136
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_158

    const/4 v6, 0x0

    .line 1049
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1050
    iput-wide v10, v5, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1051
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_152} :catch_1da
    .catchall {:try_start_136 .. :try_end_152} :catchall_476

    goto :goto_158

    :catchall_153
    move-exception v0

    .line 1046
    :try_start_154
    monitor-exit v6
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    :try_start_155
    throw v0

    :cond_156
    move-object/from16 p4, v14

    .line 1054
    :cond_158
    :goto_158
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v5, :cond_168

    .line 1055
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v6, "CustomFrequencyManagerService"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CustomFrequencyManager;

    iput-object v5, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1057
    :cond_168
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v6, "freeze"

    invoke-virtual {v5, v0, v4, v6}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v5
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_170} :catch_1da
    .catchall {:try_start_155 .. :try_end_170} :catchall_476

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1d7

    .line 1059
    :try_start_173
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set Freeze. uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", isFreeze="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", cached_pid: Y"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget v6, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    const/4 v14, 0x1

    add-int/2addr v6, v14

    iput v6, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    .line 1061
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    const-string v14, "DEV"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1af} :catch_1d3
    .catchall {:try_start_173 .. :try_end_1af} :catchall_476

    move/from16 v16, v5

    :try_start_1b1
    const-string v5, "cntFailUnfreezePilot="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fpid="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1d2} :catch_1da
    .catchall {:try_start_1b1 .. :try_end_1d2} :catchall_476

    goto :goto_1e2

    :catch_1d3
    move-exception v0

    move/from16 v16, v5

    goto :goto_1df

    :cond_1d7
    move/from16 v16, v5

    goto :goto_1e2

    :catch_1da
    move-exception v0

    goto :goto_1df

    :catch_1dc
    move-exception v0

    move-object/from16 p4, v14

    .line 1065
    :goto_1df
    :try_start_1df
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e2
    move-object/from16 v14, p4

    const/4 v6, 0x0

    goto/16 :goto_e3

    .line 1068
    :cond_1e7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f5

    const/16 v16, 0x0

    .line 1071
    :cond_1f5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_1fa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_431

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1072
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v4, :cond_29c

    .line 1075
    iget-boolean v14, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v14, :cond_23a

    .line 1076
    sget-object v14, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v0

    const-string v0, "FZ : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23c

    :cond_23a
    move-object/from16 p4, v0

    .line 1077
    :goto_23c
    iget-object v14, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v14
    :try_end_23f
    .catchall {:try_start_1df .. :try_end_23f} :catchall_476

    .line 1078
    :try_start_23f
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24c

    .line 1079
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_24c
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_294

    .line 1082
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_253
    .catchall {:try_start_23f .. :try_end_253} :catchall_299

    .line 1083
    :try_start_253
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_270

    .line 1084
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v17, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_272

    :cond_270
    move-object/from16 v17, v9

    .line 1085
    :goto_272
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1086
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28f

    .line 1087
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_28f
    monitor-exit v8

    goto :goto_296

    :catchall_291
    move-exception v0

    monitor-exit v8
    :try_end_293
    .catchall {:try_start_253 .. :try_end_293} :catchall_291

    :try_start_293
    throw v0

    :cond_294
    move-object/from16 v17, v9

    .line 1090
    :goto_296
    monitor-exit v14

    const/4 v0, 0x0

    goto :goto_2f7

    :catchall_299
    move-exception v0

    monitor-exit v14
    :try_end_29b
    .catchall {:try_start_293 .. :try_end_29b} :catchall_299

    :try_start_29b
    throw v0

    :cond_29c
    move-object/from16 p4, v0

    move-object/from16 v17, v9

    .line 1092
    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_2c7

    .line 1093
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UFZ : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_2c7
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v9
    :try_end_2ca
    .catchall {:try_start_29b .. :try_end_2ca} :catchall_476

    .line 1095
    :try_start_2ca
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 1097
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_2da

    :cond_2d9
    const/4 v0, 0x0

    .line 1099
    :goto_2da
    monitor-exit v9
    :try_end_2db
    .catchall {:try_start_2ca .. :try_end_2db} :catchall_42e

    .line 1100
    :try_start_2db
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2f7

    const/4 v9, 0x0

    .line 1102
    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1103
    iput-wide v10, v8, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1104
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_2f7
    :goto_2f7
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v8, :cond_307

    .line 1108
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v9, "CustomFrequencyManagerService"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/CustomFrequencyManager;

    iput-object v8, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1110
    :cond_307
    iget-object v8, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string v9, "freeze"

    invoke-virtual {v8, v5, v4, v9}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_426

    .line 1112
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set Freeze. uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", isFreeze="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3ad

    .line 1114
    iget v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cntFailFreeze="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (pids"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_391

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36c

    .line 1120
    :cond_391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v3, "DEV"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_435

    .line 1124
    :cond_3ad
    iget v9, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    const/4 v14, 0x1

    add-int/2addr v9, v14

    iput v9, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 1125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cntFailUnfreeze="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", uid="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", fpid="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (pids"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1126
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3df
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_404

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3df

    .line 1128
    :cond_404
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") hasPidInFrozenPidList="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1129
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v9

    const-string v14, "DEV"

    invoke-virtual {v9, v14, v5}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_421
    .catchall {:try_start_2db .. :try_end_421} :catchall_476

    if-eqz v0, :cond_426

    if-nez v6, :cond_426

    const/4 v6, 0x1

    :cond_426
    move-object/from16 v0, p4

    move/from16 v16, v8

    move-object/from16 v9, v17

    goto/16 :goto_1fa

    :catchall_42e
    move-exception v0

    .line 1099
    :try_start_42f
    monitor-exit v9
    :try_end_430
    .catchall {:try_start_42f .. :try_end_430} :catchall_42e

    :try_start_430
    throw v0
    :try_end_431
    .catchall {:try_start_430 .. :try_end_431} :catchall_476

    :cond_431
    move-object/from16 v17, v9

    move/from16 v8, v16

    .line 1137
    :goto_435
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_46c

    .line 1140
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46c

    .line 1141
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_444
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_463

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    .line 1142
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1143
    iput-wide v10, v2, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1144
    iget-object v4, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_444

    :cond_463
    const/4 v3, 0x1

    .line 1146
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    goto :goto_46d

    :cond_46c
    const/4 v3, 0x1

    :goto_46d
    if-nez v6, :cond_474

    const/4 v1, -0x1

    if-eq v8, v1, :cond_474

    move v5, v3

    goto :goto_475

    :cond_474
    const/4 v5, 0x0

    :goto_475
    return v5

    :catchall_476
    move-exception v0

    .line 1137
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    throw v0

    :cond_47b
    move v1, v6

    return v1

    nop

    :pswitch_data_47e
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_c4
        :pswitch_bc
        :pswitch_b4
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
    .end packed-switch
.end method
