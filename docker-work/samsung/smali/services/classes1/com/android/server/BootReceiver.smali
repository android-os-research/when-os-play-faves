.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BootReceiver$SaveLastkmsg;
    }
.end annotation


# static fields
.field public static ACTION_SYSTEM_ERROR:Ljava/lang/String; = null

.field public static final ERROR_REPORT_TRACE_PIPE:Ljava/lang/String; = "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

.field public static EXTRA_LOG_PATH:Ljava/lang/String; = null

.field public static EXTRA_RESET_REASON:Ljava/lang/String; = null

.field public static EXTRA_SYSTEM_TYPE:Ljava/lang/String; = null

.field public static final FSCK_FS_MODIFIED:Ljava/lang/String; = "FILE SYSTEM WAS MODIFIED"

.field public static final FSCK_PASS_PATTERN:Ljava/lang/String; = "Pass ([1-9]E?):"

.field public static final FSCK_TREE_OPTIMIZATION_PATTERN:Ljava/lang/String; = "Inode [0-9]+ extent tree.*could be shorter"

.field public static final FS_STAT_FS_FIXED:I = 0x400

.field public static final FS_STAT_PATTERN:Ljava/lang/String; = "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

.field public static final GMSCORE_LASTK_LOG_SIZE:I = 0x30000

.field public static final HW_PARAM_DCVS:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/last_dcvs"

.field public static final HW_PARAM_EXTRA:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extra_info"

.field public static final HW_PARAM_EXTRB:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extrb_info"

.field public static final HW_PARAM_EXTRC:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extrc_info"

.field public static final HW_PARAM_EXTRF:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extrf_info"

.field public static final HW_PARAM_EXTRM:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extrm_info"

.field public static final HW_PARAM_EXTRT:Ljava/lang/String; = "/sys/class/sec/sec_hw_param/extrt_info"

.field public static final KERNEL_PANIC:I = 0x1

.field public static final LASTK_LOG_SIZE:I

.field public static final LAST_HEADER_FILE:Ljava/lang/String; = "last-header.txt"

.field public static final LAST_KMSG_FILES:[Ljava/lang/String;

.field public static final LAST_SHUTDOWN_TIME_PATTERN:Ljava/lang/String; = "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

.field public static final LEVEL_FACTORY_RESET:I = 0x8

.field public static final LEVEL_ISRB_BOOT:I = 0x7

.field public static final LOG_FILES_FILE:Ljava/lang/String; = "log-files.xml"

.field public static final LOG_LATEST_KMSG:Ljava/lang/String; = "/data/log/dumpstate_latest_lastkmsg.log.gz"

.field public static final LOG_SIZE:I

.field public static final MAX_ERROR_REPORTS:I = 0x8

.field public static final MAX_STRING_LENGTH:I = 0x320

.field public static final METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = "begin_shutdown"

.field public static final METRIC_SYSTEM_SERVER:Ljava/lang/String; = "shutdown_system_server"

.field public static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field public static final NORMAL_BOOT:I = 0x0

.field public static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field public static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field public static final PLATFORM_RESET:I = 0x2

.field public static final PREV_DUMP_LOG_FILE:Ljava/lang/String; = "/data/log/prev_dump.log"

.field public static final PROC_RESET_REASON:Ljava/lang/String; = "/proc/reset_reason"

.field public static final PROC_RESET_RWC:Ljava/lang/String; = "/proc/reset_rwc"

.field public static final PROC_STORE_KMSG:Ljava/lang/String; = "/proc/store_lastkmsg"

.field public static final PROP_BOOT_REASON:Ljava/lang/String; = "ro.boot.bootreason"

.field public static final PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field public static final PROP_ISRB_HAVESENTLOG:Ljava/lang/String; = "persist.sys.isrb_havesentlog"

.field public static final PROP_ISRB_RESCUEMODE:Ljava/lang/String; = "persist.sys.rescue_mode"

.field public static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "persist.sys.rescue_level"

.field public static final PROP_SYS_EMERGENCY_RESET:Ljava/lang/String; = "persist.sys.emergency_reset"

.field public static final REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field public static final RESCUEPARTY_LOG:Ljava/lang/String; = "/data/log/rescueparty_log"

.field public static final SERVICE_ID:Ljava/lang/String; = "ny6xfd3iri"

.field public static final SHUTDOWN_METRICS_FILE:Ljava/lang/String; = "/data/system/shutdown-metrics.txt"

.field public static final SHUTDOWN_TRON_METRICS_PREFIX:Ljava/lang/String; = "shutdown_"

.field public static SYSTEM_TYPE_LSI:Ljava/lang/String; = null

.field public static SYSTEM_TYPE_MTK:Ljava/lang/String; = null

.field public static SYSTEM_TYPE_PLATFORM:Ljava/lang/String; = null

.field public static SYSTEM_TYPE_QCOM:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "BootReceiver"

.field public static final TAG_TOMBSTONE:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field public static final TAG_TOMBSTONE_PROTO:Ljava/lang/String; = "SYSTEM_TOMBSTONE_PROTO"

.field public static final TAG_TRUNCATED:Ljava/lang/String; = "[[TRUNCATED]]\n"

.field public static final UMOUNT_STATUS_NOT_AVAILABLE:I = 0x4

.field public static final UNKNOWN_PLATFORM_RESET_LOG_FILE:Ljava/lang/String; = "/data/log/unknown_platform_reset.log"

.field public static final UPLOAD_MO:Ljava/lang/String; = "uploadMO"

.field public static final lastHeaderFile:Ljava/io/File;

.field public static logFileKernel:Ljava/lang/String;

.field public static procRrReadDone:Z

.field public static procRrValue:Ljava/lang/String;

.field public static final sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

.field public static final sFile:Landroid/util/AtomicFile;

.field public static sSentReports:I

.field public static sStoreLastKmsgReadDone:Z

.field public static sStoreLastKmsgVal:I

.field public static storeExtraInfo:Ljava/lang/String;


# instance fields
.field public EVENT_ID:Ljava/lang/String;

.field public LOG_FILE:Ljava/lang/String;

.field public RESULT_CODE:Ljava/lang/String;

.field public isRescueParty:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public reset:I

.field public saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;


# direct methods
.method public static synthetic $r8$lambda$cpNbcITDVs8e0Y5dE6G8sGzCsdc(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/BootReceiver;->lambda$getANRFileName$1(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yXGGBcp3JSYDiOOjBf_Spylmmqg(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/BootReceiver;->lambda$getDumpFilename$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/BootReceiver;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProcResetReason(Lcom/android/server/BootReceiver;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->getProcResetReason()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misStoreLastKmsg(Lcom/android/server/BootReceiver;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->isStoreLastKmsg()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->logLastAboxMsg(Ljava/util/zip/ZipOutputStream;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveOldUpdatePackages(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BootReceiver;->waitUntileRRpDone(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetlogFileKernel()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSentReports()I
    .registers 1

    sget v0, Lcom/android/server/BootReceiver;->sSentReports:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetstoreExtraInfo()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputlogFileKernel(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsSentReports(I)V
    .registers 1

    sput p0, Lcom/android/server/BootReceiver;->sSentReports:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputstoreExtraInfo(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x10000

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const v2, 0x18000

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    sput v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1c

    const/high16 v3, 0x30000

    :cond_1c
    sput v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 129
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 130
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "log-files.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "log-files"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 132
    new-instance v0, Ljava/io/File;

    .line 133
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "last-header.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    const-string v0, "early"

    const-string v2, "default"

    const-string/jumbo v3, "late"

    .line 143
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    const-string v0, "/sys/fs/pstore/console-ramoops"

    const-string v2, "/proc/last_kmsg"

    .line 146
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 165
    sput v1, Lcom/android/server/BootReceiver;->sSentReports:I

    const-string v0, "com.samsung.android.voc.action.SYSTEM_ERROR"

    .line 168
    sput-object v0, Lcom/android/server/BootReceiver;->ACTION_SYSTEM_ERROR:Ljava/lang/String;

    const-string v0, "com.samsung.android.voc.extra.SYSTEM_TYPE"

    .line 169
    sput-object v0, Lcom/android/server/BootReceiver;->EXTRA_SYSTEM_TYPE:Ljava/lang/String;

    const-string v0, "com.samsung.android.voc.extra.RESET_REASON"

    .line 170
    sput-object v0, Lcom/android/server/BootReceiver;->EXTRA_RESET_REASON:Ljava/lang/String;

    const-string v0, "com.samsung.android.voc.extra.LOG_PATH"

    .line 171
    sput-object v0, Lcom/android/server/BootReceiver;->EXTRA_LOG_PATH:Ljava/lang/String;

    const-string v0, "KERNEL_L"

    .line 172
    sput-object v0, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_LSI:Ljava/lang/String;

    const-string v0, "KERNEL_Q"

    .line 173
    sput-object v0, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_QCOM:Ljava/lang/String;

    const-string v0, "KERNEL_M"

    .line 174
    sput-object v0, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_MTK:Ljava/lang/String;

    const-string v0, "PLATFORM"

    .line 175
    sput-object v0, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_PLATFORM:Ljava/lang/String;

    const-string v0, ""

    .line 213
    sput-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 214
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 391
    sput-boolean v1, Lcom/android/server/BootReceiver;->sStoreLastKmsgReadDone:Z

    const/4 v2, -0x1

    .line 392
    sput v2, Lcom/android/server/BootReceiver;->sStoreLastKmsgVal:I

    .line 421
    sput-boolean v1, Lcom/android/server/BootReceiver;->procRrReadDone:Z

    .line 422
    sput-object v0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    .line 1834
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>()V

    sput-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/android/server/BootReceiver;->reset:I

    .line 190
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/android/server/BootReceiver;->isRescueParty:Z

    .line 215
    iput-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 218
    iput-object v0, p0, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 228
    iput-object v0, p0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_c8

    .line 1947
    invoke-virtual {p0, p4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_c8

    :cond_a
    const-string v0, "BootReceiver"

    const-string v1, "Copying audit failures to DropBox"

    .line 1948
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/last_kmsg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    .line 1953
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/fs/pstore/console-ramoops"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3c

    .line 1956
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/fs/pstore/console-ramoops-0"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    :cond_3c
    cmp-long v4, v2, v4

    if-gtz v4, :cond_41

    return-void

    .line 1963
    :cond_41
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_56

    return-void

    .line 1967
    :cond_56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "[[TRUNCATED]]\n"

    .line 1969
    invoke-static {v1, p3, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1970
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 1971
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_70
    if-ge v3, v2, :cond_91

    aget-object v4, p1, v3

    const-string v5, "audit"

    .line 1972
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 1976
    :cond_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " worth of audits to DropBox"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public static addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 1898
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_51

    .line 1905
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_51

    .line 1907
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1908
    invoke-static {v0, p1}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_15

    return-void

    :cond_15
    const-string p1, "[[TRUNCATED]]\n"

    .line 1912
    invoke-static {v0, p5, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SYSTEM_TOMBSTONE"

    .line 1915
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, ">>> system_server <<<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    const-string/jumbo p1, "system_server_native_crash"

    .line 1916
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1918
    :cond_43
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    const/16 p1, 0xba

    .line 1919
    invoke-static {p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1921
    :cond_4e
    invoke-static {p0, p6, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_51
    :goto_51
    return-void
.end method

.method public static addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    move-object/from16 v5, p4

    if-eqz v0, :cond_10

    .line 1984
    invoke-virtual {v0, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_10

    :cond_e
    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    :goto_10
    move v3, v2

    :goto_11
    const-string v4, "BootReceiver"

    const-string v6, "Checking for fsck errors"

    .line 1988
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v6, Ljava/io/File;

    const-string v7, "/dev/fscklogs/log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2a

    return-void

    :cond_2a
    const-string v7, "[[TRUNCATED]]\n"

    move/from16 v8, p3

    .line 1994
    invoke-static {v6, v8, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    .line 1995
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v10, "\n"

    .line 1996
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1999
    array-length v10, v7

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_42
    if-ge v2, v10, :cond_80

    aget-object v14, v7, v2

    const-string v15, "FILE SYSTEM WAS MODIFIED"

    .line 2000
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_50

    const/4 v11, 0x1

    goto :goto_7b

    :cond_50
    const-string v15, "fs_stat"

    .line 2002
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7b

    .line 2003
    invoke-virtual {v9, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 2004
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_67

    .line 2005
    invoke-static {v15, v7, v12, v13}, Lcom/android/server/BootReceiver;->handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V

    move v12, v13

    goto :goto_7b

    .line 2008
    :cond_67
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot parse fs_stat:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    :goto_7b
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_80
    if-eqz v3, :cond_93

    if-eqz v11, :cond_93

    const-string v3, "/dev/fscklogs/log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 2015
    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2019
    :cond_93
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1882
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    sget v1, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    add-int/2addr v1, v0

    const/high16 v2, 0x30000

    if-le v1, v2, :cond_18

    if-le v2, v0, :cond_17

    sub-int/2addr v2, v0

    neg-int p5, v2

    goto :goto_18

    :cond_17
    const/4 p5, 0x0

    :cond_18
    :goto_18
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 1892
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to DropBox ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p0, p2

    .line 1941
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p0, p3

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const p1, 0x13c6a

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static addTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V
    .registers 11

    .line 1846
    const-class v0, Landroid/os/DropBoxManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/DropBoxManager;

    const-string p0, "BootReceiver"

    if-nez v0, :cond_13

    const-string p1, "Can\'t log tombstone: DropBoxManager not available"

    .line 1848
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1855
    :cond_13
    sget-object v1, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    const-string v2, "SYSTEM_TOMBSTONE"

    .line 1856
    invoke-virtual {v1, v2, p3}, Lcom/android/server/am/DropboxRateLimiter;->shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    move-result-object p3

    .line 1857
    invoke-virtual {p3}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->shouldRateLimit()Z

    move-result v1

    if-eqz v1, :cond_22

    return-void

    .line 1859
    :cond_22
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v6

    if-eqz p2, :cond_35

    .line 1862
    :try_start_28
    invoke-static {p1, v6}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p2, "SYSTEM_TOMBSTONE_PROTO"

    const/4 p3, 0x0

    .line 1863
    invoke-virtual {v0, p2, p1, p3}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    goto :goto_5f

    .line 1867
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    invoke-virtual {p3}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->createHeader()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1869
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v5, "SYSTEM_TOMBSTONE"

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_58} :catch_59

    goto :goto_5f

    :catch_59
    move-exception p1

    const-string p2, "Can\'t log tombstone"

    .line 1873
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    :cond_5f
    :goto_5f
    invoke-static {v6}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    return-void
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_179

    const-string v2, "Pass ([1-9]E?):"

    .line 2216
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    .line 2217
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v6, ""

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v6, p3

    :goto_1c
    const-string v11, "fs_stat, partition:"

    const-string v12, "BootReceiver"

    const/4 v13, 0x1

    move/from16 v14, p4

    if-ge v6, v14, :cond_11f

    .line 2225
    aget-object v15, p2, v6

    const-string v4, "FILE SYSTEM WAS MODIFIED"

    .line 2226
    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto/16 :goto_11f

    :cond_31
    const-string v4, "Pass "

    .line 2228
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2229
    invoke-virtual {v2, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2230
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_47

    .line 2231
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :cond_47
    move v4, v13

    goto/16 :goto_11c

    :cond_4a
    const-string v4, "Inode "

    .line 2233
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_86

    .line 2234
    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2235
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 2237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found tree optimization:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v13

    move v8, v4

    goto/16 :goto_11c

    :cond_82
    move v5, v13

    move-object v4, v15

    goto/16 :goto_121

    :cond_86
    const-string v4, "[QUOTA WARNING]"

    .line 2244
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v13, "5"

    if-eqz v4, :cond_ba

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 2245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found quota warning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_b7

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_121

    :cond_b7
    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_11c

    :cond_ba
    const-string v4, "Update quota info"

    .line 2252
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    goto :goto_11b

    :cond_c9
    const-string v4, "Timestamp(s) on inode"

    .line 2254
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_109

    const-string v4, "beyond 2310-04-04 are likely pre-1970"

    .line 2255
    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 2256
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 2257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found timestamp adjustment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v6, 0x1

    .line 2260
    aget-object v5, p2, v4

    const-string v10, "Fix? yes"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_106

    move v6, v4

    :cond_106
    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_11c

    .line 2265
    :cond_109
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2267
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11b

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11b

    const/4 v5, 0x1

    goto :goto_121

    :cond_11b
    :goto_11b
    const/4 v4, 0x1

    :goto_11c
    add-int/2addr v6, v4

    goto/16 :goto_1c

    :cond_11f
    :goto_11f
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_121
    if-eqz v5, :cond_140

    if-eqz v4, :cond_179

    .line 2276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fix:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    :cond_140
    if-eqz v9, :cond_159

    if-nez v8, :cond_159

    .line 2279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fs_stat, got quota fix without tree optimization, partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    :cond_159
    if-eqz v8, :cond_15d

    if-nez v9, :cond_15f

    :cond_15d
    if-eqz v10, :cond_179

    .line 2283
    :cond_15f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fix ignored"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, v1, -0x401

    goto :goto_17a

    :cond_179
    :goto_179
    move v0, v1

    :goto_17a
    return v0
.end method

.method public static getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1558
    invoke-static {}, Lcom/android/server/BootReceiver;->getPreviousBootHeaders()Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-static {}, Lcom/android/server/BootReceiver;->getCurrentBootHeaders()Ljava/lang/String;

    move-result-object v1

    .line 1562
    :try_start_8
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_27

    :catch_e
    move-exception v2

    .line 1564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootReceiver"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    if-nez v0, :cond_3c

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPrevious: false\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1573
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPrevious: true\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentBootHeaders()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Build: "

    .line 1545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hardware: "

    .line 1546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Revision: "

    .line 1547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ro.revision"

    const-string v3, ""

    .line 1548
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bootloader: "

    .line 1549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Radio: "

    .line 1550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Kernel: "

    .line 1551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    const-string v4, "...\n"

    .line 1552
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousBootHeaders()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1537
    :try_start_1
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_8

    :catch_8
    return-object v0
.end method

.method public static handleFsckFsStat(Ljava/util/regex/Matcher;[Ljava/lang/String;II)V
    .registers 8

    const-string v0, "BootReceiver"

    const/4 v1, 0x1

    .line 2292
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 2295
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_14} :catch_50

    .line 2300
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result p0

    const-string/jumbo p1, "userdata"

    .line 2301
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    const-string p1, "data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    :cond_29
    const/16 p1, 0xf2

    const/4 p2, 0x3

    .line 2302
    invoke-static {p1, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 2307
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fs_stat, partition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stat:0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2297
    :catch_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot parse fs_stat: partition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stat:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$getANRFileName$1(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "anr_"

    .line 1123
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getDumpFilename$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "zip"

    .line 1070
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "gz"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static logFsMountTime()V
    .registers 8

    .line 2023
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_62

    aget-object v4, v0, v3

    .line 2024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro.boottime.init.mount_all."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5f

    .line 2027
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_64

    goto :goto_4e

    :sswitch_2d
    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_4e

    :cond_36
    const/4 v6, 0x2

    goto :goto_4e

    :sswitch_38
    const-string v7, "early"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_4e

    :cond_41
    const/4 v6, 0x1

    goto :goto_4e

    :sswitch_43
    const-string/jumbo v7, "late"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_4e

    :cond_4d
    move v6, v2

    :goto_4e
    packed-switch v6, :pswitch_data_72

    goto :goto_5f

    :pswitch_52
    const/16 v4, 0xa

    goto :goto_5a

    :pswitch_55
    const/16 v4, 0xb

    goto :goto_5a

    :pswitch_58
    const/16 v4, 0xc

    :goto_5a
    const/16 v6, 0xef

    .line 2046
    invoke-static {v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x3292a6 -> :sswitch_43
        0x5bd1763 -> :sswitch_38
        0x5c13d641 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
    .end packed-switch
.end method

.method public static logFsShutdownTime()V
    .registers 8

    const-string v0, "BootReceiver"

    .line 2157
    sget-object v1, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    if-ge v3, v2, :cond_19

    aget-object v5, v1, v3

    .line 2158
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_19
    move-object v6, v4

    :cond_1a
    if-nez v6, :cond_1d

    return-void

    :cond_1d
    const/16 v1, -0x4000

    .line 2171
    :try_start_1f
    invoke-static {v6, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_83

    const/16 v2, 0x8

    const-string/jumbo v3, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    .line 2176
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2177
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2178
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/16 v3, 0xf2

    const/4 v4, 0x2

    if-eqz v2, :cond_79

    const/16 v2, 0xef

    const/16 v5, 0x9

    const/4 v6, 0x1

    .line 2181
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2179
    invoke-static {v2, v5, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 2184
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2182
    invoke-static {v3, v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 2185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot_fs_shutdown,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_79
    const/4 v1, 0x4

    .line 2190
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    const-string v1, "boot_fs_shutdown, string not found"

    .line 2193
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void

    :catch_83
    move-exception v1

    const-string v2, "cannot read last msg"

    .line 2173
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "BootReceiver"

    if-eqz p0, :cond_2d

    const-string/jumbo v1, "y"

    .line 2116
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p0, 0x1

    goto :goto_33

    :cond_f
    const-string/jumbo v1, "n"

    .line 2118
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value for reboot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_2d
    const-string p0, "No value received for reboot"

    .line 2122
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    const/4 p0, 0x0

    :goto_33
    move v2, p0

    if-eqz p1, :cond_37

    goto :goto_3e

    :cond_37
    const-string p0, "No value received for shutdown reason"

    .line 2128
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "<EMPTY>"

    :goto_3e
    move-object v3, p1

    const-wide/16 p0, 0x0

    if-eqz p2, :cond_5d

    .line 2133
    :try_start_43
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_47} :catch_48

    goto :goto_63

    .line 2135
    :catch_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse shutdown start time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_5d
    const-string v1, "No value received for shutdown start time"

    .line 2138
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    move-wide v4, p0

    :goto_63
    if-eqz p3, :cond_7f

    .line 2143
    :try_start_65
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_69} :catch_6a

    goto :goto_84

    .line 2145
    :catch_6a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse shutdown duration: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_7f
    const-string p2, "No value received for shutdown duration"

    .line 2148
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    move-wide v6, p0

    const/16 v1, 0x38

    .line 2151
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JJ)V

    return-void
.end method

.method public static logSystemServerShutdownTimeMetrics()V
    .registers 15

    .line 2054
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "BootReceiver"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    .line 2058
    :try_start_11
    invoke-static {v0, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_2c

    :catch_16
    move-exception v1

    .line 2060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    move-object v1, v3

    .line 2063
    :goto_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ae

    const-string v5, ","

    .line 2068
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2069
    array-length v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move v10, v4

    :goto_3d
    if-ge v10, v6, :cond_ab

    aget-object v11, v5, v10

    const-string v12, ":"

    .line 2070
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2071
    array-length v12, v11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_60

    .line 2072
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrong format of shutdown metrics - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 2076
    :cond_60
    aget-object v12, v11, v4

    const-string/jumbo v13, "shutdown_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_80

    .line 2077
    aget-object v12, v11, v4

    aget-object v14, v11, v13

    invoke-static {v12, v14}, Lcom/android/server/BootReceiver;->logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    aget-object v12, v11, v4

    const-string/jumbo v14, "shutdown_system_server"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 2079
    aget-object v9, v11, v13

    .line 2082
    :cond_80
    aget-object v12, v11, v4

    const-string/jumbo v14, "reboot"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 2083
    aget-object v3, v11, v13

    goto :goto_a8

    .line 2084
    :cond_8e
    aget-object v12, v11, v4

    const-string/jumbo v14, "reason"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 2085
    aget-object v7, v11, v13

    goto :goto_a8

    .line 2086
    :cond_9c
    aget-object v12, v11, v4

    const-string v14, "begin_shutdown"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a8

    .line 2087
    aget-object v8, v11, v13

    :cond_a8
    :goto_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 2090
    :cond_ab
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/BootReceiver;->logStatsdShutdownAtom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :cond_ae
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static logTronShutdownMetric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2098
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_b

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    .line 2104
    invoke-static {v0, p0, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a
    return-void

    .line 2100
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse metric "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " int value - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readTimestamps()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2311
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 2312
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2314
    :try_start_a
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_121
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_102
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_e} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_e} :catch_c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_e} :catch_a7
    .catchall {:try_start_a .. :try_end_e} :catchall_a1

    .line 2315
    :try_start_e
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 2318
    :goto_12
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1c

    if-eq v6, v3, :cond_1c

    goto :goto_12

    :cond_1c
    if-ne v6, v7, :cond_8c

    .line 2327
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 2328
    :cond_22
    :goto_22
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v3, :cond_78

    const/4 v8, 0x3

    if-ne v7, v8, :cond_31

    .line 2329
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_78

    :cond_31
    if-eq v7, v8, :cond_22

    const/4 v8, 0x4

    if-ne v7, v8, :cond_37

    goto :goto_22

    .line 2334
    :cond_37
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "log"

    .line 2335
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    const-string v7, "filename"

    const/4 v8, 0x0

    .line 2336
    invoke-interface {v5, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "timestamp"

    .line 2337
    invoke-interface {v5, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 2338
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_5a
    const-string v7, "BootReceiver"

    .line 2340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_77
    .catchall {:try_start_e .. :try_end_77} :catchall_95

    goto :goto_22

    :cond_78
    if-eqz v4, :cond_146

    .line 2345
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_89
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_86
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7d} :catch_83
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_7d} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7d} :catch_7f
    .catchall {:try_start_7a .. :try_end_7d} :catchall_11f

    goto/16 :goto_146

    :catch_7f
    move-exception v2

    goto :goto_ab

    :catch_81
    move-exception v2

    goto :goto_cc

    :catch_83
    move-exception v2

    goto/16 :goto_e9

    :catch_86
    move-exception v2

    goto/16 :goto_106

    :catch_89
    move v2, v3

    goto/16 :goto_121

    .line 2324
    :cond_8c
    :try_start_8c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v3

    if-eqz v4, :cond_a0

    .line 2314
    :try_start_98
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v4

    :try_start_9d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a0
    :goto_a0
    throw v3
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_a1} :catch_121
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_102
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_a1} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_a1} :catch_c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_a1} :catch_a7
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    goto/16 :goto_148

    :catch_a7
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    :goto_ab
    :try_start_ab
    const-string v4, "BootReceiver"

    .line 2355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_11f

    if-nez v3, :cond_146

    .line 2358
    :goto_c3
    :try_start_c3
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_14e

    goto/16 :goto_146

    :catch_c8
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    :goto_cc
    :try_start_cc
    const-string v4, "BootReceiver"

    .line 2353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_146

    goto :goto_c3

    :catch_e5
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    :goto_e9
    const-string v4, "BootReceiver"

    .line 2351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_146

    goto :goto_c3

    :catch_102
    move-exception v3

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    :goto_106
    const-string v4, "BootReceiver"

    .line 2349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_cc .. :try_end_11c} :catchall_11f

    if-nez v3, :cond_146

    goto :goto_c3

    :catchall_11f
    move-exception v2

    goto :goto_148

    :catch_121
    :goto_121
    :try_start_121
    const-string v3, "BootReceiver"

    .line 2346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing last log timestamp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_121 .. :try_end_142} :catchall_a1

    if-nez v2, :cond_146

    goto/16 :goto_c3

    .line 2361
    :cond_146
    :goto_146
    :try_start_146
    monitor-exit v0

    return-object v1

    :goto_148
    if-nez v3, :cond_14d

    .line 2358
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2360
    :cond_14d
    throw v2

    :catchall_14e
    move-exception v1

    .line 2362
    monitor-exit v0
    :try_end_150
    .catchall {:try_start_146 .. :try_end_150} :catchall_14e

    throw v1
.end method

.method public static recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_c

    return v3

    .line 1928
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 1929
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_25

    return v3

    .line 1933
    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static writeTimestamps(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2366
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 2369
    :try_start_3
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_7c
    .catchall {:try_start_3 .. :try_end_7} :catchall_7a

    .line 2376
    :try_start_7
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 2377
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "log-files"

    .line 2378
    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2380
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2381
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 2382
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "log"

    .line 2383
    invoke-interface {v2, v4, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "filename"

    .line 2384
    invoke-interface {v2, v4, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "timestamp"

    .line 2385
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v2, v4, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "log"

    .line 2386
    invoke-interface {v2, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1f

    :cond_4d
    const-string/jumbo p0, "log-files"

    .line 2389
    invoke-interface {v2, v4, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2390
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2392
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5b} :catch_5c
    .catchall {:try_start_7 .. :try_end_5b} :catchall_7a

    goto :goto_78

    :catch_5c
    move-exception p0

    :try_start_5d
    const-string v2, "BootReceiver"

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write timestamp file, using the backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2397
    :goto_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    goto :goto_95

    :catch_7c
    move-exception p0

    const-string v1, "BootReceiver"

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write timestamp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    monitor-exit v0

    return-void

    .line 2397
    :goto_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_5d .. :try_end_96} :catchall_7a

    throw p0
.end method


# virtual methods
.method public final GetPWatchdog()Ljava/lang/String;
    .registers 20

    const-string v1, "BootReceiver"

    .line 1136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1138
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\"(.*)\".*prio=\\d+ tid=(\\d+).*"

    .line 1149
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v5, "  at.*"

    .line 1150
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, ".*held by thread (\\d+)"

    .line 1151
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1158
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->getANRFileName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2c

    return-object v7

    .line 1160
    :cond_2c
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_f3

    .line 1161
    :try_start_31
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_f0

    const-string v12, ""

    move-object v15, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 1163
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e7

    const-string v9, "Cmd line: system_server"

    .line 1164
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 1165
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1166
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1167
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v13, v8

    goto :goto_62

    :cond_56
    if-eqz v13, :cond_62

    const-string v9, "----- end"

    .line 1169
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    goto/16 :goto_e7

    :cond_62
    :goto_62
    if-eqz v13, :cond_3d

    .line 1175
    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1177
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_8b

    const/4 v15, 0x2

    .line 1178
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1179
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-le v15, v14, :cond_7e

    move v14, v15

    .line 1182
    :cond_7e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-virtual {v3, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v15

    move-object v15, v9

    .line 1186
    :cond_8b
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1188
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 1189
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_a8

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .line 1191
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1192
    invoke-virtual {v3, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    :cond_a8
    move-object/from16 v18, v5

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    invoke-virtual {v3, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    :cond_c2
    move-object/from16 v18, v5

    .line 1199
    :goto_c4
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1201
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 1202
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    move-object/from16 v5, v18

    const/4 v8, 0x1

    goto/16 :goto_3d

    .line 1208
    :cond_e7
    :goto_e7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1211
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_ed} :catch_ee

    goto :goto_fc

    :catch_ee
    move-exception v0

    goto :goto_f7

    :catch_f0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_f6

    :catch_f3
    move-exception v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_f6
    const/4 v14, 0x0

    :goto_f7
    const-string v5, "getPWatchdog() Error"

    .line 1214
    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fc
    const/4 v5, 0x1

    add-int/2addr v14, v5

    .line 1218
    new-array v0, v14, [I

    const/4 v5, 0x0

    :goto_101
    if-ge v5, v14, :cond_109

    const/4 v6, 0x0

    .line 1220
    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_101

    .line 1222
    :cond_109
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_138

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1223
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v6, v0, v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    aput v6, v0, v7

    goto :goto_111

    :cond_138
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1229
    :goto_13a
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1bd

    .line 1232
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1233
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget v13, v0, v13

    if-nez v13, :cond_193

    .line 1234
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v7, v0, v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    aput v7, v0, v6

    .line 1235
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1236
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1ac

    :cond_193
    const/4 v13, 0x1

    .line 1239
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1240
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_14a

    :cond_1a9
    const/4 v13, 0x1

    move v7, v6

    move v6, v5

    :goto_1ac
    if-ne v6, v5, :cond_1b2

    move v5, v8

    move v6, v9

    move v8, v13

    goto :goto_1be

    .line 1250
    :cond_1b2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    move v6, v7

    goto/16 :goto_13a

    :cond_1bd
    const/4 v8, 0x0

    :goto_1be
    if-eqz v6, :cond_297

    .line 1253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_297

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d6

    goto/16 :goto_297

    .line 1267
    :cond_1d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"CAUSE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_217

    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",WAITLOCK\","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_228

    .line 1269
    :cond_217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DEADLOCK\","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    :goto_228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"STACK\":\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1273
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x31f

    if-lt v2, v3, :cond_292

    const/4 v2, 0x0

    .line 1274
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1276
    :cond_292
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_297
    :goto_297
    if-eqz v10, :cond_29f

    .line 1256
    :try_start_299
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto :goto_29f

    :catch_29d
    move-exception v0

    goto :goto_2a5

    :cond_29f
    :goto_29f
    if-eqz v11, :cond_2aa

    .line 1259
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_299 .. :try_end_2a4} :catch_29d

    goto :goto_2aa

    :goto_2a5
    const-string v2, "Failed to close in getPWatchdog()"

    .line 1262
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2aa
    :goto_2aa
    const/4 v1, 0x0

    return-object v1
.end method

.method public final GetRescuePartyLog()Ljava/lang/String;
    .registers 17

    const-string v1, "InsufficientLogInfo"

    const-string v2, "EmptyCrashBuffer"

    const-string v3, "NoLogFile"

    const-string v4, "\"CAUSE\":\""

    const-string v5, "\",\"STACK\":\""

    .line 251
    new-instance v6, Ljava/io/File;

    const-string v0, "/data/log/rescueparty_log"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 258
    :try_start_12
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_200
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_200
    .catchall {:try_start_12 .. :try_end_17} :catchall_1fa

    .line 259
    :try_start_17
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1c} :catch_1f7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1f7
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1f4

    .line 260
    :try_start_1c
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_21} :catch_1f1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_1f1
    .catchall {:try_start_1c .. :try_end_21} :catchall_1ef

    const/4 v9, 0x1

    .line 261
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a1

    const-string v15, "***"

    .line 262
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "Build"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "Revision"

    .line 263
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "ABI"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string/jumbo v15, "uid:"

    .line 264
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string/jumbo v15, "tagged_addr_ctrl:"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string/jumbo v15, "pac_enabled_keys:"

    .line 265
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "    lr"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "    x"

    .line 266
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_22

    const-string v15, "    sp"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7c

    goto :goto_22

    :cond_7c
    if-eqz v9, :cond_190

    const-string v15, "!@*** FATAL"

    .line 271
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_84} :catch_1ed
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_84} :catch_1ed
    .catchall {:try_start_22 .. :try_end_84} :catchall_2a6

    const-string v11, ")"

    const/16 v10, 0x9

    if-eqz v15, :cond_ae

    .line 272
    :try_start_8a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "system_server("

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "PROCESS: "

    .line 273
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c8

    :cond_ae
    const-string v7, "PLATFORM WATCHDOG RESET"

    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "system_server(watchdog)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c8
    const/4 v9, 0x0

    goto/16 :goto_22

    :cond_cb
    const-string v7, "Process: "

    .line 280
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_114

    .line 284
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e3

    const-string v8, "DeadSystemException"

    .line 285
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e3

    goto/16 :goto_22

    :cond_e3
    const-string v8, ", PID"

    .line 288
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.android.systemui"

    .line 289
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c8

    :cond_114
    const-string/jumbo v7, "pid: "

    .line 295
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v7, ">>> "

    .line 296
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    const-string v8, " <<<"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "system_server"

    .line 297
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_161

    const-string v8, "/system/bin/netd"

    .line 298
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_161

    const-string v8, "/system/bin/vold"

    .line 299
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_161

    const-string v8, "/system/bin/surfaceflinger"

    .line 300
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_161

    const-string v8, "/vendor/bin/hw/android.hardware.graphics"

    .line 301
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_161

    const-string/jumbo v8, "zygote"

    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 303
    :cond_161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "name: "

    .line 304
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    const-string v10, "  >>>"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c8

    .line 310
    :cond_190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_19f
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_19f} :catch_1ed
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_19f} :catch_1ed
    .catchall {:try_start_8a .. :try_end_19f} :catchall_2a6

    goto/16 :goto_22

    :cond_1a1
    if-eqz v9, :cond_1e2

    .line 317
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 318
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1c3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e2

    .line 321
    :cond_1c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e2

    .line 324
    :cond_1d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    :cond_1e2
    :goto_1e2
    :try_start_1e2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e5} :catch_1e5

    .line 328
    :catch_1e5
    :try_start_1e5
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1e8} :catch_1e8

    .line 329
    :catch_1e8
    :goto_1e8
    :try_start_1e8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_25b

    goto/16 :goto_25b

    :catch_1ed
    move-exception v0

    goto :goto_205

    :catchall_1ef
    move-exception v0

    goto :goto_1fd

    :catch_1f1
    move-exception v0

    move-object v14, v9

    goto :goto_204

    :catchall_1f4
    move-exception v0

    move-object v13, v9

    goto :goto_1fd

    :catch_1f7
    move-exception v0

    move-object v13, v9

    goto :goto_203

    :catchall_1fa
    move-exception v0

    move-object v12, v9

    move-object v13, v12

    :goto_1fd
    const/4 v10, 0x1

    goto/16 :goto_2a9

    :catch_200
    move-exception v0

    move-object v12, v9

    move-object v13, v12

    :goto_203
    move-object v14, v13

    :goto_204
    const/4 v9, 0x1

    :goto_205
    :try_start_205
    const-string v7, "BootReceiver"

    const-string v8, "GetRescuePartyLog() Error"

    .line 314
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20c
    .catchall {:try_start_205 .. :try_end_20c} :catchall_2a6

    if-eqz v9, :cond_24e

    .line 317
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 318
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_22e

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24d

    .line 321
    :cond_22e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24d

    .line 324
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24d
    move-object v4, v0

    :cond_24e
    if-eqz v14, :cond_253

    .line 327
    :try_start_250
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_253
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_253} :catch_253

    :catch_253
    :cond_253
    if-eqz v13, :cond_258

    .line 328
    :try_start_255
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_258} :catch_258

    :catch_258
    :cond_258
    if-eqz v12, :cond_25b

    goto :goto_1e8

    .line 331
    :catch_25b
    :cond_25b
    :goto_25b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0x320

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-string v2, "\""

    if-ge v0, v1, :cond_27e

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29d

    .line 334
    :cond_27e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0x320

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29d
    const-string v1, "\t"

    const-string v2, " "

    .line 336
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_2a6
    move-exception v0

    move v10, v9

    move-object v9, v14

    :goto_2a9
    if-eqz v10, :cond_2b4

    .line 317
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b4

    .line 318
    invoke-virtual {v6}, Ljava/io/File;->length()J

    :cond_2b4
    if-eqz v9, :cond_2b9

    .line 327
    :try_start_2b6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_2b9

    :catch_2b9
    :cond_2b9
    if-eqz v13, :cond_2be

    .line 328
    :try_start_2bb
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2be} :catch_2be

    :catch_2be
    :cond_2be
    if-eqz v12, :cond_2c3

    .line 329
    :try_start_2c0
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2c3} :catch_2c3

    .line 330
    :catch_2c3
    :cond_2c3
    throw v0
.end method

.method public final GetResetLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, ".*R[1-9].*"

    .line 1283
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->GetRescuePartyLog()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v1, "P|WD"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->GetPWatchdog()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    return-object v2

    :cond_1e
    const-string v2, "\"CAUSE\":\""

    const-string v3, "\"STACK\":\""

    const-string v4, ".*"

    .line 1300
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1301
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v6, "P|SF"

    const-string v7, "P|NT"

    const-string v8, "P|EX"

    sparse-switch v4, :sswitch_data_460

    :goto_34
    const/4 v4, -0x1

    goto :goto_6f

    :sswitch_36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_34

    :cond_3d
    const/4 v4, 0x5

    goto :goto_6f

    :sswitch_3f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_34

    :cond_46
    const/4 v4, 0x4

    goto :goto_6f

    :sswitch_48
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_34

    :cond_4f
    const/4 v4, 0x3

    goto :goto_6f

    :sswitch_51
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_34

    :cond_58
    const/4 v4, 0x2

    goto :goto_6f

    :sswitch_5a
    const-string v4, "N|RP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_34

    :cond_63
    const/4 v4, 0x1

    goto :goto_6f

    :sswitch_65
    const-string v4, "N|NP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    goto :goto_34

    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    const-string v14, "\","

    const-string v15, "\""

    const-string v5, ""

    const-string v9, ","

    packed-switch v4, :pswitch_data_47a

    return-object v5

    :pswitch_7b
    const-string v4, "PLATFORM WATCHDOG RESET"

    .line 1314
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    goto :goto_bc

    :pswitch_82
    const-string/jumbo v4, "pid: (\\d+).*surfaceflinger.*"

    .line 1307
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1308
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "graphics"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bc

    :pswitch_9c
    const-string/jumbo v4, "pid: (\\d+).*system_server.*|pid: (\\d+).*netd.*|pid: (\\d+).*zygote.*|pid: (\\d+).*vold.*"

    .line 1303
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "system"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bc

    :pswitch_b6
    const-string v4, ".*FATAL EXCEPTION IN SYSTEM PROCESS: (.*)"

    .line 1311
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    :goto_bc
    const-string v12, "[EFW]\\/(.*)\\((\\s*\\d+)\\): (.*)"

    .line 1328
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 1329
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string/jumbo v11, "logcat -v brief -b crash -d -t 300"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 1330
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1331
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v2

    .line 1333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .line 1335
    :goto_ee
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v11

    const-string v11, "("

    if-eqz v3, :cond_174

    .line 1336
    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1337
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-nez v19, :cond_105

    move-object/from16 v11, v18

    goto :goto_ee

    :cond_105
    move-object/from16 v19, v12

    move-object/from16 v20, v14

    const/4 v12, 0x1

    .line 1340
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v12, "AndroidRuntime"

    .line 1341
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12b

    const-string v12, "Watchdog"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12b

    const-string v12, "DEBUG"

    .line 1342
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_127

    goto :goto_12b

    :cond_127
    move-object/from16 v21, v5

    const/4 v12, 0x3

    goto :goto_16a

    :cond_12b
    :goto_12b
    const/4 v12, 0x2

    .line 1343
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v5

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_16a
    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v14, v20

    move-object/from16 v5, v21

    goto/16 :goto_ee

    :cond_174
    move-object/from16 v21, v5

    move-object/from16 v20, v14

    .line 1348
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17c
    :goto_17c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 1349
    iget-object v14, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v4, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1350
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_17c

    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    goto :goto_17c

    .line 1353
    :cond_19b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19f
    :goto_19f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 1354
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19f

    .line 1355
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    .line 1359
    :cond_1bb
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1db

    .line 1361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2ee

    if-gt v0, v1, :cond_1cb

    move v1, v0

    :cond_1cb
    sub-int/2addr v0, v1

    .line 1366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"CAUSE\":\"NO_LOG\",\"STACK\":\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1371
    :cond_1db
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ":"

    const-string v5, " "

    if-nez v2, :cond_30e

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    goto/16 :goto_30e

    .line 1398
    :cond_1ed
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_244

    .line 1399
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    :goto_1fb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "!@*** FATAL"

    .line 1400
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23f

    .line 1401
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1402
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_22e

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23d

    .line 1405
    :cond_22e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23d
    move-object v2, v1

    goto :goto_1fb

    .line 1408
    :cond_23f
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1fb

    .line 1412
    :cond_244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_308

    .line 1413
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    :cond_252
    :goto_252
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_300

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "!@"

    .line 1414
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26b

    const/4 v7, 0x2

    .line 1415
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_26b
    const-string v7, "*** FATAL"

    .line 1417
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a3

    .line 1418
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1419
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_292

    .line 1420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a1

    .line 1422
    :cond_292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a1
    const/4 v10, 0x2

    goto :goto_252

    :cond_2a3
    const-string v7, "annotated stack trace:"

    .line 1424
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f1

    const-string v7, "annotated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x2

    if-lt v8, v10, :cond_2f2

    .line 1425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v6, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_252

    :cond_2f1
    const/4 v10, 0x2

    :cond_2f2
    const-string v7, "    at"

    .line 1427
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_252

    .line 1428
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_252

    :cond_300
    const-string v0, "WAIT"

    .line 1431
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3df

    :cond_308
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_3e0

    .line 1372
    :cond_30e
    :goto_30e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    :goto_316
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "signal"

    .line 1373
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34a

    .line 1375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_344
    move-object/from16 v12, v21

    const/4 v7, 0x5

    const/4 v8, -0x1

    goto/16 :goto_3db

    :cond_34a
    const-string v6, "Abort message"

    .line 1376
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d3

    const-string v6, "#0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35c

    goto/16 :goto_3d3

    :cond_35c
    const-string/jumbo v6, "pid: "

    .line 1378
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_344

    const-string v6, "  >>>"

    .line 1379
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_36f

    goto :goto_316

    :cond_36f
    const-string v7, ">>>"

    .line 1383
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v21

    .line 1384
    invoke-virtual {v10, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "<<<"

    .line 1385
    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1386
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1387
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1388
    invoke-virtual {v4, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ", "

    .line 1392
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1393
    array-length v6, v4

    const/4 v7, 0x6

    if-lt v6, v7, :cond_3d1

    .line 1394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    aget-object v2, v4, v7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3db

    :cond_3d1
    const/4 v7, 0x5

    goto :goto_3db

    :cond_3d3
    :goto_3d3
    move-object/from16 v12, v21

    const/4 v7, 0x5

    const/4 v8, -0x1

    .line 1377
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3db
    move-object/from16 v21, v12

    goto/16 :goto_316

    :cond_3df
    :goto_3df
    move-object v3, v1

    .line 1434
    :cond_3e0
    :goto_3e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    .line 1435
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x31f

    if-lt v1, v2, :cond_407

    const/4 v1, 0x0

    .line 1438
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1441
    :cond_407
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_40c
    move-object/from16 v17, v3

    move-object v1, v14

    const-string/jumbo v0, "sys.boot.reason"

    const-string/jumbo v3, "unknown"

    .line 1318
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1320
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_447

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_44a

    :cond_447
    move-object/from16 v5, v17

    move-object v3, v5

    .line 1323
    :goto_44a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_460
    .sparse-switch
        0x255030 -> :sswitch_65
        0x2550ac -> :sswitch_5a
        0x2637df -> :sswitch_51
        0x2638f2 -> :sswitch_48
        0x26397f -> :sswitch_3f
        0x2639f9 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_47a
    .packed-switch 0x0
        :pswitch_40c
        :pswitch_40c
        :pswitch_b6
        :pswitch_9c
        :pswitch_82
        :pswitch_7b
    .end packed-switch
.end method

.method public final getANRFileName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/anr"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_14
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/anr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDumpFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "P|UR"

    .line 1059
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    new-array p0, v3, [Ljava/lang/String;

    const-string p1, "/data/log/unknown_platform_reset.log"

    .line 1060
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 1061
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-array v0, v3, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return-object p1

    :cond_2a
    return-object v2

    .line 1070
    :cond_2b
    new-instance v1, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_37

    return-object v2

    .line 1076
    :cond_37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_120

    goto/16 :goto_c5

    :sswitch_44
    const-string v4, "P|WD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto/16 :goto_c5

    :cond_4e
    const/16 v1, 0xa

    goto/16 :goto_c5

    :sswitch_52
    const-string v4, "P|SF"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_c5

    :cond_5c
    const/16 v1, 0x9

    goto/16 :goto_c5

    :sswitch_60
    const-string v4, "P|NT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_c5

    :cond_6a
    const/16 v1, 0x8

    goto/16 :goto_c5

    :sswitch_6e
    const-string v4, "P|EX"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_c5

    :cond_77
    const/4 v1, 0x7

    goto :goto_c5

    :sswitch_79
    const-string v4, "K|WP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    goto :goto_c5

    :cond_82
    const/4 v1, 0x6

    goto :goto_c5

    :sswitch_84
    const-string v4, "K|TP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    goto :goto_c5

    :cond_8d
    const/4 v1, 0x5

    goto :goto_c5

    :sswitch_8f
    const-string v4, "K|SP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_98

    goto :goto_c5

    :cond_98
    const/4 v1, 0x4

    goto :goto_c5

    :sswitch_9a
    const-string v4, "K|PP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a3

    goto :goto_c5

    :cond_a3
    const/4 v1, 0x3

    goto :goto_c5

    :sswitch_a5
    const-string v4, "K|KP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    goto :goto_c5

    :cond_ae
    const/4 v1, 0x2

    goto :goto_c5

    :sswitch_b0
    const-string v4, "K|DP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    goto :goto_c5

    :cond_b9
    const/4 v1, 0x1

    goto :goto_c5

    :sswitch_bb
    const-string v4, "K|CP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c4

    goto :goto_c5

    :cond_c4
    move v1, v3

    :goto_c5
    const-string/jumbo p1, "sys_error"

    const-string/jumbo v4, "sys_native"

    packed-switch v1, :pswitch_data_14e

    .line 1099
    iget-boolean p0, p0, Lcom/android/server/BootReceiver;->isRescueParty:Z

    if-eqz p0, :cond_d3

    goto :goto_dd

    :cond_d3
    return-object v2

    :pswitch_d4
    const-string/jumbo p1, "sys_watchdog"

    goto :goto_dd

    :pswitch_d8
    move-object p1, v4

    goto :goto_dd

    :pswitch_da
    const-string/jumbo p1, "lastkmsg"

    .line 1106
    :goto_dd
    :pswitch_dd
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1108
    array-length p0, v0

    :goto_e1
    if-ge v3, p0, :cond_11f

    aget-object v1, v0, v3

    .line 1109
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpstate_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    :cond_11f
    return-object v2

    :sswitch_data_120
    .sparse-switch
        0x23f1be -> :sswitch_bb
        0x23f1dd -> :sswitch_b0
        0x23f2b6 -> :sswitch_a5
        0x23f351 -> :sswitch_9a
        0x23f3ae -> :sswitch_8f
        0x23f3cd -> :sswitch_84
        0x23f42a -> :sswitch_79
        0x2637df -> :sswitch_6e
        0x2638f2 -> :sswitch_60
        0x26397f -> :sswitch_52
        0x2639f9 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_dd
        :pswitch_d8
        :pswitch_d8
        :pswitch_d4
    .end packed-switch
.end method

.method public final getProcResetReason()Ljava/lang/String;
    .registers 4

    .line 424
    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/reset_reason"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    sget-boolean v0, Lcom/android/server/BootReceiver;->procRrReadDone:Z

    if-nez v0, :cond_6f

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "BootReceiver"

    if-nez v0, :cond_19

    const-string p0, "PROC_RESET_REASON : no exist"

    .line 428
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_19
    const/16 v0, 0x400

    :try_start_1b
    const-string v2, "\n"

    .line 431
    invoke-static {p0, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception p0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROC_RESET_REASON : read fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reset_reason = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    if-eqz p0, :cond_64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_64

    .line 437
    sget-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    .line 441
    :cond_64
    :goto_64
    sget-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    if-nez p0, :cond_6c

    const-string p0, "NA"

    .line 442
    sput-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    :cond_6c
    const/4 p0, 0x1

    .line 444
    sput-boolean p0, Lcom/android/server/BootReceiver;->procRrReadDone:Z

    .line 447
    :cond_6f
    sget-object p0, Lcom/android/server/BootReceiver;->procRrValue:Ljava/lang/String;

    return-object p0
.end method

.method public final isNotRescueParty()Z
    .registers 7

    const-string/jumbo v0, "persist.sys.rescue_level"

    const/4 v1, 0x0

    .line 352
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "persist.sys.emergency_reset"

    const-string v4, ""

    .line 353
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_15

    return v4

    :cond_15
    const/16 v5, 0x8

    if-ne v2, v5, :cond_27

    const-string v5, "emergency"

    .line 360
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string p0, "0"

    .line 361
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 365
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "N|R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.reset_reason"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iput-boolean v4, p0, Lcom/android/server/BootReceiver;->isRescueParty:Z

    return v1
.end method

.method public final isStoreLastKmsg()I
    .registers 6

    .line 394
    new-instance p0, Ljava/io/File;

    const-string v0, "/proc/store_lastkmsg"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    sget-boolean v0, Lcom/android/server/BootReceiver;->sStoreLastKmsgReadDone:Z

    if-nez v0, :cond_54

    .line 398
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "BootReceiver"

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    const-string p0, "PROC_STORE_KMSG : no exist"

    .line 399
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_1a
    const/4 v0, 0x0

    .line 401
    sput v0, Lcom/android/server/BootReceiver;->sStoreLastKmsgVal:I

    const/16 v3, 0x400

    :try_start_1f
    const-string v4, "\n"

    .line 403
    invoke-static {p0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_3c

    :catch_26
    move-exception p0

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROC_STORE_KMSG : read fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_3c
    if-eqz p0, :cond_52

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_52

    .line 409
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 411
    sput v2, Lcom/android/server/BootReceiver;->sStoreLastKmsgVal:I

    .line 415
    :cond_52
    :goto_52
    sput-boolean v2, Lcom/android/server/BootReceiver;->sStoreLastKmsgReadDone:Z

    .line 418
    :cond_54
    sget p0, Lcom/android/server/BootReceiver;->sStoreLastKmsgVal:I

    return p0
.end method

.method public final logBootEvents(Landroid/content/Context;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x800

    new-array v3, v0, [B

    const-string v0, "dropbox"

    .line 1585
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/DropBoxManager;

    .line 1586
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "ro.boot.bootreason"

    const/4 v13, 0x0

    .line 1587
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1591
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3e

    if-eqz v11, :cond_3e

    .line 1593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SYSTEM_RECOVERY_LOG"

    invoke-virtual {v11, v6, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    const-string v14, ""

    if-eqz v0, :cond_64

    .line 1598
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x200

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "\n"

    .line 1599
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Boot info:\n"

    .line 1600
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Last boot reason: "

    .line 1601
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_65

    :cond_64
    move-object v15, v14

    .line 1605
    :goto_65
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v10

    const-string/jumbo v0, "sys.is_members"

    const-string v5, "exist"

    .line 1609
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "BootReceiver"

    const-string/jumbo v0, "prepare setting eRR.p "

    .line 1611
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.boot.errp"

    const-string v5, "0"

    .line 1612
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.runtime.firstboot"

    const-wide/16 v5, 0x0

    .line 1614
    invoke-static {v0, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v5, v7, v5

    const-string/jumbo v8, "resetreason"

    const-string v7, "ctl.restart"

    const-string/jumbo v13, "sys.reset_reason"

    move-object/from16 v16, v3

    if-nez v5, :cond_188

    .line 1615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1616
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_aa

    const-string v0, "SYSTEM_BOOT"

    .line 1617
    invoke-virtual {v11, v0, v12}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    const-string v0, "HqmManagerService"

    .line 1621
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v0, "audio"

    .line 1624
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->logResetReason()V

    .line 1630
    new-instance v0, Ljava/io/File;

    const-string v5, "/proc/reset_rwc"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->getProcResetReason()Ljava/lang/String;

    move-result-object v5

    .line 1633
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    const-string v6, "%Y%m%d_%H%M%S"

    .line 1634
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SYSTEM_LAST_KMSG_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1637
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_134

    move-object/from16 v20, v6

    const/16 v6, 0x400

    move-object/from16 v21, v8

    const/4 v8, 0x0

    .line 1639
    :try_start_fd
    invoke-static {v0, v6, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_11c} :catch_11d

    goto :goto_13a

    :catch_11d
    move-exception v0

    .line 1643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readTextFile error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_138

    :cond_134
    move-object/from16 v20, v6

    move-object/from16 v21, v8

    :goto_138
    move-object/from16 v0, v20

    .line 1648
    :goto_13a
    sget v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    neg-int v8, v3

    const-string v20, "/proc/last_kmsg"

    move-object v4, v11

    move-object v5, v10

    const/4 v7, 0x2

    move-object v6, v12

    move v1, v7

    move-object/from16 v2, v19

    move-object v7, v15

    move/from16 v17, v8

    move-object/from16 v22, v21

    move-object/from16 v8, v20

    move-object/from16 v23, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v9, v3

    const-string v8, "/sys/fs/pstore/console-ramoops"

    move-object/from16 v5, v17

    .line 1650
    invoke-static/range {v4 .. v10}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v9, v3

    const-string v8, "/sys/fs/pstore/console-ramoops-0"

    .line 1652
    invoke-static/range {v4 .. v10}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1654
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v8, v0

    const-string v7, "/cache/recovery/log"

    const-string v9, "SYSTEM_RECOVERY_LOG"

    invoke-static/range {v4 .. v9}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v8, v0

    const-string v7, "/cache/recovery/last_kmsg"

    const-string v9, "SYSTEM_RECOVERY_KMSG"

    .line 1656
    invoke-static/range {v4 .. v9}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    neg-int v0, v0

    const-string v3, "SYSTEM_AUDIT"

    move-object/from16 v4, v17

    .line 1658
    invoke-static {v11, v4, v12, v0, v3}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    move v5, v1

    move-object/from16 v3, v22

    move-object/from16 v9, v23

    move-object/from16 v1, p0

    goto/16 :goto_292

    :cond_188
    move-object v2, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v4, v10

    const/4 v1, 0x2

    if-eqz v11, :cond_196

    const-string v0, "SYSTEM_RESTART"

    .line 1660
    invoke-virtual {v11, v0, v12}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_196
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1662
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "/data/log/prev_dump.log"

    .line 1666
    invoke-static {v5, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "/data/log/unknown_platform_reset.log"

    .line 1667
    invoke-static {v7, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v8, v3, [Ljava/nio/file/LinkOption;

    .line 1668
    invoke-static {v0, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-eqz v8, :cond_27c

    const/4 v8, 0x1

    :try_start_1c0
    new-array v9, v8, [Ljava/nio/file/OpenOption;

    .line 1670
    sget-object v8, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v9, v3

    invoke-static {v0, v9}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1ca} :catch_273

    :try_start_1ca
    new-array v9, v1, [Ljava/nio/file/OpenOption;

    .line 1672
    sget-object v10, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v10, v9, v3

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v6, v9}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1d9
    .catchall {:try_start_1ca .. :try_end_1d9} :catchall_261

    .line 1675
    :try_start_1d9
    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v9

    long-to-int v0, v9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1676
    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 1677
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 1678
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-string v0, "Chip ID : .*?\n|androidboot[.]ap_serial=.*? |androidboot[.]serialno=.*? "

    .line 1680
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1681
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const-string v0, "PF_UR case. Leave prev_dump.log as unknown_platform_reset.log"
    :try_end_204
    .catchall {:try_start_1d9 .. :try_end_204} :catchall_24f

    move-object/from16 v9, v23

    .line 1682
    :try_start_206
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    const-string v0, "Out of memory: Kill(ed)? process [0-9]+ [(]system_server[)]|Sending SIGKILL to process system_server"

    .line 1690
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1691
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1692
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5
    :try_end_224
    .catchall {:try_start_206 .. :try_end_224} :catchall_24d

    const-string/jumbo v6, "sys.reset_info"

    if-eqz v5, :cond_240

    .line 1693
    :try_start_229
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x5b

    .line 1694
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_246

    :cond_240
    const-string/jumbo v0, "unknown"

    .line 1697
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_246
    .catchall {:try_start_229 .. :try_end_246} :catchall_24d

    .line 1699
    :goto_246
    :try_start_246
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_249
    .catchall {:try_start_246 .. :try_end_249} :catchall_25f

    :try_start_249
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_271

    goto :goto_27e

    :catchall_24d
    move-exception v0

    goto :goto_252

    :catchall_24f
    move-exception v0

    move-object/from16 v9, v23

    :goto_252
    move-object v5, v0

    if-eqz v3, :cond_25e

    .line 1669
    :try_start_255
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_259

    goto :goto_25e

    :catchall_259
    move-exception v0

    move-object v3, v0

    :try_start_25b
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_25e
    :goto_25e
    throw v5
    :try_end_25f
    .catchall {:try_start_25b .. :try_end_25f} :catchall_25f

    :catchall_25f
    move-exception v0

    goto :goto_264

    :catchall_261
    move-exception v0

    move-object/from16 v9, v23

    :goto_264
    move-object v3, v0

    if-eqz v8, :cond_270

    :try_start_267
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_26a
    .catchall {:try_start_267 .. :try_end_26a} :catchall_26b

    goto :goto_270

    :catchall_26b
    move-exception v0

    move-object v5, v0

    :try_start_26d
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_270
    :goto_270
    throw v3
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_271} :catch_271

    :catch_271
    move-exception v0

    goto :goto_276

    :catch_273
    move-exception v0

    move-object/from16 v9, v23

    :goto_276
    const-string v3, "Failed to copy prev_dump.log file."

    .line 1700
    invoke-static {v9, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27e

    :cond_27c
    move-object/from16 v9, v23

    :goto_27e
    const-string v0, "P|UR"

    .line 1704
    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v22

    .line 1705
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28d

    :cond_289
    move-object/from16 v3, v22

    move-object/from16 v9, v23

    :goto_28d
    move v5, v1

    move-object/from16 v1, p0

    .line 1708
    iput v5, v1, Lcom/android/server/BootReceiver;->reset:I

    .line 1710
    :goto_292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 1711
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "ro.boot.hardware"

    .line 1714
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_498

    .line 1718
    iget v10, v1, Lcom/android/server/BootReceiver;->reset:I

    const-string/jumbo v15, "s "

    const/4 v5, 0x1

    if-ne v10, v5, :cond_2e5

    const-string v5, "We start saveLastkmsg.waitUntilSaveLastkmsgDone( timeout = 30 )"

    .line 1719
    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v5, v1, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    if-nez v5, :cond_2c6

    .line 1721
    new-instance v5, Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-direct {v5, v1, v7}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;Lcom/android/server/BootReceiver$SaveLastkmsg-IA;)V

    iput-object v5, v1, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 1722
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-string/jumbo v5, "saveLastkmsg null and start()"

    .line 1723
    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_2c6
    iget-object v5, v1, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Lcom/android/server/BootReceiver$SaveLastkmsg;->waitUntilSaveLastkmsgDone(I)I

    move-result v5

    .line 1726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "We waited saveLastkmsg() for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_2e5
    :try_start_2e5
    invoke-virtual {v1, v8}, Lcom/android/server/BootReceiver;->getDumpFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e5 .. :try_end_2eb} :catch_2ec

    goto :goto_2ef

    :catch_2ec
    const/4 v5, 0x0

    .line 1733
    iput-object v5, v1, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 1736
    :goto_2ef
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"REASON\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    iget v5, v1, Lcom/android/server/BootReceiver;->reset:I

    const-string/jumbo v7, "s5e"

    const-string v10, "exynos"

    move-object/from16 v20, v14

    if-nez v5, :cond_31c

    iget-boolean v14, v1, Lcom/android/server/BootReceiver;->isRescueParty:Z

    if-eqz v14, :cond_318

    goto :goto_31c

    :cond_318
    move-object/from16 v2, p1

    goto/16 :goto_391

    :cond_31c
    :goto_31c
    const/4 v14, 0x1

    if-ne v5, v14, :cond_348

    .line 1740
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v2, v14, :cond_345

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v14, :cond_32c

    goto :goto_345

    :cond_32c
    const-string/jumbo v2, "qcom"

    .line 1742
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v14, :cond_339

    .line 1743
    sget-object v2, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_QCOM:Ljava/lang/String;

    move-object v14, v2

    goto :goto_35d

    :cond_339
    const-string/jumbo v2, "mt"

    .line 1744
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v14, :cond_35b

    .line 1745
    sget-object v14, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_MTK:Ljava/lang/String;

    goto :goto_35d

    .line 1741
    :cond_345
    :goto_345
    sget-object v14, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_LSI:Ljava/lang/String;

    goto :goto_35d

    :cond_348
    const/4 v14, 0x2

    if-ne v5, v14, :cond_35b

    .line 1748
    sget-object v14, Lcom/android/server/BootReceiver;->SYSTEM_TYPE_PLATFORM:Ljava/lang/String;

    .line 1749
    iget-boolean v5, v1, Lcom/android/server/BootReceiver;->isRescueParty:Z

    if-eqz v5, :cond_35d

    const-string/jumbo v5, "leave rescueparty errp"

    .line 1750
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35d

    :cond_35b
    move-object/from16 v14, v20

    :cond_35d
    :goto_35d
    const-string/jumbo v2, "persist.sys.rescue_level"

    const/4 v3, 0x0

    .line 1755
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_371

    const-string/jumbo v2, "persist.sys.isrb_havesentlog"

    .line 1758
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v3, v2

    goto :goto_372

    :cond_371
    const/4 v3, 0x0

    :goto_372
    const-string/jumbo v2, "sys.members.installed"

    const-string v5, "UNKNOWN"

    .line 1761
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_318

    const-string/jumbo v3, "true"

    .line 1763
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38c

    move-object/from16 v2, p1

    .line 1764
    invoke-virtual {v1, v2, v14, v8}, Lcom/android/server/BootReceiver;->sendToMembers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_391

    :cond_38c
    move-object/from16 v2, p1

    .line 1766
    invoke-virtual {v1, v2, v14, v8}, Lcom/android/server/BootReceiver;->sendToDiagmon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :goto_391
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_39e

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v5, :cond_43d

    :cond_39e
    :try_start_39e
    const-string v0, "/data/log/dumpstate_debug_history.lst"

    .line 1778
    new-instance v3, Ljava/io/File;

    const-string v5, "/proc/debug_history"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3de

    .line 1780
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b2
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3b2} :catch_3f1
    .catchall {:try_start_39e .. :try_end_3b2} :catchall_3ec

    .line 1781
    :try_start_3b2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3b7
    .catch Ljava/io/IOException; {:try_start_3b2 .. :try_end_3b7} :catch_3db
    .catchall {:try_start_3b2 .. :try_end_3b7} :catchall_3d6

    .line 1782
    :try_start_3b7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3bc
    .catch Ljava/io/IOException; {:try_start_3b7 .. :try_end_3bc} :catch_3d4
    .catchall {:try_start_3b7 .. :try_end_3bc} :catchall_3d6

    move-object/from16 v10, v16

    .line 1785
    :goto_3be
    :try_start_3be
    invoke-virtual {v5, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_3c9

    const/4 v14, 0x0

    .line 1786
    invoke-virtual {v7, v10, v14, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3be

    :cond_3c9
    const-string/jumbo v0, "sys.boot.debug_history"

    const-string v10, "1"

    .line 1788
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d1
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3d1} :catch_3d2
    .catchall {:try_start_3be .. :try_end_3d1} :catchall_48b

    goto :goto_3e1

    :catch_3d2
    move-exception v0

    goto :goto_3f5

    :catch_3d4
    move-exception v0

    goto :goto_3f4

    :catchall_3d6
    move-exception v0

    move-object v13, v5

    const/4 v7, 0x0

    goto/16 :goto_48d

    :catch_3db
    move-exception v0

    const/4 v3, 0x0

    goto :goto_3f4

    :cond_3de
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3e1
    if-eqz v5, :cond_3e6

    .line 1793
    :try_start_3e3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3e6
    .catch Ljava/io/IOException; {:try_start_3e3 .. :try_end_3e6} :catch_3e6

    :catch_3e6
    :cond_3e6
    if-eqz v7, :cond_411

    .line 1794
    :goto_3e8
    :try_start_3e8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3eb
    .catch Ljava/io/IOException; {:try_start_3e8 .. :try_end_3eb} :catch_411

    goto :goto_411

    :catchall_3ec
    move-exception v0

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto/16 :goto_48d

    :catch_3f1
    move-exception v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3f4
    const/4 v7, 0x0

    .line 1791
    :goto_3f5
    :try_start_3f5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "debug_history - File copy error"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_409
    .catchall {:try_start_3f5 .. :try_end_409} :catchall_48b

    if-eqz v5, :cond_40e

    .line 1793
    :try_start_40b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_40e
    .catch Ljava/io/IOException; {:try_start_40b .. :try_end_40e} :catch_40e

    :catch_40e
    :cond_40e
    if-eqz v7, :cond_411

    goto :goto_3e8

    :catch_411
    :cond_411
    :goto_411
    if-eqz v3, :cond_423

    .line 1799
    :try_start_413
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1a0

    const/16 v5, 0x3e8

    const/16 v7, 0x3ef

    .line 1800
    invoke-static {v0, v3, v5, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_43d

    :catch_421
    move-exception v0

    goto :goto_429

    :cond_423
    const-string v0, "No value debugHistorySave"

    .line 1804
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_428
    .catch Ljava/io/IOException; {:try_start_413 .. :try_end_428} :catch_421

    goto :goto_43d

    .line 1807
    :goto_429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpstate_debug_history - getCanonicalPath error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_43d
    :goto_43d
    :try_start_43d
    invoke-virtual {v1, v8}, Lcom/android/server/BootReceiver;->GetResetLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1814
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    :cond_45b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/BootReceiver;->sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_462
    .catch Ljava/io/IOException; {:try_start_43d .. :try_end_462} :catch_463
    .catch Ljava/lang/IllegalStateException; {:try_start_43d .. :try_end_462} :catch_463

    goto :goto_469

    :catch_463
    move-exception v0

    const-string v2, "get reset log error"

    .line 1817
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_469
    const/16 v2, 0x1e

    .line 1820
    invoke-virtual {v1, v2}, Lcom/android/server/BootReceiver;->waitUntileRRpDone(I)I

    move-result v0

    .line 1821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We waited make eRRp Done for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1822
    invoke-static {v13, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_498

    :catchall_48b
    move-exception v0

    move-object v13, v5

    :goto_48d
    if-eqz v13, :cond_492

    .line 1793
    :try_start_48f
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_492
    .catch Ljava/io/IOException; {:try_start_48f .. :try_end_492} :catch_492

    :catch_492
    :cond_492
    if-eqz v7, :cond_497

    .line 1794
    :try_start_494
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_497
    .catch Ljava/io/IOException; {:try_start_494 .. :try_end_497} :catch_497

    .line 1795
    :catch_497
    :cond_497
    throw v0

    .line 1827
    :cond_498
    :goto_498
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsShutdownTime()V

    .line 1828
    invoke-static {}, Lcom/android/server/BootReceiver;->logFsMountTime()V

    .line 1829
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v0, v0

    const-string v1, "SYSTEM_FSCK"

    invoke-static {v11, v4, v12, v0, v1}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBoxAndLogFsStat(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1830
    invoke-static {}, Lcom/android/server/BootReceiver;->logSystemServerShutdownTimeMetrics()V

    .line 1831
    invoke-static {v4}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    return-void
.end method

.method public final logLastAboxMsg(Ljava/util/zip/ZipOutputStream;)V
    .registers 15

    const-string p0, "BootReceiver"

    const-string v0, "/sys/kernel/debug/abox/snapshot_0/log"

    const-string v1, "/sys/kernel/debug/abox/snapshot_1/log"

    const-string v2, "/proc/abox/snapshot_0/log"

    const-string v3, "/proc/abox/snapshot_1/log"

    .line 578
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/kernel/debug/abox/snapshot_0/valid"

    const-string v2, "/sys/kernel/debug/abox/snapshot_1/valid"

    const-string v3, "/proc/abox/snapshot_0/valid"

    const-string v4, "/proc/abox/snapshot_1/valid"

    .line 583
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_22
    const/4 v7, 0x4

    if-ge v5, v7, :cond_10a

    .line 594
    new-instance v8, Ljava/io/File;

    aget-object v9, v0, v5

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    new-instance v9, Ljava/io/File;

    aget-object v10, v1, v5

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    rem-int/lit8 v10, v5, 0x2

    .line 597
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "lastaboxmsg_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".bin"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 599
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_106

    .line 602
    :try_start_52
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 603
    invoke-static {v9, v7, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Y"

    .line 605
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_7d} :catch_e4
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_7d} :catch_c5
    .catchall {:try_start_52 .. :try_end_7d} :catchall_c3

    .line 608
    :try_start_7d
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 611
    :goto_85
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_8f

    .line 612
    invoke-virtual {p1, v2, v3, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_85

    .line 614
    :cond_8f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 615
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_95} :catch_9d
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_95} :catch_9a
    .catchall {:try_start_7d .. :try_end_95} :catchall_97

    move-object v6, v7

    goto :goto_bd

    :catchall_97
    move-exception p0

    move-object v6, v7

    goto :goto_100

    :catch_9a
    move-exception p1

    move-object v6, v7

    goto :goto_c6

    :catch_9d
    move-exception p1

    move-object v6, v7

    goto :goto_e5

    .line 617
    :cond_a0
    :try_start_a0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip dump "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " valid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_bd} :catch_e4
    .catch Ljava/lang/NullPointerException; {:try_start_a0 .. :try_end_bd} :catch_c5
    .catchall {:try_start_a0 .. :try_end_bd} :catchall_c3

    :cond_bd
    :goto_bd
    if-eqz v6, :cond_106

    .line 629
    :try_start_bf
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_106

    goto :goto_106

    :catchall_c3
    move-exception p0

    goto :goto_100

    :catch_c5
    move-exception p1

    .line 625
    :goto_c6
    :try_start_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logLastAboxMsg Null pointer :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_de
    .catchall {:try_start_c6 .. :try_end_de} :catchall_c3

    if-eqz v6, :cond_10a

    .line 629
    :goto_e0
    :try_start_e0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_10a

    goto :goto_10a

    :catch_e4
    move-exception p1

    .line 621
    :goto_e5
    :try_start_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logLastAboxMsg IO err :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fd
    .catchall {:try_start_e5 .. :try_end_fd} :catchall_c3

    if-eqz v6, :cond_10a

    goto :goto_e0

    :goto_100
    if-eqz v6, :cond_105

    .line 629
    :try_start_102
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_105

    .line 630
    :catch_105
    :cond_105
    throw p0

    :catch_106
    :cond_106
    :goto_106
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_22

    :catch_10a
    :cond_10a
    :goto_10a
    return-void
.end method

.method public final logResetReason()V
    .registers 12

    .line 500
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/reset_reason"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/store_lastkmsg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    const-string v3, "BootReceiver"

    if-nez v2, :cond_1c

    const-string p0, "Can\'t find PROC_RESET_REASON"

    .line 504
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/16 v2, 0x400

    const/4 v4, 0x0

    :try_start_1f
    const-string v5, "\n"

    .line 510
    invoke-static {v0, v2, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_3d

    :catch_26
    move-exception v0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readTextFile error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_3d
    if-nez v0, :cond_48

    const-string/jumbo v0, "resetString is null"

    .line 516
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NA"

    goto :goto_5d

    .line 519
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetString = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_5d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-lt v2, v3, :cond_69

    .line 523
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_69
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string/jumbo v2, "resetreason"

    const-string v3, "ctl.restart"

    const-string v6, "N|"

    const-string v7, "K|"

    const-string/jumbo v8, "sys.reset_reason"

    const/4 v9, 0x1

    if-nez v1, :cond_c9

    const-string v1, "RP"

    .line 527
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "BP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "NP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    goto :goto_aa

    .line 534
    :cond_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iput v9, p0, Lcom/android/server/BootReceiver;->reset:I

    goto :goto_c4

    .line 528
    :cond_aa
    :goto_aa
    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_c2
    iput v5, p0, Lcom/android/server/BootReceiver;->reset:I

    .line 537
    :goto_c4
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_189

    :cond_c9
    const-string v1, "KP"

    .line 539
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "MP"

    if-nez v1, :cond_11d

    const-string v1, "PP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "DP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "WP"

    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "TP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "SP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    goto :goto_11d

    .line 544
    :cond_fc
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_108

    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 545
    :cond_108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_11a
    iput v5, p0, Lcom/android/server/BootReceiver;->reset:I

    goto :goto_131

    .line 541
    :cond_11d
    :goto_11d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iput v9, p0, Lcom/android/server/BootReceiver;->reset:I

    .line 550
    :goto_131
    iget v1, p0, Lcom/android/server/BootReceiver;->reset:I

    if-eq v1, v9, :cond_13b

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 551
    :cond_13b
    iget-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    if-nez v0, :cond_146

    .line 552
    new-instance v0, Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-direct {v0, p0, v4}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;Lcom/android/server/BootReceiver$SaveLastkmsg-IA;)V

    iput-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 554
    :cond_146
    iget-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 557
    :cond_14b
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v0, p0, Lcom/android/server/BootReceiver;->reset:I

    if-ne v0, v9, :cond_189

    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->isStoreLastKmsg()I

    move-result v0

    if-ne v0, v9, :cond_189

    const-string v0, "DCVS"

    const-string v1, "/sys/class/sec/sec_hw_param/last_dcvs"

    .line 560
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRA"

    const-string v1, "/sys/class/sec/sec_hw_param/extra_info"

    .line 561
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRB"

    const-string v1, "/sys/class/sec/sec_hw_param/extrb_info"

    .line 562
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRC"

    const-string v1, "/sys/class/sec/sec_hw_param/extrc_info"

    .line 563
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRM"

    const-string v1, "/sys/class/sec/sec_hw_param/extrm_info"

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRF"

    const-string v1, "/sys/class/sec/sec_hw_param/extrf_info"

    .line 565
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETRT"

    const-string v1, "/sys/class/sec/sec_hw_param/extrt_info"

    .line 566
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BootReceiver;->sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    :goto_189
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1449
    new-instance p2, Lcom/android/server/BootReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    .line 1472
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :try_start_8
    const-string p1, "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 1476
    sget p2, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v0, 0x180

    invoke-static {p1, p2, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_12} :catch_28

    .line 1490
    new-instance p2, Lcom/android/server/BootReceiver$2;

    invoke-direct {p2, p0}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;)V

    .line 1526
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    return-void

    :catch_28
    move-exception p0

    const-string p1, "BootReceiver"

    const-string p2, "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 1478
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final removeOldUpdatePackages(Landroid/content/Context;)V
    .registers 3

    const-string p0, "com.google.android.systemupdater"

    const-string v0, "com.google.android.systemupdater.SystemUpdateReceiver"

    .line 1532
    invoke-static {p1, p0, v0}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendBroadcastToHWParm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 381
    iget-object v0, p0, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "BootReceiver"

    if-eqz v0, :cond_21

    const-string/jumbo v0, "sendBroadcastToHWParm() mSemHqmManager.sendHWParamToHQM"

    .line 382
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, p0, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string/jumbo v6, "ph"

    const-string v7, "0.0"

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    move-object v4, p1

    move-object v5, p2

    move-object v10, p3

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_27

    :cond_21
    const-string/jumbo p0, "sendBroadcastToHWParm() mSemHqmManager is null"

    .line 386
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public final sendHWParamInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 452
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_103

    const-string p2, ""

    const-string v1, "ETRA"

    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\""

    const/4 v3, 0x1

    const-string/jumbo v4, "readTextFile error"

    const/4 v5, 0x0

    const/16 v6, 0x800

    const-string/jumbo v7, "none"

    if-eqz v1, :cond_6e

    .line 460
    :try_start_21
    invoke-static {v0, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.crypto.state"

    .line 461
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "ro.crypto.type"

    .line 462
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_d8

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"CPT\":\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_58} :catch_5a

    goto/16 :goto_d8

    :catch_5a
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :cond_6e
    const-string v1, "ETRT"

    .line 469
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const-string/jumbo v1, "ro.soc.model"

    .line 471
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    const-string/jumbo v1, "ro.hardware.chipname"

    .line 473
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    :cond_8a
    :try_start_8a
    invoke-static {v0, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_d8

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"APNM\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_ab} :catch_ac

    goto :goto_d8

    :catch_ac
    move-exception v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 485
    :cond_c0
    :try_start_c0
    invoke-static {v0, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c4} :catch_c5

    goto :goto_d8

    :catch_c5
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_d8
    :goto_d8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_103

    const-string v0, "AP"

    .line 492
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/BootReceiver;->sendBroadcastToHWParm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    :cond_103
    return-void
.end method

.method public final sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v0, "persist.sys.rescue_level"

    const-string v1, "HqmManagerService"

    .line 961
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/SemHqmManager;

    if-eqz v1, :cond_5e

    const/4 v2, 0x0

    .line 975
    iget-boolean p1, p0, Lcom/android/server/BootReceiver;->isRescueParty:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_32

    const-wide/32 v4, 0x493e0

    .line 977
    :try_start_17
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 978
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v4, 0x7

    if-ne p1, v4, :cond_2d

    const-string/jumbo p1, "persist.sys.isrb_havesentlog"

    .line 980
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_28} :catch_32

    .line 981
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/BootReceiver;->setISRBmode()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2b

    :catch_2b
    move v3, p1

    goto :goto_32

    :cond_2d
    :try_start_2d
    const-string p0, "0"

    .line 983
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    :goto_32
    if-nez v3, :cond_47

    const-string v3, "AP"

    const-string v4, "REST"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string v7, ""

    const-string v8, ""

    const-string v10, ""

    move-object v9, p2

    .line 989
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 992
    :cond_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "send broadcast to HQM about reset reason : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public final sendToDiagmon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "1"

    const-string v1, "IntentOnly"

    const-string v2, "Ext"

    const-string v3, "CFailLogUpload"

    const-string v4, "DiagMon"

    .line 1012
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsung_errorlog_agree"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_165

    .line 1016
    iget-object v5, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    if-nez v5, :cond_1e

    return-void

    .line 1017
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send broadcast intent to diagmon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BootReceiver"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 1022
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "com.sec.android.diagmonagent"

    .line 1024
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x20

    .line 1025
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    :try_start_7a
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1030
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "ServiceID"

    const-string/jumbo v9, "ny6xfd3iri"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1033
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "ClientV"

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "UiMode"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "ResultCode"

    iget-object v9, p0, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "WifiOnlyFeature"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "EventID"

    iget-object v8, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1039
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "IntentOnlyMode"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Agree"

    const-string v7, "D"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LogPath"

    iget-object p0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "uploadMO"

    .line 1043
    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1046
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_15e} :catch_15f

    goto :goto_165

    :catch_15f
    move-exception p0

    const-string p1, "Exception while sending a bug report."

    .line 1048
    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_165
    :goto_165
    return-void
.end method

.method public final sendToMembers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 998
    iget-object v0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 999
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1000
    sget-object v1, Lcom/android/server/BootReceiver;->ACTION_SYSTEM_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.voc"

    .line 1001
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    sget-object v1, Lcom/android/server/BootReceiver;->EXTRA_SYSTEM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    sget-object v1, Lcom/android/server/BootReceiver;->EXTRA_RESET_REASON:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    sget-object v1, Lcom/android/server/BootReceiver;->EXTRA_LOG_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to Samsung Members, system type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "and reset_reason: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "and log file: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BootReceiver"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "android.permission.DUMP"

    .line 1008
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final setISRBmode()V
    .registers 3

    const/4 p0, 0x1

    .line 341
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.isrb_havesentlog"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "sys.isrblevel.callreboot"

    const/4 v0, 0x0

    .line 342
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_16

    return-void

    :cond_16
    const/4 p0, 0x7

    .line 344
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "persist.sys.rescue_level"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.enable_isrb"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "persist.sys.rescue_mode"

    const-string/jumbo v0, "isrb_boot"

    .line 346
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final waitUntileRRpDone(I)I
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    if-ge v0, p1, :cond_2f

    :try_start_4
    const-string/jumbo v1, "sys.boot.errp"

    .line 235
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    return v0

    :cond_f
    const-wide/16 v1, 0x3e8

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_17
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waitUntileRRpDone error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootReceiver"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method
