.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;,
        Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;
    }
.end annotation


# static fields
.field public static final AL_SLOT_FOR_MEM_12G:I = 0x3

.field public static BORA_POLICY_ENABLE:Z = false

.field public static final BROADCAST_DHA_DEBUG_ON:Ljava/lang/String; = "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

.field public static final BROADCAST_SET_DHA_PARAMETER:Ljava/lang/String; = "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

.field public static final BROADCAST_SET_LMKD_INTENT:Ljava/lang/String; = "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

.field public static DEBUG:Z = false

.field public static final DEFAULT_MAX_TASK_SNAPSHOT:I = 0x5

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field public static LMKD_REENTRY_MODE_ENABLE:Z = false

.field public static LMK_CRITICAL_ADJ:I = 0x0

.field public static LMK_CRITICAL_UPGRADE:Z = false

.field public static LMK_CUSTOM_SW_LIMIT:I = 0x0

.field public static LMK_CUSTOM_TM_LIMIT:I = 0x0

.field public static LMK_DEBUG:Z = false

.field public static LMK_DOWNGRADE_PRESSURE:I = 0x0

.field public static LMK_ENABLE_CMARBINFREE_SUB:Z = false

.field public static LMK_ENABLE_REENTRY_LMK:Z = false

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z = false

.field public static LMK_ENABLE_USERSPACE_LMK:Z = false

.field public static LMK_FREELIMIT_ENABLE:Z = false

.field public static LMK_FREELIMIT_VAL:I = 0x0

.field public static LMK_KILL_HEAVIEST_TASK:Z = false

.field public static LMK_KILL_TIMEOUT_MS:I = 0x0

.field public static LMK_LOW_ADJ:I = 0x0

.field public static LMK_LOW_MEM_KEEP_ENABLE:Z = false

.field public static LMK_LOW_RAM_DEVICE:Z = false

.field public static LMK_MEDIUM_ADJ:I = 0x0

.field public static LMK_PSI_CRITICAL_TH:I = 0x0

.field public static LMK_PSI_LOW_TH:I = 0x0

.field public static LMK_PSI_MEDIUM_TH:I = 0x0

.field public static LMK_UPGRADE_PRESSURE:I = 0x0

.field public static LMK_USE_MINFREE_LEVELS:Z = false

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field public static PICKED_ADJ_ENABLE:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_DHA:Ljava/lang/String; = "DynamicHiddenApp"

.field public static lastTime:J

.field public static mLMKArray:Ljava/lang/String;

.field public static mLMKScale:F

.field public static final mTotalMemMb:J

.field public static max_neverkilledapp_num_12g:I

.field public static max_neverkilledapp_num_16g:I

.field public static max_neverkilledapp_num_8g:I

.field public static max_neverkilledapp_num_default:I

.field public static reentryCount:I

.field public static reentryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sHH_AMSExceptionEnable:Z

.field public static sPkgDecoder:Ljava/util/Base64$Decoder;


# instance fields
.field public final ACTION_DEFAULT_HOME_CHANGE:Ljava/lang/String;

.field public final ACTION_DOCK_EVENT:Ljava/lang/String;

.field public final ACTION_DOCK_STATE:Ljava/lang/String;

.field public ActiveLaunchCount:I

.field public ActiveLaunchLimit:I

.field public ActiveLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final EXTRA_HOME_HUB_MODE:Ljava/lang/String;

.field public HomeHubState:Z

.field public MlLaunchCount:I

.field public MlLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final PACKAGE_NAME_HOMEHUB:Ljava/lang/String;

.field public final TAG_HH:Ljava/lang/String;

.field public isReentryMode:Z

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mBGProtectManager:Lcom/android/server/am/BGProtectManager;

.field public final mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

.field public mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mContext:Landroid/content/Context;

.field public mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "dha_lmk_scale"

    const-string v1, "-1"

    .line 60
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string v0, "dha_lmk_array"

    const-string/jumbo v1, "none"

    .line 62
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v0, "enable_picked_adj"

    const-string/jumbo v1, "true"

    .line 64
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    const-string v0, "bora_policy_enable"

    const-string v2, "false"

    .line 66
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    const-string/jumbo v0, "hh_ams_exception"

    .line 68
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 70
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    const-string/jumbo v0, "neverkill_num_lowram"

    const-string v3, "0"

    .line 89
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    const-string/jumbo v0, "neverkill_num_8G"

    const-string v4, "1"

    .line 90
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    const-string/jumbo v0, "neverkill_num_12G"

    const-string v4, "3"

    .line 91
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    const-string/jumbo v0, "neverkill_num_16G"

    const-string v4, "5"

    .line 92
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    .line 97
    invoke-static {}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getTotalMemoryMB()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v6, 0x2800

    cmp-long v0, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v0, :cond_75

    move v0, v7

    goto :goto_76

    :cond_75
    move v0, v6

    .line 98
    :goto_76
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    const-wide/16 v8, 0x3000

    cmp-long v0, v4, v8

    if-lez v0, :cond_83

    .line 101
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_9d

    :cond_83
    const-wide/16 v8, 0x2000

    cmp-long v0, v4, v8

    if-lez v0, :cond_8e

    .line 103
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_9d

    :cond_8e
    const-wide/16 v8, 0x1800

    cmp-long v0, v4, v8

    if-lez v0, :cond_99

    .line 105
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_9d

    .line 107
    :cond_99
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    :goto_9d
    const-string/jumbo v0, "low"

    const-string v4, "1001"

    .line 111
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    const-string/jumbo v0, "medium"

    const-string v4, "850"

    .line 112
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    const-string v0, "critical"

    .line 113
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    const-string v0, "debug"

    .line 114
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    const-string v0, "critical_upgrade"

    .line 115
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    const-string/jumbo v0, "upgrade_pressure"

    const-string v3, "80"

    .line 116
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    const-string v0, "downgrade_pressure"

    const-string v3, "100"

    .line 117
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    const-string/jumbo v0, "kill_heaviest_task"

    .line 118
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    const-string/jumbo v0, "ro.config.low_ram"

    .line 119
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_RAM_DEVICE:Z

    const-string/jumbo v0, "kill_timeout_ms"

    .line 121
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    const-string/jumbo v0, "use_minfree_levels"

    .line 122
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 123
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 124
    sput-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    const-string v0, "enable_cmarbinfree_sub"

    .line 125
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    const-string v0, "enable_upgrade_criadj"

    .line 126
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    const-string v0, "freelimit_enable"

    .line 127
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    const-string/jumbo v0, "use_lowmem_keep_except"

    .line 128
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    const-string v0, "freelimit_val"

    const-string v1, "11"

    .line 129
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    const-string v0, "custom_sw_limit"

    const-string v1, "500"

    .line 130
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    const-string v0, "custom_tm_limit"

    const-string v1, "1000"

    .line 131
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    const-string/jumbo v0, "psi_low"

    const-string v1, "70"

    .line 132
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_LOW_TH:I

    const-string/jumbo v0, "psi_medium"

    .line 133
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    const-string/jumbo v0, "psi_critical"

    const-string v1, "120"

    .line 134
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    const-string/jumbo v0, "reentry_mode_enable"

    .line 478
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 480
    sput v6, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const-wide/16 v0, 0x0

    .line 481
    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 47
    new-instance v0, Lcom/android/server/bgslotmanager/MemInfoGetter;

    invoke-direct {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 48
    new-instance v1, Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/BGSlotManager;-><init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 51
    new-instance v0, Lcom/android/server/am/BGProtectManager;

    invoke-direct {v0}, Lcom/android/server/am/BGProtectManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 79
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    const/4 v1, 0x1

    .line 80
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    const-string v1, "ActivityManager_HOME_HUB"

    .line 379
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HH:Ljava/lang/String;

    const-string/jumbo v1, "home_hub_mode"

    .line 380
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_HOME_HUB_MODE:Ljava/lang/String;

    const-string v1, "com.samsung.android.homehub"

    .line 381
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->PACKAGE_NAME_HOMEHUB:Ljava/lang/String;

    const-string v1, "android.intent.extra.DOCK_STATE"

    .line 382
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DOCK_STATE:Ljava/lang/String;

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 383
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DOCK_EVENT:Ljava/lang/String;

    const-string v1, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 384
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ACTION_DEFAULT_HOME_CHANGE:Ljava/lang/String;

    .line 387
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 482
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/DynamicHiddenApp-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/DynamicHiddenApp;-><init>()V

    return-void
.end method

.method public static decodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 513
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    const-string v1, ""

    if-eqz v0, :cond_13

    if-nez p0, :cond_9

    goto :goto_13

    .line 520
    :cond_9
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 521
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    :cond_13
    :goto_13
    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/DynamicHiddenApp;
    .registers 1

    .line 168
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    return-object v0
.end method


# virtual methods
.method public IsAllowListCleared()Z
    .registers 1

    .line 431
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return p0
.end method

.method public IsForceKillHeavyProcess(Ljava/lang/String;)Z
    .registers 2

    .line 447
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public IsProtected(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .registers 16

    .line 277
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-string v3, "ActivityManager"

    const/16 v6, 0xd

    const/16 v7, 0x35c

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_58

    const-wide/16 v10, 0xbb8

    cmp-long v2, v0, v10

    if-lez v2, :cond_58

    .line 286
    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v12, 0x2af8

    cmp-long v2, v10, v12

    if-gtz v2, :cond_58

    .line 287
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    if-lt p0, v7, :cond_51

    const-string p0, "AL_Kill : over 3 sec"

    .line 288
    invoke-virtual {p1, p0, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 289
    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz p0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AL_Kill : over 3 sec: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_51
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 292
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto :goto_b2

    .line 295
    :cond_58
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v0, v1, :cond_9f

    .line 296
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 298
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active App Launch process < 2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 300
    :cond_9f
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    if-lt p0, v7, :cond_ac

    const-string p0, "AL_Kill : over 1 slots"

    .line 301
    invoke-virtual {p1, p0, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 303
    :cond_ac
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 304
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    :cond_b2
    :goto_b2
    :pswitch_b2
    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x10
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
    .end packed-switch
.end method

.method public addAllowlistList(Z)V
    .registers 2

    .line 451
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    return-void
.end method

.method public addCamListIfIsCameraProcess(Ljava/lang/String;I)V
    .registers 3

    .line 271
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    if-eqz p0, :cond_7

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->addCamListIfIsCameraProcess(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public addDHAIntentFilter()V
    .registers 4

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/DynamicHiddenApp$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public appIsPickedProcess(Ljava/lang/String;I)I
    .registers 3

    .line 435
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bootBGSlotSettingTimer()V
    .registers 3

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 622
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 625
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->updateParamsFile()V

    .line 628
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->runBootEFKBoost()V

    .line 631
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->runSetBonusMaxCachedAppsPerSwapTimer()V

    return-void
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 2

    .line 471
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public clearRecentActivityProcess()V
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->clearRecentActivityProcess()V

    return-void
.end method

.method public destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 6

    .line 311
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_10

    const/16 v1, 0x11

    if-eq v0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 v0, 0x1

    add-int/2addr p2, v0

    if-le p2, p3, :cond_47

    .line 321
    iget p2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_47

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PWHL_KNOX - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in Cached"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string p3, "Convert from hidden to empty knox"

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    :cond_47
    return v0
.end method

.method public doDhaBoosterOn(Ljava/lang/String;)V
    .registers 6

    .line 484
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    if-eqz v0, :cond_51

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 486
    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 487
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    goto :goto_2a

    .line 490
    :cond_1c
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 492
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :goto_2a
    iget-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    if-nez v0, :cond_51

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_51

    .line 496
    invoke-static {}, Lcom/android/server/am/ProcessList;->setLmkdReentryMode()V

    .line 497
    iput-boolean v1, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    const-string v0, "ActivityManager"

    const-string v1, "Enable ReentryMode"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 501
    :cond_41
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 502
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 503
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 509
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->runDecEFKBoost(Ljava/lang/String;)V

    return-void
.end method

.method public dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .registers 2

    .line 587
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_7

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->dumpLMKDParameter(Ljava/io/PrintWriter;)V

    :cond_7
    return-void
.end method

.method public dumpMLList(Ljava/io/PrintWriter;)V
    .registers 2

    .line 583
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->dumpMLList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBGProtectManagerInstance()Lcom/android/server/am/BGProtectManager;
    .registers 1

    .line 676
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    return-object p0
.end method

.method public getBGSlotManagerInstance()Lcom/android/server/bgslotmanager/BGSlotManager;
    .registers 1

    .line 687
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    return-object p0
.end method

.method public getBgAppPropManagerInstance()Lcom/android/server/bgslotmanager/BgAppPropManager;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    return-object p0
.end method

.method public getBonusMaxCachedAppsPerSwap()I
    .registers 1

    .line 648
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->BONUS_MAX_CACHED_APPS_PER_SWAP:I

    return p0
.end method

.method public getCachedMax()I
    .registers 1

    .line 636
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    return p0
.end method

.method public getCachedMin()I
    .registers 1

    .line 640
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    return p0
.end method

.method public getCameraKillModeManagerInstance()Lcom/android/server/bgslotmanager/CameraKillModeManager;
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    if-nez v0, :cond_7

    .line 681
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setCameraManagerCallback()V

    .line 683
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    return-object p0
.end method

.method public getCustomEFKManagerInstance()Lcom/android/server/bgslotmanager/CustomEFKManager;
    .registers 1

    .line 664
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    return-object p0
.end method

.method public getEmptyMax()I
    .registers 1

    .line 644
    sget p0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    return p0
.end method

.method public getIsUsingCamera()Z
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    if-eqz p0, :cond_9

    .line 253
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->getIsUsingCamera()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getMemInfoGetterInstance()Lcom/android/server/bgslotmanager/MemInfoGetter;
    .registers 1

    .line 668
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    return-object p0
.end method

.method public getMemLevel(I)J
    .registers 2

    .line 535
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz p0, :cond_9

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public initActiveLaunchParam()V
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_f

    .line 338
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_f
    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    return-void
.end method

.method public initDHAPostBoot()V
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setCameraManagerCallback()V

    .line 187
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager;->initBGProtectManagerPostBoot()V

    .line 188
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/BGSlotManager;->initBGSlotManagerPostBoot()V

    .line 189
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_SET_SWAPTOTAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->addDHAIntentFilter()V

    return-void
.end method

.method public initDhaProcessesLocked()V
    .registers 1

    .line 366
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    return-void
.end method

.method public initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 5

    .line 172
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    if-nez v0, :cond_2d

    .line 173
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 174
    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz p1, :cond_e

    .line 175
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    .line 176
    :cond_e
    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 177
    new-instance p1, Lcom/android/server/bgslotmanager/BgAppPropManager;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-direct {p1, p2, p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/DynamicHiddenApp;)V

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 178
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    sget-wide p2, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/bgslotmanager/BGSlotManager;->initBGSlotManager(Lcom/android/server/am/DynamicHiddenApp;J)V

    .line 179
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/am/BGProtectManager;->initBGProtectManager(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initLMKTh()V

    const/4 p0, 0x1

    .line 181
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    :cond_2d
    return-void
.end method

.method public initLMKTh()V
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    return-void
.end method

.method public initMLLaunchCountParam()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_f

    .line 346
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_f
    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    return-void
.end method

.method public isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 371
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 3

    .line 375
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BGProtectManager;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    return p0
.end method

.method public isHomeHubMode(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 10

    const-string v0, "ActivityManager_HOME_HUB"

    const-string v1, "get action default home change, extra home hub mode intent"

    .line 390
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " - value is null"

    if-eqz v3, :cond_b9

    const-string/jumbo v5, "ro.product.model"

    const-string v6, ""

    .line 395
    invoke-static {v5, v6}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SM-T270"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string v4, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    .line 396
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " - value is "

    if-eqz v4, :cond_6e

    const-string/jumbo v4, "home_hub_mode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto :goto_f

    :cond_6e
    const-string v4, "android.intent.action.DOCK_EVENT"

    .line 399
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    goto/16 :goto_f

    .line 404
    :cond_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 407
    :cond_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 411
    :cond_cd
    iget-boolean p1, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    if-eqz p1, :cond_e2

    .line 412
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_d8

    .line 413
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setHomeHubBGSlot()V

    :cond_d8
    const-string/jumbo p0, "update cached,empty max slot due to launcher change to HH"

    .line 415
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 416
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    goto :goto_f2

    .line 418
    :cond_e2
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_e9

    .line 419
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->restoreFromHomeHubBGSlot()V

    :cond_e9
    const-string/jumbo p0, "update cached,empty max slot due to launcher change from HH"

    .line 421
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 422
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    :goto_f2
    return-void
.end method

.method public isHomeHubState()Z
    .registers 1

    .line 652
    iget-boolean p0, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    return p0
.end method

.method public isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 439
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V
    .registers 11

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 352
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_45

    .line 353
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le p2, p0, :cond_45

    .line 354
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v2

    cmp-long p0, v2, p3

    if-gez p0, :cond_45

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "empty for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide p2

    sub-long/2addr v0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "s"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-string v2, "empty for too long"

    move-object v0, p1

    .line 355
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_45
    return-void
.end method

.method public printAmcCachedEmpty(Ljava/io/PrintWriter;)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v0, :cond_34

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AMC_CUR_MAX_CACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AMC_CUR_MAX_EMPTY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public printAppCompactorEnable(Ljava/io/PrintWriter;)V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_33

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  APPCOMPACTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    if-nez p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public printLowMemDectectorEnable(Ljava/io/PrintWriter;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_20

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LOWMEMDETECTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->getLowMemDetectorIsAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public removeAllowlistByBUB()V
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    return-void
.end method

.method public resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 459
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setAllowListCleared(Z)V
    .registers 2

    .line 428
    sput-boolean p1, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    return-void
.end method

.method public setBGSlotByRes(II)V
    .registers 3

    .line 660
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBGSlotByRes(II)V

    :cond_7
    return-void
.end method

.method public setCameraManagerCallback()V
    .registers 4

    .line 242
    invoke-static {}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->getInstance()Lcom/android/server/bgslotmanager/CameraKillModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 243
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->initCameraKillModeManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/DynamicHiddenApp;)V

    return-void
.end method

.method public setCurTrimProcesses(II)V
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz v0, :cond_c

    .line 560
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimCachedProcesses(I)V

    .line 561
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimEmptyProcesses(I)V

    :cond_c
    return-void
.end method

.method public setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .registers 2

    .line 475
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo p0, "ro.slmk.kpm_debug_trigger"

    .line 602
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 603
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    return v0

    :cond_11
    const-string/jumbo p0, "ro.slmk.kpm_policy_trigger"

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 607
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    return v0

    :cond_21
    const-string/jumbo p0, "ro.slmk.kpm_debug_cycles"

    .line 610
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    return v0

    :cond_31
    const-string/jumbo p0, "ro.slmk.kpm_boot_enable"

    .line 614
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 615
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    return v0

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method public setLmkdCameraKillBoost(III)V
    .registers 4

    .line 531
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    return-void
.end method

.method public setLmkdProtectFlagAndCameraProc(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BGProtectManager;->setLmkdProtectFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 248
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/DynamicHiddenApp;->addCamListIfIsCameraProcess(Ljava/lang/String;I)V

    return-void
.end method

.method public setTaskSnapshot(II)V
    .registers 3

    .line 656
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/bgslotmanager/BGSlotManager;->setTaskSnapshot(II)V

    :cond_7
    return-void
.end method

.method public updateEmptyRate(F)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_7

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->updateEmptyRate(F)V

    :cond_7
    return-void
.end method

.method public updateMaxCachedProcessesNum(IF)V
    .registers 3

    .line 551
    sput p1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 552
    sput p2, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 553
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_b

    .line 554
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNum()V

    :cond_b
    return-void
.end method

.method public updateMaxCachedProcessesNumFHA(I)V
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    if-eqz p0, :cond_7

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNumFHA(I)V

    :cond_7
    return-void
.end method

.method public updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public updateParamsFile()V
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_7

    .line 593
    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateParamsFile()V

    :cond_7
    return-void
.end method

.method public updateParamsIntent(Landroid/os/Bundle;)V
    .registers 2

    .line 596
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    if-eqz p0, :cond_7

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->updateParamsIntent(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public updatePickedProcessLists(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 463
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->updatePickedProcessLists(Ljava/util/List;)V

    return-void
.end method
