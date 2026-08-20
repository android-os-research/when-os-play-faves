.class public Lcom/android/server/wm/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;
    }
.end annotation


# static fields
.field public static AMP_ENABLE:Z = false

.field public static AMP_PERF_ENABLE:Z = false

.field public static AMP_RELAUNCH_RESUME_ON:Z = false

.field public static DEBUG:Z = false

.field public static DEBUG_TRACE:Z = false

.field public static final MSG_CFMS_EXEC_ACTIVITY:I = 0x5

.field public static final MSG_CFMS_HINT_AMS_HOME:I = 0x7

.field public static final MSG_CFMS_HINT_AMS_SWITCH:I = 0x6

.field public static final MSG_DHA_BOOSTER_ON:I = 0xe

.field public static final MSG_DISABLE_ACT_RESUME:I = 0x3

.field public static final MSG_DISABLE_ACT_START:I = 0x2

.field public static final MSG_DISABLE_APP_SWITCH:I = 0x1

.field public static final MSG_ENABLE_ACT_RESUME_TAIL:I = 0x4

.field public static final MSG_ENABLE_APP_SWITCH:I = 0x8

.field public static final MSG_OLAF_FREEZE_CLEAR:I = 0xa

.field public static final MSG_OLAF_FREEZE_ON_OFF:I = 0x9

.field public static final MSG_PERF_RESERVE_ON_OFF:I = 0xb

.field public static final MSG_PERF_TASK_BOOST:I = 0xc

.field public static final MSG_PERF_TASK_BOOST_END:I = 0xd

.field public static NOT_USER_BINARY:Z = false

.field public static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field public static final TABOOST_REL_STR:Ljava/lang/String; = "0"

.field public static final TABOOST_SYSFS_ID:I = 0x402610

.field public static final TABOOST_TIMEOUT:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static TIMEOUT_ACT_RESUME:I = 0x0

.field public static TIMEOUT_ACT_START:I = 0x0

.field public static TIMEOUT_APP_SWITCH:I = 0x0

.field public static TIMEOUT_PREV_RESUME:I = 0x0

.field public static final TOP_STATE_APP:I = 0x4

.field public static final TOP_STATE_HOME:I = 0x2

.field public static final TOP_STATE_INIT:I = 0x0

.field public static final TOP_STATE_IS_CREATING:I = 0x1

.field public static final TOP_STATE_RECENTS_APP:I = 0x3

.field public static final WALLPAPER_PROFILE:[Ljava/lang/String;

.field public static booster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public static curTopAct:Lcom/android/server/wm/ActivityRecord;

.field public static curTopState:I

.field public static focusPid:I

.field public static final gBlockedPkgs:[Ljava/lang/String;

.field public static final gHotLaunchBoosterPkgs:[Ljava/lang/String;

.field public static final gSystemuiPkgs:[Ljava/lang/String;

.field public static isChinaModel:Z

.field public static isPerfReserveSupport:Z

.field public static lastMultiWindowWorkTime:J

.field public static final mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

.field public static final mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

.field public static mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public static final mLockinit:Ljava/lang/Object;

.field public static pkgDecoder:Ljava/util/Base64$Decoder;

.field public static prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

.field public static final sLowPerformancePkgList:[Ljava/lang/String;

.field public static sLowPerformancePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isMultiWindowResume:Z

.field public lastHomeBoostedTime:J

.field public lastHomePressedTime:J

.field public mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsScreenOn:Z

.field public mIsTaskBoostExist:Z

.field public mLockActResume:Ljava/lang/Object;

.field public mLockActStart:Ljava/lang/Object;

.field public mLockAppLaunch:Ljava/lang/Object;

.field public mLockAppSwitch:Ljava/lang/Object;

.field public mLockHome:Ljava/lang/Object;

.field public mLockRelaunchResume:Ljava/lang/Object;

.field public mLockTail:Ljava/lang/Object;

.field public mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

.field public needSkipResume:Z

.field public rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

.field public rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

.field public rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

.field public rLastActHome:Lcom/android/server/wm/ActivityRecord;

.field public rLastActTail:Lcom/android/server/wm/ActivityRecord;

.field public rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsScreenOn(Lcom/android/server/wm/ActivityManagerPerformance;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputneedSkipResume(Lcom/android/server/wm/ActivityManagerPerformance;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$molafFreezer(Lcom/android/server/wm/ActivityManagerPerformance;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->olafFreezer(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperfReserveControl(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->perfReserveControl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBoosterActResume(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBoosterActStart(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBoosterAppSwitch(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBoosterTail(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtaskBoostAcq(Lcom/android/server/wm/ActivityManagerPerformance;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->taskBoostAcq(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtaskBoostRel(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->taskBoostRel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmDynamicHiddenApp()Lcom/android/server/am/DynamicHiddenApp;
    .registers 1

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmDynamicHiddenApp(Lcom/android/server/am/DynamicHiddenApp;)V
    .registers 1

    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 8

    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "false"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "true"

    if-eqz v0, :cond_22

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-nez v0, :cond_37

    const-string/jumbo v0, "sys.config.amp_debug"

    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    move v0, v3

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v2

    :goto_38
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "sys.config.amp_debug_trace"

    .line 47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    const-string/jumbo v0, "sys.config.amp_enable"

    .line 48
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    const-string/jumbo v0, "sys.config.amp_perf_enable"

    .line 49
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v0, "sys.config.amp_relaunch_resume"

    .line 50
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string v1, "1000"

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string v1, "2000"

    .line 52
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string v1, "3000"

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    .line 54
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    const-string/jumbo v0, "ro.csc.country_code"

    .line 55
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 57
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 59
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "Y29tLmFuZHJvaWQuY2hyb21l"

    .line 60
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    .line 64
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    .line 65
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "Y29tLm5obi5hbmRyb2lkLnNlYXJjaA=="

    .line 66
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x3

    const-string v7, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    .line 67
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "Y29tLnNhbXN1bmcuYW5kcm9pZC5lbWFpbC51aQ=="

    .line 68
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 69
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "Y29tLnNhbXN1bmcuZXZlcmdsYWRlcy52aWRlbw=="

    .line 70
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "Y29tLnNhbXN1bmcuYW5kcm9pZC52aWRlbw=="

    .line 71
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    .line 72
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    .line 73
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xa

    const-string v7, "Y29tLmJhaWR1LmFwcHNlYXJjaA=="

    .line 74
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xb

    const-string v7, "Y29tLnNpbmEud2VpYm8="

    .line 75
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xc

    const-string v7, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 76
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xd

    const-string v7, "Y29tLnR3aXR0ZXIuYW5kcm9pZA=="

    .line 77
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 81
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    .line 85
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 86
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->gHotLaunchBoosterPkgs:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    .line 90
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    .line 127
    sput-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    .line 160
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    .line 315
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, -0x1

    .line 316
    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->focusPid:I

    const-string v0, "MidgroundProcess"

    .line 1477
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->WALLPAPER_PROFILE:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Y29tLmFuZHJvaWQuc3lzdGVtdWk="

    .line 1490
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmRleHN5c3RlbXVp"

    .line 1491
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->gSystemuiPkgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V
    .registers 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 471
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 473
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    .line 474
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1035
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    const/4 v1, 0x0

    .line 1036
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x1

    .line 1319
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 1332
    new-instance v1, Lcom/android/server/wm/ActivityManagerPerformance$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityManagerPerformance$1;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 141
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 143
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    move p1, v0

    .line 144
    :goto_50
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    array-length v1, p2

    if-ge p1, v1, :cond_5f

    .line 145
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    aget-object p2, p2, p1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    .line 147
    :cond_5f
    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 p2, -0x2

    const-string v1, "AmpHandlerThread"

    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 149
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance p2, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 151
    new-instance p1, Ljava/io/File;

    const-string p2, "/proc/perf_reserve"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->registerReceiver()V

    .line 154
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string p2, "TASK_BOOST"

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_9c

    const p2, 0x402610

    .line 156
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    :cond_9c
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_194

    if-nez p1, :cond_6

    goto/16 :goto_194

    :cond_6
    const/4 v0, 0x0

    const/16 v1, 0x3d

    .line 1354
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 1355
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :cond_1a
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    const-string/jumbo v2, "true"

    if-eqz v1, :cond_147

    const-string v1, "_perf_enable="

    .line 1357
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1358
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1359
    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- AMP perf enable change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_44
    const-string v1, "_enable="

    .line 1362
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1363
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1364
    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- AMP enable change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p0, :cond_73

    if-eqz p1, :cond_70

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->registerReceiver()V

    goto :goto_73

    .line 1370
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->unregisterReceiver()V

    :cond_73
    :goto_73
    return-void

    :cond_74
    const-string v1, "_relaunch_resume="

    .line 1373
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1374
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1375
    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- AMP relaunch_resume change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_97
    const-string v1, "_to_"

    .line 1378
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 1381
    :try_start_9f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_a3} :catch_129

    const/16 v3, 0x64

    if-ge v1, v3, :cond_ad

    const-string p1, "-- AMP time cannot be under 100ms"

    .line 1387
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_ad
    const-string v3, "_app_switch="

    .line 1390
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 1391
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 1392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_cc
    const-string v3, "_act_start="

    .line 1394
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 1395
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 1396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_eb
    const-string v3, "_act_resume="

    .line 1398
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 1399
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 1400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_10a
    const-string v3, "_prev_resume="

    .line 1402
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1403
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 1404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_129
    move-exception p1

    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- AMP cannot change time. value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_147
    const-string v1, "_debug="

    .line 1409
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 1410
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- AMP debug change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    return-void

    :cond_16a
    const-string v1, "_debug_trace="

    .line 1414
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18d

    .line 1415
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- AMP debug_trace change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    sput-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    return-void

    .line 1420
    :cond_18d
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p1, :cond_194

    .line 1421
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    :cond_194
    :goto_194
    return-void
.end method

.method public static getAppLaunchHintIdByPkg(Ljava/lang/String;Z)I
    .registers 8

    const/16 v0, -0x3e7

    if-nez p0, :cond_5

    return v0

    .line 97
    :cond_5
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    .line 98
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 p0, 0x1b

    return p0

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 102
    :cond_1a
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    array-length v2, v1

    :goto_1d
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 103
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz p1, :cond_2c

    const/16 p0, 0x23

    goto :goto_2e

    :cond_2c
    const/16 p0, 0x1c

    :goto_2e
    return p0

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_32
    if-eqz p1, :cond_35

    return v0

    :cond_35
    const/16 p0, 0x20

    return p0
.end method

.method public static getBooster()Lcom/android/server/wm/ActivityManagerPerformance;
    .registers 1

    .line 173
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_7

    .line 174
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)Lcom/android/server/wm/ActivityManagerPerformance;
    .registers 4

    if-eqz p0, :cond_20

    if-nez p1, :cond_5

    goto :goto_20

    .line 165
    :cond_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_8
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v1, :cond_17

    .line 167
    new-instance v1, Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 168
    :cond_17
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isBlockedApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 345
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 346
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static isHotLaunchBoosterPkg(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 119
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gHotLaunchBoosterPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 120
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static isSystemui(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1498
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gSystemuiPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 1499
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static declared-synchronized notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v0

    .line 379
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_169

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_d

    goto/16 :goto_169

    :cond_d
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez p0, :cond_15

    move v5, v4

    goto :goto_26

    .line 383
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v2

    goto :goto_26

    .line 384
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v3

    .line 385
    :goto_26
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_da

    const-string v6, "notifyCurTopAct() activity changed"

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[Activity] prev: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", cur: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 388
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_c9

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[Process] prev: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_63

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_64

    :cond_63
    move-object v6, v7

    :goto_64
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cur: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_71

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_72

    :cond_71
    move-object v6, v7

    :goto_72
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 390
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[Package] prev: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_8d

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_8e

    :cond_8d
    move-object v6, v7

    :goto_8e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cur: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_9b

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_9c

    :cond_9b
    move-object v6, v7

    :goto_9c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[TOP_STATE] prev: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cur: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_c9
    const-string v8, "ActivityManagerPerformance"

    .line 393
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v6, :cond_da

    .line 395
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    :cond_da
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 398
    sput-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 399
    sget v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-eq v6, v5, :cond_152

    .line 401
    sput v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 402
    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v7, :cond_152

    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v7, :cond_152

    iget-boolean v8, v7, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v8, :cond_152

    const/4 v8, 0x0

    if-ne v5, v2, :cond_105

    .line 404
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_fe

    const-string v1, "ActivityManagerPerformance"

    const-string v2, "notifyCurTopAct() call setBoosterHome()"

    .line 405
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_fe
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v1, v4, v8, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V
    :try_end_103
    .catchall {:try_start_3 .. :try_end_103} :catchall_16b

    .line 407
    monitor-exit v0

    return-void

    :cond_105
    if-ne v6, v1, :cond_152

    if-eq v5, v3, :cond_10b

    if-ne v5, v4, :cond_152

    .line 411
    :cond_10b
    :try_start_10b
    iget-object v1, v7, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_11d

    if-eq v1, p0, :cond_152

    if-eqz p0, :cond_11d

    .line 412
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    .line 414
    :cond_11d
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v2, :cond_136

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v2, v3, :cond_136

    .line 415
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 416
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_134

    const-string p0, "ActivityManagerPerformance"

    const-string v1, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    .line 417
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catch Ljava/lang/NullPointerException; {:try_start_10b .. :try_end_134} :catch_148
    .catchall {:try_start_10b .. :try_end_134} :catchall_16b

    .line 418
    :cond_134
    monitor-exit v0

    return-void

    .line 420
    :cond_136
    :try_start_136
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_141

    const-string v1, "ActivityManagerPerformance"

    const-string v2, "notifyCurTopAct() call setBoosterAppSwitch()"

    .line 421
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_141
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v1, v4, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_146
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_146} :catch_148
    .catchall {:try_start_136 .. :try_end_146} :catchall_16b

    .line 424
    monitor-exit v0

    return-void

    :catch_148
    move-exception p0

    .line 427
    :try_start_149
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 428
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_150
    .catchall {:try_start_149 .. :try_end_150} :catchall_16b

    .line 429
    monitor-exit v0

    return-void

    .line 435
    :cond_152
    :try_start_152
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p0, :cond_167

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_167

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    if-eqz v2, :cond_167

    .line 436
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setLowPower(Z)V
    :try_end_167
    .catchall {:try_start_152 .. :try_end_167} :catchall_16b

    .line 438
    :cond_167
    monitor-exit v0

    return-void

    .line 380
    :cond_169
    :goto_169
    monitor-exit v0

    return-void

    :catchall_16b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized notifyMultiWindowChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v0

    .line 319
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_5e

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_c

    goto :goto_5e

    .line 322
    :cond_c
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_41

    const-string v1, "notifyMultiWindowChanged() focus changed"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[Activity] prev: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cur: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerPerformance"

    .line 325
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_41

    .line 327
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :cond_41
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p0

    .line 335
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->focusPid:I

    if-eq v1, p0, :cond_5c

    .line 336
    sput p0, Lcom/android/server/wm/ActivityManagerPerformance;->focusPid:I

    const-string v1, "MULTIWINDOW_FOCUS_PID"

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_60

    .line 339
    :cond_5c
    monitor-exit v0

    return-void

    .line 320
    :cond_5e
    :goto_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static topStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "TOP_STATE_APP"

    return-object p0

    :cond_23
    const-string p0, "TOP_STATE_RECENTS_APP"

    return-object p0

    :cond_26
    const-string p0, "TOP_STATE_HOME"

    return-object p0

    :cond_29
    const-string p0, "TOP_STATE_IS_CREATING"

    return-object p0

    :cond_2c
    const-string p0, "TOP_STATE_INIT"

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1515
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    if-nez v0, :cond_7

    const-string p0, ""

    return-object p0

    .line 1518
    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 1519
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static x([I)Ljava/lang/String;
    .registers 4

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1508
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 1509
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1511
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBoostDisabledByFold()Z
    .registers 2

    .line 368
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 371
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    .line 1427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getCurBoostInfoStr()Ljava/lang/String;
    .registers 6

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAMP_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AMP_PERF_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_5b

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 454
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[curTopState] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_b1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b2

    :cond_b1
    move-object v0, v2

    :goto_b2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_dc

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_dd

    :cond_dc
    move-object v1, v2

    :goto_dd
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_103

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_104

    :cond_103
    move-object v1, v2

    :goto_104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[rLastActTail] procName: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_12a

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_12b

    :cond_12a
    move-object v1, v2

    :goto_12b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[rLastActHome] procName: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_151

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_152

    :cond_151
    move-object v1, v2

    :goto_152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_177

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_177
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isHomeKeyPressed()V
    .registers 4

    .line 1305
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string v0, "ActivityManagerPerformance"

    const-string v1, "isHomeKeyPressed() called"

    .line 1307
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_2f

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1313
    :cond_2f
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_3e

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v0, :cond_38

    goto :goto_3e

    :cond_38
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1315
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final isMultiWindowScenario(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_d

    .line 1465
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eqz p0, :cond_d

    .line 1466
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_35

    :cond_d
    if-eqz p2, :cond_16

    .line 1467
    iget-boolean p0, p2, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eqz p0, :cond_16

    .line 1468
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_35

    :cond_16
    const-string p0, "appsedge"

    if-eqz p1, :cond_27

    .line 1469
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz p1, :cond_27

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1470
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_35

    :cond_27
    if-eqz p2, :cond_35

    .line 1471
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz p1, :cond_35

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 1472
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    .line 1473
    :cond_35
    :goto_35
    sget-wide p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    cmp-long p0, v0, p0

    if-gez p0, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0
.end method

.method public final isSpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 357
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const-string p0, "com.samsung.speg"

    .line 358
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping boost of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPEG"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_26
    return v0
.end method

.method public notifyPidOfWallpaper(IILjava/lang/String;Z)V
    .registers 5

    .line 1479
    invoke-static {p3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSystemui(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    if-eqz p4, :cond_e

    .line 1485
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->WALLPAPER_PROFILE:[Ljava/lang/String;

    invoke-static {p1, p2, p0}, Landroid/os/Process;->requestProcessProfile(II[Ljava/lang/String;)Z

    :cond_e
    return-void
.end method

.method public notifyTaskBoost(I)V
    .registers 3

    .line 375
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final olafFreezer(Z)V
    .registers 2

    .line 998
    invoke-static {p1}, Landroid/os/Process;->doSomethingOlaf(Z)V

    return-void
.end method

.method public onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    .line 1253
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v1, "ActivityManagerPerformance"

    if-eqz v0, :cond_54

    if-eqz p1, :cond_b

    .line 1254
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1255
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityRelaunchLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), andResume: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_54

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1262
    :cond_54
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v0, :cond_59

    return-void

    .line 1264
    :cond_59
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v0, :cond_67

    .line 1265
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_66

    const-string p0, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    .line 1266
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-void

    :cond_67
    if-eqz p2, :cond_6c

    .line 1270
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/wm/ActivityRecord;)V

    :cond_6c
    return-void
.end method

.method public onActivityResumeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 1138
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v1, "ActivityManagerPerformance"

    if-eqz v0, :cond_4d

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumeLocked() r: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_4d

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1145
    :cond_4d
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_52

    return-void

    .line 1147
    :cond_52
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-void

    .line 1150
    :cond_5d
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    return-void

    .line 1153
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    .line 1154
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1155
    :cond_6d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v0, :cond_7b

    .line 1156
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_7a

    const-string p0, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    .line 1157
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return-void

    .line 1160
    :cond_7b
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v0, :cond_8b

    .line 1161
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_88

    const-string p1, "onActivityResumeLocked() skipped. needSkipResume is true"

    .line 1162
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_88
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    return-void

    .line 1166
    :cond_8b
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string v3, "onActivityResumeLocked() skipped. already boosted "

    const/4 v4, 0x1

    if-nez v0, :cond_c6

    .line 1168
    :try_start_92
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_a8

    if-eqz v0, :cond_a3

    .line 1169
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_92 .. :try_end_a0} :catch_c1

    if-eqz v0, :cond_a3

    goto :goto_a8

    .line 1178
    :cond_a3
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_1d2

    .line 1170
    :cond_a8
    :goto_a8
    :try_start_a8
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_c0

    .line 1171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_c0} :catch_c1

    :cond_c0
    return-void

    :catch_c1
    move-exception p0

    .line 1175
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    .line 1180
    :cond_c6
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1181
    invoke-virtual {p0, v2, v2, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 1184
    :cond_d0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1186
    :try_start_d6
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_fb

    if-eq v0, p1, :cond_fb

    if-eqz v2, :cond_ea

    .line 1187
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1188
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    :cond_ea
    if-eqz v0, :cond_f7

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1189
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_d6 .. :try_end_f4} :catch_114

    if-eqz v0, :cond_f7

    goto :goto_fb

    .line 1198
    :cond_f7
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 1190
    :cond_fb
    :goto_fb
    :try_start_fb
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_113

    .line 1191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/NullPointerException; {:try_start_fb .. :try_end_113} :catch_114

    :cond_113
    return-void

    :catch_114
    move-exception p0

    .line 1195
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    .line 1201
    :cond_119
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_17b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 1203
    :try_start_127
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eq v5, p1, :cond_15d

    if-eq v2, p1, :cond_15d

    if-eq v0, p1, :cond_15d

    if-eqz v5, :cond_13f

    .line 1204
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1205
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15d

    :cond_13f
    if-eqz v2, :cond_14b

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1206
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    :cond_14b
    if-eqz v0, :cond_158

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1207
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_155
    .catch Ljava/lang/NullPointerException; {:try_start_127 .. :try_end_155} :catch_176

    if-eqz v0, :cond_158

    goto :goto_15d

    .line 1216
    :cond_158
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_1d2

    .line 1208
    :cond_15d
    :goto_15d
    :try_start_15d
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_175

    .line 1209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catch Ljava/lang/NullPointerException; {:try_start_15d .. :try_end_175} :catch_176

    :cond_175
    return-void

    :catch_176
    move-exception p0

    .line 1213
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    .line 1218
    :cond_17b
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1b8

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1b8

    .line 1220
    :try_start_183
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_19a

    if-eqz v0, :cond_194

    .line 1221
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_191
    .catch Ljava/lang/NullPointerException; {:try_start_183 .. :try_end_191} :catch_1b3

    if-eqz v0, :cond_194

    goto :goto_19a

    .line 1230
    :cond_194
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1231
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1d2

    .line 1222
    :cond_19a
    :goto_19a
    :try_start_19a
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_1b2

    .line 1223
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/lang/NullPointerException; {:try_start_19a .. :try_end_1b2} :catch_1b3

    :cond_1b2
    return-void

    :catch_1b3
    move-exception p0

    .line 1227
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1b8
    if-eq v0, p1, :cond_1d3

    if-eqz v0, :cond_1c7

    .line 1235
    :try_start_1bc
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_1bc .. :try_end_1c4} :catch_1ec

    if-eqz v0, :cond_1c7

    goto :goto_1d3

    .line 1244
    :cond_1c7
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1d2
    return-void

    .line 1236
    :cond_1d3
    :goto_1d3
    :try_start_1d3
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_1eb

    .line 1237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catch Ljava/lang/NullPointerException; {:try_start_1d3 .. :try_end_1eb} :catch_1ec

    :cond_1eb
    return-void

    :catch_1ec
    move-exception p0

    .line 1241
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 1068
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v1, "ActivityManagerPerformance"

    if-eqz v0, :cond_4d

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStartLocked() r: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_4d

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStartLocked() Trace\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1075
    :cond_4d
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_52

    return-void

    .line 1077
    :cond_52
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-void

    .line 1080
    :cond_5d
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    return-void

    .line 1083
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    .line 1084
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1085
    :cond_6d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v0, :cond_7b

    .line 1086
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_7a

    const-string p0, "onActivityStartLocked() skipped. mIsScreenOn: false"

    .line 1087
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return-void

    .line 1090
    :cond_7b
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v0, :cond_81

    .line 1091
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 1092
    :cond_81
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v3, 0x1

    if-nez v0, :cond_8a

    .line 1093
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 1096
    :cond_8a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1097
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 1100
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1101
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 1104
    :cond_9e
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "onActivityStartLocked() skipped. already boosted "

    if-eqz v0, :cond_f1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1106
    :try_start_ae
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_d3

    if-eq v4, p1, :cond_d3

    if-eqz v0, :cond_c2

    .line 1107
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1108
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    :cond_c2
    if-eqz v4, :cond_cf

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1109
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_cc
    .catch Ljava/lang/NullPointerException; {:try_start_ae .. :try_end_cc} :catch_ec

    if-eqz v0, :cond_cf

    goto :goto_d3

    .line 1118
    :cond_cf
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_10d

    .line 1110
    :cond_d3
    :goto_d3
    :try_start_d3
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_eb

    .line 1111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_eb} :catch_ec

    :cond_eb
    return-void

    :catch_ec
    move-exception p0

    .line 1115
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    .line 1121
    :cond_f1
    :try_start_f1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_10e

    if-eqz v0, :cond_102

    .line 1122
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ff
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_ff} :catch_127

    if-eqz v0, :cond_102

    goto :goto_10e

    .line 1131
    :cond_102
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_10d
    return-void

    .line 1123
    :cond_10e
    :goto_10e
    :try_start_10e
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_126

    .line 1124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/NullPointerException; {:try_start_10e .. :try_end_126} :catch_127

    :cond_126
    return-void

    :catch_127
    move-exception p0

    .line 1128
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1274
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_5f

    const-string v0, "ActivityManagerPerformance"

    if-nez p1, :cond_e

    const-string p0, "onActivityVisibleLocked() ActivityRecord is Null"

    .line 1277
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1279
    :cond_e
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_18

    const-string v1, "onActivityVisibleLocked() ActivityRecord\'s ProcessName is Null"

    .line 1280
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1282
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityVisibleLocked() r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :goto_3b
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_5f

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1289
    :cond_5f
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_64

    return-void

    .line 1291
    :cond_64
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 1292
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1293
    :cond_6b
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_72

    .line 1294
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1295
    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_79

    .line 1296
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1297
    :cond_79
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8e

    if-eqz p1, :cond_8e

    .line 1298
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1299
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    :cond_8e
    return-void
.end method

.method public onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1013
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 1016
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 1019
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2a

    .line 1021
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "AMS_APP_LAUNCH"

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 1023
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_3e

    .line 1024
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->getAppLaunchHintIdByPkg(Ljava/lang/String;Z)I

    move-result p1

    .line 1025
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1026
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 1028
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final perfReserveControl(Ljava/lang/String;)V
    .registers 3

    .line 1004
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz v0, :cond_9

    const-string v0, "/proc/perf_reserve"

    .line 1005
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final registerReceiver()V
    .registers 3

    .line 1322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 1323
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1324
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 482
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 483
    :goto_7
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_82

    if-eqz p2, :cond_10

    .line 484
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v2, v0

    .line 487
    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_1c

    .line 488
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    move-exception v3

    .line 491
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1c
    move-object v3, v0

    :goto_1d
    const-string v4, "ActivityManagerPerformance"

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterActResume() onoff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), curBoost: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_82

    const-string v2, "ActivityManagerPerformance"

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterActResume() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    :cond_82
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_92

    .line 501
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_ACT_RESUME"

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 502
    :cond_92
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_9f

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    .line 504
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9f
    const/4 v3, 0x3

    if-eqz p1, :cond_12b

    if-eqz p2, :cond_ad

    .line 509
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_ad

    const/16 p1, 0x1f4

    goto :goto_af

    :cond_ad
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 510
    :goto_af
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    :try_start_b4
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_e5

    .line 513
    :try_start_b7
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 514
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 515
    monitor-exit v4
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_e2

    :try_start_bd
    const-string v2, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() ACT_RESUME"

    .line 516
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v3, p1

    invoke-virtual {v2, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 521
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e0} :catch_e5

    goto/16 :goto_17b

    :catchall_e2
    move-exception p1

    .line 515
    :try_start_e3
    monitor-exit v4
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw p1
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e5} :catch_e5

    :catch_e5
    move-exception p1

    .line 525
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_ec

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_ec
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() ACT_RESUME failed. stop boosting"

    .line 526
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_121

    const-string p2, "ActivityManagerPerformance"

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMP_acquire() ACT_RESUME failed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] e: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    const/4 p2, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 530
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17b

    .line 534
    :cond_12b
    :try_start_12b
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter p1
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_14a

    .line 535
    :try_start_12e
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_134

    .line 536
    monitor-exit p1

    return-void

    .line 537
    :cond_134
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 538
    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 539
    monitor-exit p1
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_147

    :try_start_13a
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_RESUME"

    .line 540
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_146} :catch_14a

    goto :goto_17b

    :catchall_147
    move-exception p2

    .line 539
    :try_start_148
    monitor-exit p1
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    :try_start_149
    throw p2
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14a} :catch_14a

    :catch_14a
    move-exception p1

    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_RESUME failed"

    .line 543
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_178

    const-string p2, "ActivityManagerPerformance"

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17b
    return-void
.end method

.method public final setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 554
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    if-eqz p2, :cond_a

    .line 555
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 558
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_16

    .line 559
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_16
    move-object v2, v1

    :goto_17
    const-string v3, "ActivityManagerPerformance"

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterActStart() onoff: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), curBoost: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_7c

    const-string v0, "ActivityManagerPerformance"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterActStart() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v0

    if-eqz v0, :cond_91

    if-eqz p1, :cond_91

    .line 571
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_90

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterActStart() skipped. Device folded : true"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void

    .line 576
    :cond_91
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_106

    if-eqz p2, :cond_106

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_106

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_106

    const-string v3, "LuckyMoneyReceiveUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    if-eqz p1, :cond_105

    .line 578
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_fe

    .line 579
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string p2, "LuckyMoneyBooster"

    const/16 v0, 0xc

    invoke-static {p1, p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_e4

    .line 581
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object p1

    if-eqz p1, :cond_ca

    .line 583
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget p1, p1, v2

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_fe

    :cond_ca
    const-string p0, "ActivityManagerPerformance"

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterActStart() skipped. Hongbao getSupportedFrequency() failed. AMP_PERF_ENABLE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e4
    const-string p0, "ActivityManagerPerformance"

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterActStart() skipped. Hongbao SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_fe
    :goto_fe
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_105
    return-void

    .line 598
    :cond_106
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/16 v3, 0x15

    if-eqz v0, :cond_11b

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_11b

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_ACT_START"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_12b

    :cond_11b
    if-nez v0, :cond_12b

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_12b

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_RESUME"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 602
    :cond_12b
    :goto_12b
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_134

    :cond_132
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    :goto_134
    if-nez v0, :cond_150

    const-string p0, "ActivityManagerPerformance"

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_150
    const/4 v3, 0x2

    if-eqz p1, :cond_1d2

    if-eqz p2, :cond_15e

    .line 609
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_15e

    const/16 p1, 0x1f4

    goto :goto_167

    :cond_15e
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz p1, :cond_165

    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_167

    :cond_165
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 610
    :goto_167
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    :try_start_16c
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v4
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_18d

    .line 613
    :try_start_16f
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 614
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 615
    monitor-exit v4
    :try_end_175
    .catchall {:try_start_16f .. :try_end_175} :catchall_18a

    :try_start_175
    const-string v0, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() ACT_START"

    .line 616
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v0, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v3, p1

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_188} :catch_18d

    goto/16 :goto_225

    :catchall_18a
    move-exception p1

    .line 615
    :try_start_18b
    monitor-exit v4
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    :try_start_18c
    throw p1
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_18d} :catch_18d

    :catch_18d
    move-exception p1

    .line 620
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_194

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_194
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() ACT_START failed. stop boosting"

    .line 621
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_1c9

    const-string p2, "ActivityManagerPerformance"

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMP_acquire() ACT_START failed. ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_1c9
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 625
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_225

    .line 628
    :cond_1d2
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 630
    :try_start_1d5
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1d8} :catch_1f4

    .line 631
    :try_start_1d8
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_1de

    .line 632
    monitor-exit p1

    return-void

    .line 633
    :cond_1de
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 634
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 635
    monitor-exit p1
    :try_end_1e4
    .catchall {:try_start_1d8 .. :try_end_1e4} :catchall_1f1

    :try_start_1e4
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_START"

    .line 636
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f0} :catch_1f4

    goto :goto_225

    :catchall_1f1
    move-exception p2

    .line 635
    :try_start_1f2
    monitor-exit p1
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f1

    :try_start_1f3
    throw p2
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f4} :catch_1f4

    :catch_1f4
    move-exception p1

    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_START failed"

    .line 639
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_222

    const-string p2, "ActivityManagerPerformance"

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_225
    return-void
.end method

.method public final setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 649
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 650
    :goto_7
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object v2, v0

    .line 651
    :goto_f
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_8a

    if-eqz p2, :cond_18

    .line 652
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v3, v0

    .line 655
    :goto_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_24

    .line 656
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    move-exception v4

    .line 659
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_24
    move-object v4, v0

    :goto_25
    const-string v5, "ActivityManagerPerformance"

    .line 661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), curBoost: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_8a

    const-string v3, "ActivityManagerPerformance"

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8a
    if-eqz p1, :cond_b0

    if-eqz v1, :cond_b0

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 669
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_af

    const-string p0, "ActivityManagerPerformance"

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterAppSwitch() skipped. Background activity start on abnormal app : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    return-void

    .line 673
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v2

    if-eqz v2, :cond_c5

    if-eqz p1, :cond_c5

    .line 674
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_c4

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. Device folded : true"

    .line 675
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    return-void

    .line 679
    :cond_c5
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_d5

    .line 680
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_APP_SWITCH"

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 681
    :cond_d5
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_e2

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    .line 683
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e2
    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eqz p1, :cond_1ca

    if-eqz p2, :cond_f4

    .line 688
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_f4

    const/16 p1, 0x1f4

    goto :goto_f6

    :cond_f4
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 689
    :goto_f6
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    :try_start_fb
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_183

    .line 692
    :try_start_fe
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 693
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 694
    sput-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    .line 695
    monitor-exit v6
    :try_end_106
    .catchall {:try_start_fe .. :try_end_106} :catchall_180

    :try_start_106
    const-string v2, "ActivityManagerPerformance"

    const-string v6, "AMP_acquire() APP_SWITCH"

    .line 696
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v2, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 698
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v6, p1

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 699
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 713
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0xdac

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 716
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p1

    if-eqz p1, :cond_164

    .line 718
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowScenario(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_164

    .line 720
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1, p2}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;I)V

    .line 723
    :cond_164
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_249

    .line 727
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "120"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_17e} :catch_183

    goto/16 :goto_249

    :catchall_180
    move-exception p1

    .line 695
    :try_start_181
    monitor-exit v6
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    :try_start_182
    throw p1
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_183} :catch_183

    :catch_183
    move-exception p1

    .line 730
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_18a

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_18a
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() APP_SWITCH failed. stop boosting"

    .line 731
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_1bf

    const-string p2, "ActivityManagerPerformance"

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMP_acquire() APP_SWITCH failed. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] e: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bf
    const/4 p2, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 735
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_249

    .line 738
    :cond_1ca
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 740
    :try_start_1cd
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_217

    .line 741
    :try_start_1d0
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_1d6

    .line 742
    monitor-exit p1

    return-void

    .line 743
    :cond_1d6
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 744
    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 745
    monitor-exit p1
    :try_end_1dc
    .catchall {:try_start_1d0 .. :try_end_1dc} :catchall_214

    :try_start_1dc
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() APP_SWITCH"

    .line 746
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f9

    .line 752
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 754
    :cond_1f9
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_249

    .line 758
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "0"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_213} :catch_217

    goto :goto_249

    :catchall_214
    move-exception p2

    .line 745
    :try_start_215
    monitor-exit p1
    :try_end_216
    .catchall {:try_start_215 .. :try_end_216} :catchall_214

    :try_start_216
    throw p2
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_217} :catch_217

    :catch_217
    move-exception p1

    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() APP_SWITCH failed"

    .line 761
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_246

    const-string p2, "ActivityManagerPerformance"

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_246
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_249
    :goto_249
    return-void
.end method

.method public final setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 829
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 830
    :goto_7
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_7b

    if-eqz p3, :cond_f

    .line 831
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_f
    const-string v2, "ActivityManagerPerformance"

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterHome() fastBoost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", startAct: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curTopState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), pkgName : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_7b

    const-string v0, "ActivityManagerPerformance"

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBoosterHome() Trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 838
    :cond_7b
    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-nez v0, :cond_88

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. Method is called by non-system_server"

    .line 839
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 842
    :cond_88
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v0, :cond_99

    .line 843
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_98

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. mIsScreenOn: false"

    .line 844
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return-void

    .line 847
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 848
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_ab

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. Device folded : true"

    .line 849
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return-void

    .line 852
    :cond_ac
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    const-wide/16 v3, 0xc8

    if-eqz p1, :cond_106

    if-nez p3, :cond_ba

    .line 855
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    goto :goto_cb

    .line 856
    :cond_ba
    iget-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long p1, v0, p1

    cmp-long p1, p1, v3

    if-ltz p1, :cond_f3

    iget-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long p1, v0, p1

    cmp-long p1, p1, v3

    if-gez p1, :cond_cb

    goto :goto_f3

    :cond_cb
    :goto_cb
    if-nez p3, :cond_1b9

    .line 863
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p1, v2, :cond_1b9

    .line 864
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_f2

    const-string p0, "ActivityManagerPerformance"

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {p2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    return-void

    .line 857
    :cond_f3
    :goto_f3
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, p3, :cond_f9

    .line 858
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 859
    :cond_f9
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_105

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    .line 860
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    return-void

    .line 869
    :cond_106
    iget-wide v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v5, v0, v5

    cmp-long p1, v5, v3

    if-ltz p1, :cond_21e

    iget-wide v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v5, v0, v5

    cmp-long p1, v5, v3

    if-gez p1, :cond_118

    goto/16 :goto_21e

    .line 876
    :cond_118
    sget p1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p1, v2, :cond_1b9

    .line 878
    :try_start_11c
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_15c

    if-eq p1, p3, :cond_13e

    if-eq v0, p3, :cond_13e

    if-eqz p1, :cond_132

    .line 879
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 880
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13e

    :cond_132
    if-eqz v0, :cond_15c

    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 881
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 882
    :cond_13e
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_15b

    const-string p0, "ActivityManagerPerformance"

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterHome() skipped. already boosted "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/NullPointerException; {:try_start_11c .. :try_end_15b} :catch_1b4

    :cond_15b
    return-void

    :cond_15c
    const/4 p1, 0x1

    if-eqz p2, :cond_16f

    .line 891
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_16b

    const-string p2, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActStart()"

    .line 892
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_16b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1ae

    .line 896
    :cond_16f
    :try_start_16f
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_19f

    if-eq p2, p3, :cond_181

    if-eqz p2, :cond_19f

    .line 897
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19f

    .line 898
    :cond_181
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_19e

    const-string p0, "ActivityManagerPerformance"

    .line 899
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBoosterHome() skipped. already boosted "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catch Ljava/lang/NullPointerException; {:try_start_16f .. :try_end_19e} :catch_1af

    :cond_19e
    return-void

    .line 906
    :cond_19f
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_1ab

    const-string p2, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActResume()"

    .line 907
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_1ab
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    :goto_1ae
    return-void

    :catch_1af
    move-exception p0

    .line 903
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :catch_1b4
    move-exception p0

    .line 887
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    .line 914
    :cond_1b9
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_1c9

    .line 915
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string p2, "AMS_APP_HOME"

    const/16 v2, 0x15

    invoke-static {p1, p2, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 916
    :cond_1c9
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_1d6

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    .line 918
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 921
    :cond_1d6
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 923
    :try_start_1d8
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1db} :catch_1ec

    .line 924
    :try_start_1db
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 925
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 926
    monitor-exit p2
    :try_end_1e1
    .catchall {:try_start_1db .. :try_end_1e1} :catchall_1e9

    :try_start_1e1
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() HOME"

    .line 927
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e8} :catch_1ec

    goto :goto_21d

    :catchall_1e9
    move-exception p1

    .line 926
    :try_start_1ea
    monitor-exit p2
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1e9

    :try_start_1eb
    throw p1
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ec} :catch_1ec

    :catch_1ec
    move-exception p1

    const-string p2, "ActivityManagerPerformance"

    const-string p3, "AMP_acquire() HOME failed"

    .line 929
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_21a

    const-string p2, "ActivityManagerPerformance"

    .line 931
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AMP_acquire() HOME failed. e: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_21a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21d
    return-void

    .line 870
    :cond_21e
    :goto_21e
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, p3, :cond_226

    if-eqz p3, :cond_226

    .line 871
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 872
    :cond_226
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_232

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    .line 873
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_232
    return-void
.end method

.method public final setBoosterRelaunchResume(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 939
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_55

    if-eqz p1, :cond_9

    .line 940
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "ActivityManagerPerformance"

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterRelaunchResume() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_55

    const-string v0, "ActivityManagerPerformance"

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 948
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_65

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v1, "AMS_RELAUNCH_RESUME"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 950
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_72

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    .line 952
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 957
    :cond_72
    :try_start_72
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_86

    .line 958
    :try_start_75
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 959
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    .line 960
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_83

    :try_start_7b
    const-string p1, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() RELAUNCH_RESUME"

    .line 961
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_86

    goto :goto_b7

    :catchall_83
    move-exception p1

    .line 960
    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_86

    :catch_86
    move-exception p1

    const-string v0, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() RELAUNCH_RESUME failed"

    .line 963
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_b4

    const-string v0, "ActivityManagerPerformance"

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_b4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b7
    return-void
.end method

.method public final setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 771
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_64

    if-eqz p2, :cond_9

    .line 772
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "ActivityManagerPerformance"

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterTail() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1c

    const-string v3, "AppSwitch"

    goto :goto_1e

    :cond_1c
    const-string v3, "ActStart"

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_64

    const-string v0, "ActivityManagerPerformance"

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBoosterTail() Trace\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 780
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_76

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. Device folded : true"

    .line 781
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void

    .line 784
    :cond_77
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v0, :cond_88

    .line 785
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_87

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. mIsScreenOn: false"

    .line 786
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void

    :cond_88
    if-eqz p1, :cond_8e

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_94

    :cond_8e
    if-nez p1, :cond_bc

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_bc

    .line 790
    :cond_94
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_bb

    const-string p0, "ActivityManagerPerformance"

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBoosterTail() skipped. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_aa

    const-string p1, "AppSwitch"

    goto :goto_ac

    :cond_aa
    const-string p1, "ActStart"

    :goto_ac
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    return-void

    .line 795
    :cond_bc
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v0, 0x15

    if-nez p1, :cond_cc

    .line 796
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v1, "AMS_RESUME_TAIL"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 797
    :cond_cc
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_da

    .line 798
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v1, "AMS_ACT_LAZY"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 800
    :cond_da
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_e7

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    .line 802
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 806
    :cond_e7
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_f4

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    .line 808
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 813
    :cond_f4
    :try_start_f4
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_10b

    .line 814
    :try_start_f7
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 815
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 816
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    .line 817
    monitor-exit v1
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_108

    :try_start_100
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() TAIL"

    .line 818
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_107} :catch_10b

    goto :goto_13c

    :catchall_108
    move-exception p1

    .line 817
    :try_start_109
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    :try_start_10a
    throw p1
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10b} :catch_10b

    :catch_10b
    move-exception p1

    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() TAIL failed"

    .line 820
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_139

    const-string p2, "ActivityManagerPerformance"

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13c
    return-void
.end method

.method public final setLowPower(Z)V
    .registers 5

    .line 1433
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_f

    const/16 v2, 0x1d

    .line 1436
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_13

    :cond_f
    const/4 v2, 0x4

    .line 1438
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1441
    :cond_13
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_43

    .line 1442
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v1

    .line 1443
    :try_start_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_23

    const/16 v2, 0x1e

    .line 1445
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_27

    :cond_23
    const/4 v2, 0x3

    .line 1447
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1450
    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_40

    .line 1451
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v0

    .line 1452
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_3b

    if-eqz p1, :cond_37

    const/16 p1, 0x1f

    .line 1454
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_3b

    :cond_37
    const/4 p1, 0x5

    .line 1456
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1459
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_3d

    throw p0

    :catchall_40
    move-exception p0

    .line 1450
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0

    :catchall_43
    move-exception p0

    .line 1441
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final taskBoostAcq(I)V
    .registers 7

    .line 1040
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    if-eqz v0, :cond_19

    .line 1041
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/high16 v4, 0x40c80000    # 6.25f

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 1043
    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1049
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    if-eqz v0, :cond_41

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    const v2, 0x402610

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 1055
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1056
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_41
    return-void
.end method

.method public final taskBoostRel()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    if-eqz p0, :cond_10

    const p0, 0x402610

    const-string v1, "0"

    .line 1062
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final unregisterReceiver()V
    .registers 3

    .line 1328
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 1329
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void
.end method

.method public writeSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string p0, "e = "

    .line 972
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_92

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_92

    if-nez p2, :cond_19

    goto/16 :goto_92

    :cond_19
    const/4 v0, 0x0

    .line 980
    :try_start_1a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_4f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4d

    :try_start_1f
    const-string p1, "UTF-8"

    .line 981
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 982
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_4a
    .catchall {:try_start_1f .. :try_end_2b} :catchall_47

    .line 988
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_73

    :catch_2f
    move-exception p1

    .line 990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_35
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :catchall_47
    move-exception p1

    move-object v0, v1

    goto :goto_74

    :catch_4a
    move-exception p1

    move-object v0, v1

    goto :goto_50

    :catchall_4d
    move-exception p1

    goto :goto_74

    :catch_4f
    move-exception p1

    .line 984
    :goto_50
    :try_start_50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_4d

    if-eqz v0, :cond_73

    .line 988
    :try_start_68
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_73

    :catch_6c
    move-exception p1

    .line 990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_35

    :cond_73
    :goto_73
    return-void

    :goto_74
    if-eqz v0, :cond_91

    .line 988
    :try_start_76
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_91

    :catch_7a
    move-exception p2

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_91
    :goto_91
    throw p1

    .line 974
    :cond_92
    :goto_92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "writeSysfs:: path() : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exist() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " canWrite() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
