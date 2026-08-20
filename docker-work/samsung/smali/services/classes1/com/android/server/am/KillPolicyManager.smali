.class public Lcom/android/server/am/KillPolicyManager;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;,
        Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;,
        Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;,
        Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;,
        Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;,
        Lcom/android/server/am/KillPolicyManager$SwappinessController;,
        Lcom/android/server/am/KillPolicyManager$PsiFile;,
        Lcom/android/server/am/KillPolicyManager$PsiDataType;,
        Lcom/android/server/am/KillPolicyManager$PsiFileType;,
        Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;,
        Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;,
        Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;,
        Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;,
        Lcom/android/server/am/KillPolicyManager$LmkdCounter;,
        Lcom/android/server/am/KillPolicyManager$LmkdCountReader;,
        Lcom/android/server/am/KillPolicyManager$KpmRaw;,
        Lcom/android/server/am/KillPolicyManager$ProcMemInfo;,
        Lcom/android/server/am/KillPolicyManager$SCPMReceiver;,
        Lcom/android/server/am/KillPolicyManager$KpmClassLazy;,
        Lcom/android/server/am/KillPolicyManager$LmkdCount;,
        Lcom/android/server/am/KillPolicyManager$LmkdState;,
        Lcom/android/server/am/KillPolicyManager$KpmState;,
        Lcom/android/server/am/KillPolicyManager$AutoRestartParameterReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DAILY_RANDOM_SAMPLE_REPORT:Ljava/lang/String; = "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.kpm"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static DEBUG_SCPM:Z = false

.field public static final DEFAULT_AUTO_RESTART_COMPACT_TRIGGER_SIZE:I = 0x12c

.field public static final DEFAULT_AUTO_RESTART_MIN_TRIGGER_SIZE:I = 0xa

.field public static final DEFAULT_AUTO_RESTART_NATIVE_FLOOD_RATIO:I = 0x1e

.field public static final DEFAULT_AUTO_RESTART_NEVER_COLLECT_WITHIN:I = 0xc

.field public static final DEFAULT_AUTO_RESTART_SYSPERS_FLOOD_RATIO:I = 0x1e

.field public static final DEFAULT_CYCLE_APP_COUNT:I = 0x32

.field public static final DEFAULT_KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z = true

.field public static final EXTRA_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/lang/String; = "COMPACT_TRIGGER_SIZE"

.field public static final EXTRA_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/lang/String; = "MIN_TRIGGER_SIZE"

.field public static final EXTRA_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/lang/String; = "NATIVE_FLOOD_RATIO"

.field public static final EXTRA_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/lang/String; = "NEVER_COLLECT_WITHIN"

.field public static final EXTRA_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/lang/String; = "SYSPERS_FLOOD_RATIO"

.field public static final HQM_ENABLE:Z = true

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static KPM_BTIME_ENABLE:Z = false

.field public static final KPM_CATEGORY:Ljava/lang/String; = "kpmParams"

.field public static final KPM_CATEGORY_ITEM:Ljava/lang/String; = "kpmEnable"

.field public static KPM_DEBUG:Z = false

.field public static final KPM_MEMORY_CRITICAL_LOW_SEND:Ljava/lang/String; = "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

.field public static KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z = false

.field public static KPM_POLICY_ENABLE:Z = false

.field public static final KPM_STATE_SEND:Ljava/lang/String; = "com.samsung.KPM_STATE_CHANGED"

.field public static final KPM_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field public static final KPM_VERSION:Ljava/lang/String; = "3.1"

.field public static final LOGGING_VERSION:Ljava/lang/String; = "1.1"

.field public static final MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ:I = 0x2bc

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I = 0x0

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I = 0x0

.field public static MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z = false

.field public static final ONE_MINUTE_MS:J = 0xea60L

.field public static final RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final REPORT_KPUT_MAX_SIZE:I = 0x7e4

.field public static final REPORT_TYPE_AUTO_RESTART:I = 0x3

.field public static final REPORT_TYPE_CHANGE_STATE:I = 0x0

.field public static final REPORT_TYPE_MEM_INFO:I = 0x4

.field public static final REPORT_TYPE_SAMPLE_A_DAY:I = 0x1

.field public static final REPORT_TYPE_TOP5_ADJ:I = 0x2

.field public static final RESET_TYPE_KERNEL:Ljava/lang/String; = "KERNEL"

.field public static final RESET_TYPE_PLATFORM:Ljava/lang/String; = "PLATFORM"

.field public static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final SCPM_POLICY_NAME:Ljava/lang/String; = "kpm"

.field public static final SWAPPINESS:[I

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_KPM:Ljava/lang/String; = "ActivityManager_KPM"

.field public static mIsChimeraPmmKillTriggered:Z

.field public static resumeSkipPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sCompactTriggerSize:I

.field public static sMinTriggerSize:I

.field public static sNativeFloodRatio:I

.field public static sNeverCollectWithin:I

.field public static sPolicyTrigger:I

.field public static sSyspersFloodRatio:I

.field public static sWarmUpCycles:I

.field public static sWarmUpTrigger:I


# instance fields
.field public final INDEX_2ND_PREV_PROCESS:I

.field public final INDEX_CURRENT_PROCESS:I

.field public final INDEX_PREV_PROCESS:I

.field public final KPM_RAW_BIGDATA_MAX_LEN:I

.field public final KPM_RAW_POLICY_MAX_LEN:I

.field public final PREV_PROCESS_LIST_MAX:I

.field public final SCPM_URI_KPM:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppLaunchCount:J

.field public mBigdataIndex:I

.field public mBigdataMetric:I

.field public mContext:Landroid/content/Context;

.field public mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

.field public mDisplaySizeStr:Ljava/lang/String;

.field public mHasPsiCpuPermission:Z

.field public mHasPsiIoPermission:Z

.field public mHasPsiMemoryPermission:Z

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIdleModeReceiver:Landroid/content/BroadcastReceiver;

.field public mIsFirstAppLaunch:Z

.field public final mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public mKpmStartTime:J

.field public mLastAwakeRealTimeMillis:J

.field public mLastAwakeUpTimeMillis:J

.field public mLastIdleEnterRealTimeMillis:J

.field public mLastIdleExitRealTimeMillis:J

.field public mLastIdleExitUpTimeMillis:J

.field public mLastIdleRealTimeMillis:J

.field public final mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

.field public mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

.field public mNumberOfStay:J

.field public mPlatformStartUpTimeMillis:J

.field public mPolicyIndex:I

.field public mPolicyMetric:I

.field public mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mPrevPackage:Ljava/lang/String;

.field public mPrevProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

.field public mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

.field public final mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

.field public mTotalMem:I

.field public mTotalSwap:I

.field public mTrigger:I

.field public mVmStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)[Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKpmStartTime(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyMetric(Lcom/android/server/am/KillPolicyManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalMem(Lcom/android/server/am/KillPolicyManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcalcKilledPackageRatio(Lcom/android/server/am/KillPolicyManager;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager;->calcKilledPackageRatio(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misCriticalKilledManyPakages(Lcom/android/server/am/KillPolicyManager;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->isCriticalKilledManyPakages(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportMemCriticalLow(Lcom/android/server/am/KillPolicyManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->reportMemCriticalLow(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->reportResetState(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;
    .registers 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_MIN_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;
    .registers 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO()Ljava/time/temporal/ValueRange;
    .registers 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN()Ljava/time/temporal/ValueRange;
    .registers 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO()Ljava/time/temporal/ValueRange;
    .registers 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmIsChimeraPmmKillTriggered()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCompactTriggerSize()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsMinTriggerSize()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNativeFloodRatio()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNeverCollectWithin()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSyspersFloodRatio()I
    .registers 1

    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputmIsChimeraPmmKillTriggered(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsCompactTriggerSize(I)V
    .registers 1

    sput p0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsMinTriggerSize(I)V
    .registers 1

    sput p0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsNativeFloodRatio(I)V
    .registers 1

    sput p0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsNeverCollectWithin(I)V
    .registers 1

    sput p0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsSyspersFloodRatio(I)V
    .registers 1

    sput p0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 110
    fill-array-data v0, :array_b6

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    const-string/jumbo v0, "ro.slmk.kpm_policy_enable"

    const-string/jumbo v1, "true"

    .line 124
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string/jumbo v2, "ro.slmk.kpm_warm_up_trigger"

    const-string v3, "20"

    .line 126
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    const/16 v2, 0x32

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.slmk.kpm_policy_trigger"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    const-string/jumbo v2, "ro.slmk.kpm_warm_up_cycles"

    const-string v3, "3"

    .line 129
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    const-string/jumbo v2, "ro.slmk.kpm_boot_enable"

    .line 131
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 133
    sput-boolean v2, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string/jumbo v3, "ro.slmk.kpm_use_cri_pkg_ratio"

    .line 138
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    const/16 v1, 0x64

    .line 142
    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 144
    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 154
    sput-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x64

    .line 174
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 175
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3e8

    .line 176
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    const-wide/16 v1, 0x0

    .line 177
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 178
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    const/16 v1, 0xa

    .line 181
    sput v1, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    const/16 v1, 0xc

    .line 182
    sput v1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    const/16 v1, 0x12c

    .line 183
    sput v1, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    const/16 v1, 0x1e

    .line 184
    sput v1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 185
    sput v1, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 235
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return-void

    nop

    :array_b6
    .array-data 4
        0x64
        0x64
        0x82
        0x82
        0x91
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    .line 145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 147
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    const/4 v0, 0x5

    .line 149
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->PREV_PROCESS_LIST_MAX:I

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_CURRENT_PROCESS:I

    const/4 v1, 0x2

    .line 151
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_PREV_PROCESS:I

    const/4 v1, 0x3

    .line 152
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_2ND_PREV_PROCESS:I

    const/16 v1, 0x18

    .line 156
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->KPM_RAW_POLICY_MAX_LEN:I

    const/16 v2, 0x1e

    .line 157
    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->KPM_RAW_BIGDATA_MAX_LEN:I

    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 158
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-array v1, v2, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 159
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 198
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 199
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 200
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    const-string v1, ""

    .line 216
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 217
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 222
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 230
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 232
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 234
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    const-wide/16 v0, 0x0

    .line 243
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 244
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 245
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 249
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "ActivityManager_KPM"

    const-string v0, "KillPolicyManager()"

    .line 339
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCriticalLowPackageKillRatioTH()I
    .registers 1

    .line 362
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    return v0
.end method

.method public static getCriticalLowProcessKillRatioTH()I
    .registers 1

    .line 358
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method public static getInstance()Lcom/android/server/am/KillPolicyManager;
    .registers 1

    .line 354
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    return-object v0
.end method

.method public static getMemInfo()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "/proc/meminfo"

    .line 811
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 820
    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_58

    .line 821
    :try_start_a
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_4e

    .line 822
    :try_start_11
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 823
    :goto_15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "[ :]+"

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 826
    array-length v3, v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_44

    const/4 v4, 0x2

    if-lt v3, v4, :cond_38

    const/4 v3, 0x0

    .line 828
    :try_start_28
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_38} :catch_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    .line 833
    :catch_38
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_44

    goto :goto_15

    .line 835
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4e

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_43} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_58

    goto :goto_66

    :catchall_44
    move-exception v2

    .line 820
    :try_start_45
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p0

    :try_start_4a
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v1

    :try_start_54
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_58} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_58

    :catch_58
    move-exception p0

    .line 840
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66

    :catch_5d
    move-exception p0

    .line 838
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_66

    :catch_62
    move-exception p0

    .line 836
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_66
    return-object v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .registers 8

    const-string v0, "Exception"

    const-string v1, "ActivityManager"

    const-string v2, ""

    const/4 v3, 0x0

    .line 3584
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_54
    .catchall {:try_start_7 .. :try_end_15} :catchall_52

    .line 3587
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_4f
    .catchall {:try_start_15 .. :try_end_19} :catchall_4c

    if-nez p0, :cond_37

    .line 3598
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_7b

    :catch_1f
    move-exception p0

    .line 3600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 3591
    :cond_37
    :try_start_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4b} :catch_4f
    .catchall {:try_start_37 .. :try_end_4b} :catchall_4c

    goto :goto_15

    :catchall_4c
    move-exception p0

    move-object v3, v4

    goto :goto_81

    :catch_4f
    move-exception p0

    move-object v3, v4

    goto :goto_55

    :catchall_52
    move-exception p0

    goto :goto_81

    :catch_54
    move-exception p0

    .line 3594
    :goto_55
    :try_start_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPsiFile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_52

    if-eqz v3, :cond_7b

    .line 3598
    :try_start_70
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7b

    :catch_74
    move-exception p0

    .line 3600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_25

    .line 3605
    :cond_7b
    :goto_7b
    new-instance p0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/KillPolicyManager$PsiFile;-><init>(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V

    return-object p0

    :goto_81
    if-eqz v3, :cond_9e

    .line 3598
    :try_start_83
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_9e

    :catch_87
    move-exception p1

    .line 3600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_9e
    :goto_9e
    throw p0
.end method

.method public static getVmStat()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "/proc/vmstat"

    .line 815
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static isDetectCritcialLowEnabled()Z
    .registers 2

    const/4 v0, 0x1

    .line 348
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.kpm_cri_mem_detect"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    return v0
.end method

.method public static isKPMEnabled()Z
    .registers 1

    .line 343
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addPrevProcessList(Ljava/lang/String;)V
    .registers 6

    .line 964
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le p1, v1, :cond_17

    .line 967
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 969
    :cond_17
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_4d

    .line 970
    :goto_1b
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_4d

    const-string p1, "ActivityManager_KPM"

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "idx["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Process name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 973
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public applyPolicy()V
    .registers 7

    .line 1270
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_86

    .line 1271
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v3, v3, -0x2

    rem-int/lit8 v3, v3, 0x18

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1272
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v3, v3, -0x3

    rem-int/lit8 v3, v3, 0x18

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1273
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    sub-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x18

    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1274
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 1275
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->onPolicyScoreUpdated(F)V

    .line 1277
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    aget-object v0, v1, v0

    .line 1279
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_7f

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", eval policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_KPM"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_7f
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v1, v0, :cond_86

    .line 1284
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    :cond_86
    return-void
.end method

.method public final calcKilledPackageRatio(II)I
    .registers 5

    if-lez p2, :cond_d

    int-to-double p0, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    int-to-double v0, p2

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public calculateKpmStats(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1185
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-nez v0, :cond_10

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawPolicy()V

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawBigdata()V

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->scheduleDailyUserTrendRandomSample()V

    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 1192
    :cond_10
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 1194
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 1196
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/KillPolicyManager;->updateKpmProcessData(Ljava/lang/String;I)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmMemData()V

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmPsiData()V

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmCycleData()V

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->setPrevPackage(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager;->addPrevProcessList(Ljava/lang/String;)V

    return-void
.end method

.method public calculateLmkdStatus(I)V
    .registers 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "] "

    const-string v4, "ActivityManager_KPM"

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v5

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v6

    if-eqz v5, :cond_27a

    if-nez v6, :cond_16

    goto/16 :goto_27a

    .line 1007
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentProcess()Ljava/lang/String;

    move-result-object v7

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getPrevProcess()Ljava/lang/String;

    move-result-object v8

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->get2ndPrevProcess()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    move-object v11, v0

    move v12, v10

    .line 1014
    :goto_26
    :try_start_26
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_7c

    if-ge v12, v0, :cond_84

    .line 1016
    :try_start_34
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_79

    .line 1018
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_47} :catch_71
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_47} :catch_7c

    if-ne v2, v0, :cond_79

    .line 1020
    :try_start_49
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_69

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLruProcessesLOSP() pid["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_69} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_69} :catch_6b

    :cond_69
    move-object v11, v13

    goto :goto_84

    :catch_6b
    move-exception v0

    move-object v11, v13

    goto :goto_7d

    :catch_6e
    move-exception v0

    move-object v11, v13

    goto :goto_72

    :catch_71
    move-exception v0

    .line 1028
    :goto_72
    :try_start_72
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_7c

    :cond_79
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    :catch_7c
    move-exception v0

    .line 1033
    :goto_7d
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    if-nez v11, :cond_fe

    move v12, v10

    .line 1039
    :goto_87
    :try_start_87
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_91} :catch_da

    if-ge v12, v0, :cond_e2

    .line 1041
    :try_start_93
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_d7

    .line 1043
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_a4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_93 .. :try_end_a4} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a4} :catch_da

    if-ne v2, v0, :cond_d7

    .line 1045
    :try_start_a6
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_c7

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mRemovedProcesses pid["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a6 .. :try_end_c7} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c7} :catch_c9

    :cond_c7
    move-object v11, v13

    goto :goto_e2

    :catch_c9
    move-exception v0

    move-object v11, v13

    goto :goto_db

    :catch_cc
    move-exception v0

    move-object v11, v13

    goto :goto_d0

    :catch_cf
    move-exception v0

    .line 1053
    :goto_d0
    :try_start_d0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d7} :catch_da

    :cond_d7
    add-int/lit8 v12, v12, 0x1

    goto :goto_87

    :catch_da
    move-exception v0

    .line 1058
    :goto_db
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    if-nez v11, :cond_fe

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateLmkdStatus pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] but don\'t get process info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1067
    :cond_fe
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    .line 1068
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v12

    .line 1069
    sget-boolean v13, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/16 v14, 0x80

    if-eqz v13, :cond_13b

    .line 1070
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v15, "pid["

    .line 1071
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adj["

    .line 1075
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] hasActivities "

    .line 1077
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_140

    return-void

    :cond_140
    if-eqz v7, :cond_18a

    if-eqz v12, :cond_18a

    .line 1085
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1086
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1087
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1088
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateLmkdStatus currentProcess Killed "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v3, v5, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v3, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21b

    :cond_18a
    if-eqz v8, :cond_1b2

    if-eqz v12, :cond_1b2

    .line 1094
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1095
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 1096
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1097
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1099
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z

    move-result v2

    if-nez v2, :cond_21b

    .line 1100
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->clearHeavyList()V

    .line 1101
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->gatherHeavyProcessThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    goto/16 :goto_21b

    :cond_1b2
    if-eqz v9, :cond_1c7

    if-eqz v12, :cond_1c7

    .line 1103
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1104
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 1105
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1106
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    :cond_1c7
    const/16 v2, 0x33e

    if-ge v0, v2, :cond_1e5

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1dc

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_1dc

    .line 1111
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1112
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    .line 1114
    :cond_1dc
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1115
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    :cond_1e5
    if-eqz v12, :cond_213

    const/16 v3, 0x384

    if-le v0, v3, :cond_1f4

    .line 1120
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1121
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    :cond_1f4
    if-ne v0, v3, :cond_1ff

    .line 1123
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1124
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    :cond_1ff
    if-lt v0, v2, :cond_20a

    .line 1126
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1127
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    .line 1129
    :cond_20a
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_6:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1130
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_21b

    .line 1133
    :cond_213
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1134
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1139
    :cond_21b
    :goto_21b
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z

    move-result v2

    if-eqz v2, :cond_228

    .line 1140
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->setPeakLmkdKillLevel(I)V

    .line 1143
    :cond_228
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_27a

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kpmRawBigdata lmkdState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "kpmRawBigdata lmkdStateCount ["

    .line 1148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v1

    array-length v2, v1

    :goto_257
    if-ge v10, v2, :cond_26e

    aget-object v3, v1, v10

    .line 1150
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-wide v7, v5, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 1151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_257

    :cond_26e
    const-string v1, "]"

    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27a
    :goto_27a
    return-void
.end method

.method public changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V
    .registers 4

    .line 1290
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_1f
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1295
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    sget-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->setValue(I)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->sendKpmStateChangeIntent()V

    return-void
.end method

.method public changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 8

    .line 1227
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 1228
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2b

    .line 1229
    :cond_d
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 1230
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2b

    .line 1231
    :cond_19
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    add-long/2addr v0, v4

    iget p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_29

    .line 1232
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2b

    .line 1234
    :cond_29
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    :goto_2b
    return-object p0
.end method

.method public changeTinyKpmState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 8

    .line 1243
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 1244
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2e

    .line 1245
    :cond_d
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 1246
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2e

    .line 1247
    :cond_19
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    add-long/2addr v0, v4

    iget p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iget v4, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    sub-int/2addr p0, v4

    int-to-long v4, p0

    add-long/2addr v0, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_2c

    .line 1249
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_2e

    .line 1251
    :cond_2c
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1253
    :goto_2e
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iput v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    return-object p0
.end method

.method public dumpKpmStats(Ljava/io/PrintWriter;)V
    .registers 14

    .line 1349
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 1350
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 1359
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const-string v3, " [idx, peakLmkdKillAdj, [procMemInfo], [{native(Pss SwapPss Rss)}{sys}{pers}{persvc}{fore}{vis}{percept}{perceptl}{perceptm}{backup}{heavy}{servicea}{home}{prev}{serviceb}{archived}{picked}{cached}], [Process name, Process version, Package name, Package version, label, pss, swap, rss, procstats_dumpPssUssRss], ...]"

    const-string v4, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,lmkdState,lmkdStateCnt,lmkdCnt,tiny_nxst_history,time]"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v2, v6, :cond_64

    const-string v2, " KPM Stats(policy):"

    .line 1360
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/16 v7, 0x18

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v0

    move v7, v5

    :goto_20
    const/16 v9, 0x17

    if-ge v7, v2, :cond_3d

    .line 1368
    iget-object v10, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v10, v10, v8

    iget v11, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1369
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_3a

    move v8, v9

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1374
    :cond_3d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v7, " Heavy Pss List(policy):"

    .line 1375
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_49
    if-ge v7, v2, :cond_64

    .line 1382
    iget-object v8, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v8, v8, v0

    iget v10, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v8, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1383
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_61

    move v0, v9

    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 1390
    :cond_64
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    if-lt v0, v6, :cond_c0

    .line 1391
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " KPM Stats(bigdata):"

    .line 1392
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v1

    move v2, v5

    :goto_7d
    const/16 v6, 0x1d

    if-ge v2, v0, :cond_9a

    .line 1400
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1401
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_97

    move v4, v6

    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 1407
    :cond_9a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, " Heavy Pss List(bigdata):"

    .line 1408
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a5
    if-ge v5, v0, :cond_c0

    .line 1415
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_bd

    move v1, v6

    :cond_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :cond_c0
    const-string v0, " "

    .line 1423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " KPM Tunable Parameters:"

    .line 1425
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_POLICY_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_DEBUG_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_CURRENT_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_POLICY_TRIGGER_TUNABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_WARM_UP_CYCLES_TUNABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    .line 1433
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowProcessKillRatioTH()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowPackageKillRatioTH()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getDefaultValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KPM_POLICY_SWAPPINESS_CURRENT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "\n KPM Auto Restart Parameters"

    .line 1442
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Min Triggger Size    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Never Collect Within : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Compact Trigger Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Native Flood Ratio   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Syspers Flood Ratio  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 1448
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->dump(Ljava/io/PrintWriter;)V

    .line 1452
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1463
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    if-eqz p0, :cond_db

    .line 1466
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getLruWight()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getStdBktWeight()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getMemWeight()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "CHWT"

    .line 1470
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const-string v1, "CHTC"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const-string v2, "CLTC"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const-string v3, "CBTC"

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CHAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CLAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CBAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getKillCnt()I

    move-result p1

    const-string v0, "CKLC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1479
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1480
    :goto_a6
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_b9

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    :cond_b9
    const-string v1, "CKAI"

    .line 1484
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1486
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1487
    :goto_c3
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d6

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    :cond_d6
    const-string p0, "CKGI"

    .line 1491
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_db
    return-void
.end method

.method public forceChangeState(Ljava/lang/String;)V
    .registers 4

    .line 1206
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_4c

    goto :goto_2c

    :sswitch_c
    const-string v0, "LIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "HEAVY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_5a

    .line 1217
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_42

    .line 1208
    :pswitch_34
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_42

    .line 1211
    :pswitch_39
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_42

    .line 1214
    :pswitch_3e
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1220
    :goto_42
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 1221
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-void

    :sswitch_data_4c
    .sparse-switch
        -0x5cfe9861 -> :sswitch_22
        0x416f8a7 -> :sswitch_17
        0x4513cf6 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_39
        :pswitch_34
    .end packed-switch
.end method

.method public get2ndPrevProcess()Ljava/lang/String;
    .registers 4

    .line 993
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 994
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    .line 996
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 997
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 2

    .line 1166
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_b

    .line 1167
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 2

    .line 1159
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_b

    .line 1160
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentProcess()Ljava/lang/String;
    .registers 4

    .line 977
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_17

    .line 980
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 981
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getKpmState()Ljava/lang/String;
    .registers 2

    .line 1457
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1458
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1459
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPrevProcess()Ljava/lang/String;
    .registers 4

    .line 985
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 986
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_17

    .line 988
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 989
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getPrevState()Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 1

    .line 1831
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .registers 12

    .line 847
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 851
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 852
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 853
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v2

    .line 854
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 855
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 856
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 857
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 858
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getActiveFileSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 859
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getInactiveFileSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 860
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 861
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinCachedSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 862
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 863
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKReclaimableSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 864
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSReclaimableSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 865
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSUnreclaimSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 866
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslShmemUsageSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    .line 867
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslReclaimedSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    .line 868
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    .line 869
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 870
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslSharedMemSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    const/16 v3, 0x13

    .line 871
    aget-wide v2, v2, v3

    long-to-double v2, v2

    div-double/2addr v2, v5

    add-double/2addr v2, v7

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 873
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v2, :cond_d9

    .line 874
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v5

    add-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_d9
    return-object v1
.end method

.method public getProcMemInfoLight()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .registers 11

    .line 790
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 794
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 795
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 796
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 797
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 798
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 799
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 800
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 802
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v2, :cond_53

    .line 803
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_53
    return-object v1
.end method

.method public final getSCPMPolicyItemFromDB()V
    .registers 10

    const-string/jumbo v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    .line 454
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "ActivityManager_KPM"

    const-string/jumbo v1, "getSCPMPolicyItemFromDB!!"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_40

    :catch_23
    move-exception p0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_40
    if-eqz p0, :cond_c9

    .line 464
    :cond_42
    :goto_42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    const/4 v1, 0x0

    .line 465
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 466
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 467
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 468
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_42

    if-eqz v4, :cond_42

    if-eqz v5, :cond_42

    const-string/jumbo v6, "kpmEnable"

    .line 470
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "switch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "FALSE"

    .line 471
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "persist.sys.kpm_onoff"

    if-eqz v2, :cond_88

    .line 472
    sput-boolean v1, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string v1, "false"

    .line 473
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_88
    const-string v1, "TRUE"

    .line 474
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 475
    sput-boolean v3, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string/jumbo v1, "true"

    .line 476
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_98
    :goto_98
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v1, :cond_42

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSCPMPolicyItemFromDB: CATEGORY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SCPM PKG: data1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", KPM ENABLE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 487
    :cond_c5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_cf

    :cond_c9
    const-string/jumbo p0, "getSCPMPolicyItemFromDB error, no database!!"

    .line 489
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cf
    return-void
.end method

.method public final hasValidItemFromDB()Z
    .registers 10

    const-string/jumbo v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    .line 423
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "ActivityManager_KPM"

    const-string/jumbo v1, "hasValidItemFromDB!!"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_40

    :catch_23
    move-exception p0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_40
    const/4 v1, 0x0

    if-eqz p0, :cond_72

    .line 433
    :cond_43
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6e

    .line 434
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 435
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 436
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 437
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v3, "switch"

    .line 438
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    const-string/jumbo v3, "kpmParams"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_6d
    move v1, v2

    .line 444
    :cond_6e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_78

    :cond_72
    const-string/jumbo p0, "hasValidItemFromDB error, no database!!"

    .line 446
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    return v1
.end method

.method public final initCriticalLowKillRatioTH()V
    .registers 2

    .line 620
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    if-lez v0, :cond_d

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setCriticalKillThreshold(I)V

    .line 622
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setPackageKillThreshold(I)V

    goto :goto_13

    :cond_d
    const/16 p0, 0x64

    .line 624
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 625
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    :goto_13
    return-void
.end method

.method public initKillPolicyManager(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 6

    const-string p3, "ActivityManager_KPM"

    const-string/jumbo v0, "initKillPolicyManager()"

    .line 495
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-boolean p3, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    if-nez p3, :cond_58

    .line 497
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 498
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 499
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 503
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getRAMsizeGB()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 504
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->initCriticalLowKillRatioTH()V

    const/4 p1, 0x0

    .line 506
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    const-wide/16 p2, 0x0

    .line 507
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 508
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 509
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 510
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 511
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 512
    sget p1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 513
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 514
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 515
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    .line 517
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 518
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->initSkipPackage()V

    const/4 p0, 0x1

    .line 519
    sput-boolean p0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    :cond_58
    return-void
.end method

.method public initScpm()V
    .registers 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initScpm() called. Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initScpm() completed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initSkipPackage()V
    .registers 2

    .line 581
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.google.android.permissioncontroller"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.MtpApplication"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isCriticalKilledManyPakages(I)Z
    .registers 2

    .line 632
    sget p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    if-lt p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isKpmSafe(Ljava/lang/String;)Z
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 953
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 957
    :cond_12
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_37

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKpmSafe() callingPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrevPackage : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v1
.end method

.method public final isNeedUpdateSCPMPolicy()Z
    .registers 9

    .line 396
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v1, "ActivityManager_KPM"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    .line 397
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    const-string/jumbo p0, "policy list is null"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_24
    const/4 v0, 0x0

    if-eqz p0, :cond_6d

    .line 405
    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "policyName"

    .line 406
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    .line 407
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "kpm"

    .line 408
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , policyVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 415
    :cond_6a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6d
    return v0
.end method

.method public final isSCPMAvailable()Z
    .registers 3

    .line 386
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    const-string v0, "ActivityManager_KPM"

    const-string/jumbo v1, "isSCPMAvailable"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_c
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public isSkipPackage(Ljava/lang/String;)Z
    .registers 2

    .line 589
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "android"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 590
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public loggingAppDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 9

    .line 1301
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    .line 1302
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v2

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v3

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v4

    if-nez v2, :cond_65

    const/16 v5, 0x384

    if-lt v1, v5, :cond_65

    const/16 v5, 0x3e7

    if-gt v1, v5, :cond_65

    const/16 v5, 0x10

    if-eq v0, v5, :cond_55

    const/16 v5, 0x12

    if-ne v0, v5, :cond_2b

    goto :goto_55

    :cond_2b
    const/16 v5, 0x11

    if-ne v0, v5, :cond_40

    if-eqz v3, :cond_37

    .line 1317
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    :cond_37
    if-eqz v4, :cond_65

    .line 1319
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    goto :goto_65

    :cond_40
    const/16 v5, 0x13

    if-ne v0, v5, :cond_65

    if-eqz v3, :cond_4c

    .line 1322
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    :cond_4c
    if-eqz v4, :cond_65

    .line 1324
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    goto :goto_65

    :cond_55
    :goto_55
    if-eqz v3, :cond_5d

    .line 1312
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    :cond_5d
    if-eqz v4, :cond_65

    .line 1314
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 1329
    :cond_65
    :goto_65
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v4, :cond_d2

    if-eqz v3, :cond_6e

    .line 1330
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    .line 1331
    :goto_6f
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v2, :cond_84

    const-string/jumbo v2, "loggingAppDied Killed Process : "

    .line 1333
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_8f

    :cond_84
    const-string/jumbo v2, "loggingAppDied KilledByAm Process : "

    .line 1335
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_8f
    const-string p0, ", App PID:"

    .line 1336
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", App Name:"

    .line 1337
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", App SetADJ:"

    .line 1338
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", App AdjType:"

    .line 1339
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Current CCH-ACT Count:"

    .line 1340
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Proc State:"

    .line 1341
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    return-void
.end method

.method public final newKpmRawBigdata()V
    .registers 5

    .line 1179
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    rem-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1180
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 1181
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v3, v2, v1

    return-void
.end method

.method public final newKpmRawPolicy()V
    .registers 5

    .line 1173
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    rem-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1174
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1175
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v3, v2, v1

    return-void
.end method

.method public final reportMemCriticalLow(I)V
    .registers 6

    .line 644
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "res"

    .line 646
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "memory Critical Low intent RESULT : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportMemInfo()V
    .registers 26

    move-object/from16 v0, p0

    const-string v1, "MemFree"

    const-string v2, "MemAvailable"

    const-string v3, "Cached"

    const-string v4, "Active(file)"

    const-string v5, "Inactive(file)"

    const-string v6, "RbinFree"

    const-string v7, "RbinCached"

    const-string v8, "SwapTotal"

    const-string v9, "SwapFree"

    const-string v10, "KReclaimable"

    const-string v11, "SReclaimable"

    const-string v12, "SUnreclaim"

    const-string v13, "KgslShmemUsage"

    const-string v14, "KgslReclaimed"

    const-string/jumbo v15, "system"

    const-string/jumbo v16, "zram0"

    const-string v17, "KgslSharedmem"

    const-string v18, "PageTables"

    const-string v19, "VmallocUsed"

    const-string v20, "Active(anon)"

    const-string v21, "Inactive(anon)"

    const-string v22, "Mapped"

    const-string v23, "AnonPages"

    const-string v24, "Shmem"

    .line 1524
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workingset_refault_anon"

    const-string/jumbo v3, "workingset_refault_file"

    const-string/jumbo v4, "pgpgin"

    const-string/jumbo v5, "pgpgout"

    const-string/jumbo v6, "pswpin"

    const-string/jumbo v7, "pswpout"

    const-string v8, "allocstall_normal"

    const-string v9, "allocstall_movable"

    const-string/jumbo v10, "pgfault"

    const-string/jumbo v11, "pgmajfault"

    const-string/jumbo v12, "pgsteal_kswapd"

    const-string/jumbo v13, "pgsteal_direct"

    const-string/jumbo v14, "pgscan_kswapd"

    const-string/jumbo v15, "pgscan_direct"

    const-string/jumbo v16, "oom_kill"

    const-string v17, "cma_alloc_fail"

    .line 1549
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1568
    :try_start_6a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "TYPE"

    const/4 v6, 0x4

    .line 1569
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "KVER"

    const-string v6, "3.1"

    .line 1570
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "DRAM"

    .line 1571
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWPT"

    .line 1572
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1574
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1575
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getMemInfo()Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_97
    const/16 v9, 0x18

    if-ge v8, v9, :cond_ba

    .line 1576
    aget-object v9, v1, v8

    .line 1577
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 1578
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_b7

    .line 1581
    :cond_b4
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    :cond_ba
    const-string v1, "PMI"

    .line 1584
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1586
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1587
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getVmStat()Ljava/util/HashMap;

    move-result-object v5

    :goto_c8
    const/16 v6, 0x10

    if-ge v7, v6, :cond_fe

    .line 1589
    aget-object v6, v2, v7

    .line 1591
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_e5

    .line 1592
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_e6

    :cond_e5
    move-wide v11, v9

    .line 1596
    :goto_e6
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f8

    .line 1597
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v9, v8, v11

    .line 1599
    :cond_f8
    invoke-virtual {v1, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c8

    :cond_fe
    const-string v2, "VMSTAT"

    .line 1601
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1602
    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 1604
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1605
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_113} :catch_114

    goto :goto_11c

    :catch_114
    const-string v1, "ActivityManager_KPM"

    const-string v2, "failed to create the KPUT"

    .line 1607
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_11c
    const-string v2, "KPUT"

    .line 1610
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportResetState(Ljava/lang/String;)V
    .registers 7

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 657
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "resetType"

    .line 661
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "nativeStart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "nativeEnd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "sysPersStart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "sysPersEnd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const-string/jumbo v2, "pmmCyclePlatform"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    add-int/2addr v1, v2

    const-string/jumbo v2, "pmmCycleKernel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    sub-long/2addr v1, v3

    const-string/jumbo v3, "uptimeSystemBoot"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 670
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportResetState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ActivityManager_KPM"

    if-nez v1, :cond_e

    const-string v0, "data is null"

    .line 1619
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1621
    :cond_e
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez v3, :cond_19

    const-string/jumbo v0, "it has \'zero\' samples."

    .line 1622
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1627
    :cond_19
    :try_start_19
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "TYPE"

    move/from16 v6, p1

    .line 1629
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CRST"

    .line 1632
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "NXST"

    .line 1633
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "PLST"

    .line 1634
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "DRAM"

    .line 1638
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWPT"

    .line 1639
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "FCMA"

    .line 1641
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v6, v6

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "AVMA"

    .line 1643
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWUA"

    .line 1644
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "DISP"

    .line 1647
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "PCKC"

    .line 1650
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "PCKA"

    .line 1651
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SDBC"

    .line 1653
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CCHC"

    .line 1655
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CCHA"

    .line 1656
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "LNCT"

    .line 1658
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 1659
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 1660
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 1658
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "LPKC"

    .line 1662
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "PKPC"

    .line 1663
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SKSC"

    .line 1664
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SKPC"

    .line 1665
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "VFAK"

    .line 1667
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "HPAK"

    .line 1668
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "PRAK"

    .line 1669
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "SRVK"

    .line 1670
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "PCKK"

    .line 1671
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "SBAK"

    .line 1672
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CHMK"

    .line 1673
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CHEK"

    .line 1675
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CHNK"

    .line 1676
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CACK"

    .line 1677
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "APPC"

    .line 1680
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "MEDK"

    .line 1682
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CRIK"

    .line 1683
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "LMKK"

    .line 1684
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1686
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v5, :cond_18a

    const-string v5, "SWPN"

    .line 1687
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1690
    :cond_18a
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1692
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_1fd

    .line 1693
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v14, v6

    move v15, v12

    :goto_19b
    const-wide/16 v16, 0x0

    if-ge v15, v14, :cond_1d3

    aget-object v3, v6, v15

    .line 1696
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c2

    .line 1697
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 1698
    aget-wide v16, v3, v12

    aget-wide v18, v3, v13

    add-long v12, v16, v18

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v8

    double-to-long v12, v12

    const/16 v16, 0x2

    .line 1699
    aget-wide v18, v3, v16

    move-wide/from16 v7, v18

    goto :goto_1c5

    :cond_1c2
    move-wide/from16 v7, v16

    move-wide v12, v7

    .line 1701
    :goto_1c5
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v15, v15, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_19b

    .line 1704
    :cond_1d3
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1d7
    if-ge v8, v7, :cond_1fd

    aget-object v9, v6, v8

    .line 1706
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f5

    .line 1707
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    const/4 v12, 0x1

    .line 1708
    aget-wide v13, v9, v12

    long-to-double v12, v13

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-long v12, v12

    goto :goto_1f7

    :cond_1f5
    move-wide/from16 v12, v16

    .line 1710
    :goto_1f7
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d7

    :cond_1fd
    const-string v6, "PRST"

    .line 1714
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1716
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1717
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v9

    div-double/2addr v7, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1718
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v9

    div-double/2addr v7, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1719
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1720
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1721
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1722
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v6, "PSIS"

    .line 1724
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1726
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    const-string v5, "STAY"

    .line 1729
    iget-wide v6, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "ELAP"

    .line 1730
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getElapsedTimeMin()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "UPTM"

    .line 1731
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "RSTF"

    .line 1732
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "KVER"

    const-string v6, "3.1"

    .line 1733
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "LS"

    .line 1736
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1737
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1738
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_293
    if-ge v8, v7, :cond_2a5

    aget-object v9, v6, v8

    .line 1739
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v12, v12, v9

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_293

    :cond_2a5
    const-string v6, "LSC"

    .line 1740
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1742
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1743
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2b5
    if-ge v8, v7, :cond_2c7

    aget-object v9, v6, v8

    .line 1744
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v12, v12, v9

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b5

    :cond_2c7
    const-string v6, "LC"

    .line 1745
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1747
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    .line 1748
    :goto_2d2
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2ea

    .line 1749
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v7, 0x5

    if-le v6, v7, :cond_2e7

    goto :goto_2ea

    :cond_2e7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d2

    :cond_2ea
    :goto_2ea
    const-string v6, "LDI"

    .line 1753
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1755
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1756
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-eqz v6, :cond_35c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_35c

    .line 1757
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v6, 0x0

    .line 1758
    :goto_304
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_35c

    .line 1759
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 1760
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1761
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v8, :cond_323

    .line 1762
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_32c

    .line 1764
    :cond_323
    iget-wide v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1766
    :goto_32c
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 1767
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 1768
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v14

    double-to-int v7, v12

    .line 1769
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_304

    :cond_35c
    const-string v6, "LHI"

    .line 1772
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1774
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1775
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    if-eqz v6, :cond_3fd

    .line 1776
    iget v6, v6, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 1777
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 1778
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 1779
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 1780
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 1781
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 1782
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 1783
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 1784
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 1785
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 1786
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 1787
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 1788
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    .line 1789
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    .line 1790
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    .line 1791
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 1792
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    .line 1793
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 1794
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_3fd
    const-string v6, "PMI"

    .line 1796
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1798
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1799
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    if-eqz v6, :cond_46d

    .line 1800
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_40f
    if-ge v8, v7, :cond_46d

    aget-object v9, v6, v8

    .line 1801
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45a

    .line 1802
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1803
    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    aget-wide v12, v9, v3

    long-to-double v12, v12

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 1804
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    aget-wide v14, v9, v13

    long-to-double v13, v14

    div-double/2addr v13, v10

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v13, v13

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 1805
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x2

    aget-wide v14, v9, v13

    long-to-double v14, v14

    div-double/2addr v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v9, v14

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_46a

    :cond_45a
    const/4 v3, 0x0

    const/4 v13, 0x2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const/4 v9, -0x1

    .line 1807
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_46a
    add-int/lit8 v8, v8, 0x1

    goto :goto_40f

    :cond_46d
    const/4 v3, 0x0

    const-string v6, "LHMA"

    .line 1811
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1813
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1814
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eqz v6, :cond_48e

    move v12, v3

    .line 1815
    :goto_47d
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length v6, v3

    if-ge v12, v6, :cond_48e

    .line 1816
    aget-object v3, v3, v12

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_47d

    :cond_48e
    const-string v1, "TNXST"

    .line 1819
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1821
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_497
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_497} :catch_4a2

    .line 1822
    :try_start_497
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_4a1
    .catch Lorg/json/JSONException; {:try_start_497 .. :try_end_4a1} :catch_4a3

    goto :goto_4a9

    :catch_4a2
    const/4 v3, 0x0

    :catch_4a3
    const-string v1, "failed to create the KPUT"

    .line 1824
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_4a9
    const-string v2, "KPUT"

    .line 1827
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleDailyUserTrendRandomSample()V
    .registers 12

    .line 524
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const-string v0, "ActivityManager_KPM"

    if-nez v1, :cond_1b

    const-string/jumbo p0, "schedule regist failed \'Alarm get failed\'"

    .line 531
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_1b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 538
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 539
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 541
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/4 v5, 0x5

    if-eqz v3, :cond_38

    const/16 v3, 0xc

    .line 542
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v5, 0x493e0

    goto :goto_3f

    :cond_38
    const/4 v3, 0x1

    .line 545
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v5, 0x5265c00

    .line 549
    :goto_3f
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Schedule the sample, next trigger time : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x4000000

    invoke-static {v0, v4, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 557
    new-instance v3, Lcom/android/server/am/KillPolicyManager$2;

    invoke-direct {v3, p0, v7, v8}, Lcom/android/server/am/KillPolicyManager$2;-><init>(Lcom/android/server/am/KillPolicyManager;J)V

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 576
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move v2, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public declared-synchronized sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    .line 1496
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_11

    .line 1497
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 1500
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_22

    .line 1501
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_20

    const-string p1, "ActivityManager_KPM"

    const-string p2, "HQM services is not working"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_79

    .line 1502
    :cond_20
    monitor-exit p0

    return-void

    :cond_22
    if-eqz p2, :cond_6c

    .line 1507
    :try_start_24
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    const-string v2, "Sluggish"

    const-string/jumbo v4, "ph"

    const-string v5, "1.1"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 1506
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1508
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_77

    if-eqz v0, :cond_64

    const-string v0, "ActivityManager_KPM"

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to report \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_64
    const-string p1, "ActivityManager_KPM"

    const-string p2, "failed to send to server"

    .line 1512
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 1516
    :cond_6c
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_77

    const-string p1, "ActivityManager_KPM"

    const-string p2, "failed to send to server."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_24 .. :try_end_77} :catchall_79

    .line 1518
    :cond_77
    :goto_77
    monitor-exit p0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendKpmStateChangeIntent()V
    .registers 4

    .line 1259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android"

    .line 1260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    .line 1261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_prev_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast sent: prev state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1265
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_KPM"

    .line 1264
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setCriticalKillThreshold(I)V
    .registers 3

    const-string/jumbo p0, "ro.slmk.kpm_crikill_rate_th"

    const-string v0, "-1"

    .line 594
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_16

    const/16 v0, 0x64

    if-ge p0, v0, :cond_16

    .line 596
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    goto :goto_1b

    :cond_16
    const/16 p0, 0x32

    .line 599
    div-int/2addr p0, p1

    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    :goto_1b
    return-void
.end method

.method public final setPackageKillThreshold(I)V
    .registers 3

    const-string/jumbo p0, "ro.slmk.kpm_pkgkill_rate_th"

    const-string v0, "-1"

    .line 604
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_16

    const/16 v0, 0x64

    if-ge p0, v0, :cond_16

    .line 606
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    :cond_16
    const/4 p0, 0x4

    if-gt p1, p0, :cond_1e

    const/16 p0, 0x32

    .line 609
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    :cond_1e
    const/16 p0, 0x8

    if-gt p1, p0, :cond_27

    const/16 p0, 0x19

    .line 611
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    :cond_27
    const/16 p0, 0xd

    .line 613
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    :goto_2b
    return-void
.end method

.method public setPrevPackage(Ljava/lang/String;)V
    .registers 3

    .line 942
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 943
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_1f

    .line 944
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPrevPackage() mPrevPackage : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public updateDisplaySize(II)V
    .registers 6

    .line 938
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "%dx%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    return-void
.end method

.method public updateKpmBigdata()V
    .registers 4

    .line 676
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 680
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 681
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 682
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateBigdataInfo()V

    .line 684
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 685
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    const/4 v1, 0x1

    .line 686
    iput-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 688
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    const-string v1, "ChimeraManagerService"

    .line 691
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v1, :cond_3e

    .line 693
    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 695
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 696
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 700
    :cond_3e
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 703
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawBigdata()V

    return-void
.end method

.method public updateKpmCycleData()V
    .registers 9

    .line 709
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    sget v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    sget v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 710
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v2

    if-eqz v0, :cond_19

    .line 711
    sget v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    goto :goto_1b

    :cond_19
    sget v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    :goto_1b
    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    const-string v3, "ActivityManager_KPM"

    if-eqz v2, :cond_48

    .line 713
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-eqz v4, :cond_48

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_48

    .line 714
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v4, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->fillTinyCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 715
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/lit8 v5, v5, 0x5

    sub-int/2addr v5, v1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {p0, v2}, Lcom/android/server/am/KillPolicyManager;->changeTinyKpmState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v6

    aput-object v6, v4, v5

    .line 716
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v4, :cond_48

    const-string v4, "Tiny KPM New State"

    .line 717
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    if-eqz v2, :cond_ed

    .line 721
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget v5, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    if-ne v4, v5, :cond_ed

    if-eqz v0, :cond_54

    .line 723
    iput-boolean v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 725
    :cond_54
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v0, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 726
    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateCycleInfo()V

    .line 728
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 729
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 730
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v0, v4, :cond_70

    .line 731
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 734
    :cond_70
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v0, v4, :cond_ae

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_ae

    .line 737
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_a8

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " KPM State Change. New State: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Previous State: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_a8
    iput-boolean v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 743
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 746
    :cond_ae
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v0, :cond_b5

    .line 747
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->applyPolicy()V

    .line 750
    :cond_b5
    iget-boolean v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v0, :cond_bd

    const-wide/16 v0, 0x0

    .line 751
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 754
    :cond_bd
    iget-boolean v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v0, :cond_c6

    .line 755
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    :cond_c6
    const-string v0, "ChimeraManagerService"

    .line 759
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v0, :cond_e0

    .line 761
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 764
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 765
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 769
    :cond_e0
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 772
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawPolicy()V

    :cond_ed
    return-void
.end method

.method public updateKpmMemData()V
    .registers 3

    .line 882
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 883
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    .line 885
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfoLight()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    if-eqz v0, :cond_13

    .line 888
    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_13
    if-eqz v1, :cond_18

    .line 890
    invoke-virtual {v1, p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_18
    return-void
.end method

.method public updateKpmProcessData(Ljava/lang/String;I)V
    .registers 4

    .line 779
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 780
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p0

    if-eqz v0, :cond_d

    .line 783
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(Ljava/lang/String;I)V

    :cond_d
    if-eqz p0, :cond_12

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public updateKpmPsiData()V
    .registers 15

    .line 895
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v7

    .line 899
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2c

    .line 900
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 901
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 902
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v1, "No permission - psi cpu"

    .line 904
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 906
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v8

    goto :goto_2d

    :cond_2c
    :goto_2c
    move-wide v8, v4

    .line 910
    :goto_2d
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    if-eqz v1, :cond_4c

    .line 911
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 912
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 913
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    const-string v1, "No permission - psi memory"

    .line 915
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 917
    :cond_47
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v10

    goto :goto_4d

    :cond_4c
    :goto_4c
    move-wide v10, v4

    .line 921
    :goto_4d
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    if-eqz v1, :cond_6d

    .line 922
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 923
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 924
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    const-string p0, "No permission - psi io"

    .line 926
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 928
    :cond_67
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v1

    move-wide v12, v1

    goto :goto_6e

    :cond_6d
    :goto_6d
    move-wide v12, v4

    :goto_6e
    if-eqz v0, :cond_76

    move-wide v1, v8

    move-wide v3, v10

    move-wide v5, v12

    .line 932
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    :cond_76
    if-eqz v7, :cond_7f

    move-object v1, v7

    move-wide v2, v8

    move-wide v4, v10

    move-wide v6, v12

    .line 934
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    :cond_7f
    return-void
.end method

.method public updateSCPMParametersFromDB()V
    .registers 3

    .line 372
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v1, "ActivityManager_KPM"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "updateSCPMParametersFromDB"

    .line 373
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 378
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 379
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getSCPMPolicyItemFromDB()V

    goto :goto_29

    :cond_23
    const-string/jumbo p0, "scpm doesn\'t find the Policy name for kpm"

    .line 381
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method
