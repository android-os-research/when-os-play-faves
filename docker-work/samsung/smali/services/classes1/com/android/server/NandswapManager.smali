.class public final Lcom/android/server/NandswapManager;
.super Landroid/app/job/JobService;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NandswapManager$NandSwapBigdataManager;,
        Lcom/android/server/NandswapManager$ProcessingManager;,
        Lcom/android/server/NandswapManager$NandswapClient;
    }
.end annotation


# static fields
.field public static final BD_STAT_AVG_UPDAGE_JOB_ID:I = 0x32e

.field public static final BIGDATA_INFO_PROP:Ljava/lang/String; = "persist.sys.zram0.bigdata_info"

.field public static final DAILY_QUOTA_PROP:Ljava/lang/String; = "persist.sys.zram.daily_quota"

.field public static final GMR_ENABLE_PROP:Ljava/lang/String; = "ro.sys.kernelmemory.gmr.enabled"

.field public static final GMR_MAX_RECLAIM_SIZE_NODE:Ljava/lang/String; = "/sys/class/kgsl/kgsl/max_reclaim_limit"

.field public static final GMR_VENDOR_PLUGIN_PROP:Ljava/lang/String; = "ro.sys.kernelmemory.gmr.vendor_plugin"

.field public static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final MMC_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/block/mmcblk0/device/life_time"

.field public static final NANDSWAP_QUOTA_RESET_JOB_ID:I = 0x32d

.field public static final QUOTA_REMAINING_PROP:Ljava/lang/String; = "persist.sys.zram.daily_quota_remain"

.field public static final RAM_EXPAND_SIZE:Ljava/lang/String; = "ram_expand_size"

.field public static final RAM_EXPAND_SIZE_LIST:Ljava/lang/String; = "ram_expand_size_list"

.field public static final RAM_EXPAND_SIZE_PROP:Ljava/lang/String; = "persist.sys.zram.ram_expand_size"

.field public static final SUPPORT_RAM_EXPAND_SWITCH:Z

.field public static final SYS_BACKING_DEV:Ljava/lang/String; = "/sys/block/zram0/backing_dev"

.field public static final SYS_BD_STAT:Ljava/lang/String; = "/sys/block/zram0/bd_stat"

.field public static final SYS_SCSI_PROC_NAME_NODE:Ljava/lang/String; = "/sys/class/scsi_host/host0/proc_name"

.field public static final SYS_SEC_MMC_UN_NODE:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static final SYS_SEC_UFS_UN_NODE:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final SYS_WRITEBACK_LIMIT:Ljava/lang/String; = "/sys/block/zram0/writeback_limit"

.field public static final TAG:Ljava/lang/String; = "NandswapManager"

.field public static final UFS_GKI_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/class/sec/ufs/lt"

.field public static final UFS_LIFETIME_SYS_NODE:Ljava/lang/String; = "/sys/class/scsi_host/host0/lt"

.field public static final ZRAM_SWAP_FILE_PATH:Ljava/lang/String; = "/data/per_boot/zram_swap"

.field public static final dailyQuotaDefault:I = 0x40000

.field public static final intentReceiver:Landroid/content/BroadcastReceiver;

.field public static isJdmDevice:Z = false

.field public static mClient:Lcom/android/server/NandswapManager$NandswapClient; = null

.field public static mContext:Landroid/content/Context; = null

.field public static mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager; = null

.field public static final maxNandGB:I = 0x80

.field public static final minNandGB:I = 0x10

.field public static final sNandswapManager:Landroid/content/ComponentName;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;
    .registers 1

    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    .registers 1

    sget-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smclearClientsBigdataInfo()V
    .registers 0

    invoke-static {}, Lcom/android/server/NandswapManager;->clearClientsBigdataInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDefaultRamExpandSize()I
    .registers 1

    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smgetMemInfo()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Lcom/android/server/NandswapManager;->getMemInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSize(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetRamExpandSizePersistProp()I
    .registers 1

    invoke-static {}, Lcom/android/server/NandswapManager;->getRamExpandSizePersistProp()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisBackingDevSet()Z
    .registers 1

    invoke-static {}, Lcom/android/server/NandswapManager;->isBackingDevSet()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smputRamExpandSize(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveClientsBigdataInfoInReboot()V
    .registers 0

    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsBigdataInfoInReboot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->setExpandSizeAndList(Landroid/content/Context;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/NandswapManager;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 90
    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 91
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-lt v1, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    sput-boolean v0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    .line 639
    new-instance v0, Lcom/android/server/NandswapManager$1;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$1;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static clearClientsBigdataInfo()V
    .registers 1

    .line 532
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 533
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    :cond_d
    return-void
.end method

.method public static clearClientsStorageUsage()V
    .registers 1

    .line 520
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 521
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->clearAverageList()V

    :cond_d
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 274
    :cond_3
    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_d

    const-string p1, "Please input a correct RamPlus option."

    .line 275
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_d
    sget-boolean v0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    const-string v2, "NandswapManager"

    if-nez v0, :cond_2b

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no ramExpandSwitch for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 287
    :cond_2b
    :try_start_2b
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_7b

    shl-int/lit8 v0, p1, 0xa

    .line 293
    invoke-static {v0}, Lcom/android/server/NandswapManager;->isValidRamExpandSize(I)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RamPlus dump: invalid size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 297
    :cond_4e
    sget-object v1, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 298
    invoke-static {v0}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    .line 301
    invoke-static {}, Lcom/android/server/NandswapManager;->clearClientsBigdataInfo()V

    .line 302
    invoke-static {}, Lcom/android/server/NandswapManager;->clearClientsStorageUsage()V

    const-string v0, "== RamPlus dump start =="

    .line 304
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RamPlus size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "== RamPlus dump end =="

    .line 306
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_7b
    const-string p0, "error on parseInt 1"

    .line 289
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getAvailSizeList()Ljava/lang/String;
    .registers 3

    .line 177
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    const-string v0, "2,4"

    goto :goto_16

    :cond_e
    const/4 v1, 0x6

    if-ge v0, v1, :cond_14

    const-string v0, "2,4,6"

    goto :goto_16

    :cond_14
    const-string v0, "2,4,6,8"

    :goto_16
    return-object v0
.end method

.method public static getDefaultRamExpandSize()I
    .registers 3

    .line 157
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.higher_max_size"

    const/4 v2, 0x0

    .line 159
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x100

    if-lt v0, v1, :cond_15

    const/16 v0, 0x2000

    return v0

    :cond_15
    const/16 v1, 0x20

    if-le v0, v1, :cond_1c

    const/16 v0, 0x1000

    return v0

    :cond_1c
    if-ne v0, v1, :cond_21

    const/16 v0, 0x800

    return v0

    :cond_21
    return v2
.end method

.method public static final getMemInfo()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 739
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_4a

    .line 742
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    const-string v3, ":"

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    const/4 v4, 0x0

    .line 746
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\D+"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 749
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_40

    goto :goto_11

    .line 752
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4a

    goto :goto_54

    :catchall_40
    move-exception v2

    .line 739
    :try_start_41
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    :try_start_46
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_4a

    :catch_4a
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read stats from /proc/meminfo"

    .line 753
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_54
    return-object v0
.end method

.method public static getRamExpandSize(Landroid/content/Context;)I
    .registers 3

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRamExpandSizePersistProp()I
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    const-string/jumbo v1, "persist.sys.zram.ram_expand_size"

    .line 141
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    const-string v1, "NandswapManager"

    const-string v2, "error on get SystemProperties"

    .line 143
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return v0
.end method

.method public static getStorageSize()I
    .registers 7

    const/4 v0, 0x0

    .line 391
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/partitions"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_4d

    .line 393
    :try_start_d
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ".*(sda|sdc)$"

    goto :goto_18

    :cond_16
    const-string v2, ".*(mmcblk0)$"

    :goto_18
    move v3, v0

    .line 395
    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 396
    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 397
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 398
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_19

    const/4 v5, 0x2

    .line 399
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 401
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_43

    goto :goto_19

    .line 405
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4d

    goto :goto_55

    :catchall_43
    move-exception v2

    .line 391
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v1

    :try_start_49
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read storage size from /proc/partitions"

    .line 406
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_55
    if-nez v3, :cond_58

    return v0

    :cond_58
    const/high16 v0, 0x100000

    .line 414
    div-int/2addr v3, v0

    int-to-double v0, v3

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    shl-int v0, v1, v0

    return v0
.end method

.method public static initNandswapClient()V
    .registers 6

    const-string v0, "NandswapManager"

    const-string v1, "Init Nandswap Client"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 472
    :cond_e
    invoke-static {}, Lcom/android/server/NandswapManager;->selectDailyQuota()I

    move-result v1

    const-string/jumbo v2, "persist.sys.zram.daily_quota"

    const/4 v3, -0x1

    .line 475
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_28

    .line 476
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "First boot, set daily quota..."

    .line 477
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string/jumbo v4, "persist.sys.zram.daily_quota_remain"

    .line 480
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3d

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "First boot, set daily quota remaining..."

    .line 482
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/high16 v0, 0x40000

    .line 485
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 488
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v2}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 490
    sget-object v2, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    iput v0, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 491
    iput v1, v2, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 494
    invoke-virtual {v2}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v0

    if-nez v0, :cond_65

    .line 495
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaRemainingProp(I)I

    move-result v0

    .line 496
    sget-object v1, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v1, v0}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    :cond_65
    return-void
.end method

.method public static isBackingDevSet()Z
    .registers 4

    const/4 v0, 0x0

    .line 311
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/zram0/backing_dev"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    const-string v3, ""

    .line 312
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1f

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0

    :catch_1f
    const-string v1, "NandswapManager"

    const-string v2, "exception on checking backing_dev /sys/block/zram0/backing_dev"

    .line 320
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRemainStorageLifeTime()Z
    .registers 10

    const-string v0, ""

    .line 326
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/scsi_host/host0/lt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/ufs/lt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_21

    .line 332
    :cond_17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v2, v4

    goto :goto_21

    :cond_1f
    const-string v2, "/sys/block/mmcblk0/device/life_time"

    .line 337
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try to check lifetime via "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NandswapManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 339
    :try_start_39
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\s+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, v1

    .line 340
    :goto_4f
    array-length v7, v4

    const/4 v8, 0x1

    if-ge v6, v7, :cond_7a

    .line 343
    aget-object v7, v4, v6

    const-string v9, "0x"

    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x8

    if-le v7, v9, :cond_77

    .line 345
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "abort: lifetime below 20%%(val=%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_76} :catch_7b

    return v1

    :cond_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_7a
    return v8

    .line 352
    :catch_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isUfs()Z
    .registers 5

    const/4 v0, 0x0

    .line 359
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/ufs/un"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    return v2

    .line 364
    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/sec/mmc/un"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    .line 369
    :cond_1e
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/scsi_host/host0/proc_name"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    const/16 v3, 0x40

    const-string v4, ""

    .line 372
    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ufshcd"

    .line 373
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_41

    if-eqz v1, :cond_48

    return v2

    :catch_41
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read /sys/class/scsi_host/host0/proc_name"

    .line 378
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v0
.end method

.method public static isValidRamExpandSize(I)Z
    .registers 3

    .line 192
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_19

    .line 194
    rem-int/lit16 v1, p0, 0x400

    if-nez v1, :cond_17

    div-int/lit16 p0, p0, 0x400

    .line 195
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static makeNandswapBigdataManager(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 567
    :try_start_1
    new-instance v1, Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    invoke-direct {v1, p0, v0}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;Lcom/android/server/NandswapManager$NandSwapBigdataManager-IA;)V

    sput-object v1, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while create bigdataManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NandswapManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sput-object v0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    const/4 p0, 0x0

    return p0
.end method

.method public static makeNandswapClient()Z
    .registers 3

    .line 555
    :try_start_0
    new-instance v0, Lcom/android/server/NandswapManager$NandswapClient;

    invoke-direct {v0}, Lcom/android/server/NandswapManager$NandswapClient;-><init>()V

    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 556
    invoke-static {}, Lcom/android/server/NandswapManager;->initNandswapClient()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    const/4 v0, 0x1

    return v0

    :catch_c
    move-exception v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while create mClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NandswapManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 559
    sput-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    const/4 v0, 0x0

    return v0
.end method

.method public static putRamExpandSize(Landroid/content/Context;I)V
    .registers 3

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_21

    .line 126
    :catch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on ram_expand_size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NandswapManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public static putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "ram_expand_size_list"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_21

    .line 134
    :catch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on ram_expand_size_list "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NandswapManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public static resetClientQuotas()V
    .registers 3

    const-string v0, "NandswapManager"

    const-string v1, "Reset Client Quotas"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 505
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getQuotaSysNode()I

    move-result v0

    sget-object v1, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    iget v2, v1, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    add-int/2addr v0, v2

    .line 506
    iget v2, v1, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    if-le v0, v2, :cond_1f

    move v0, v2

    .line 509
    :cond_1f
    invoke-virtual {v1, v0}, Lcom/android/server/NandswapManager$NandswapClient;->setQuotaSysNode(I)V

    :cond_22
    return-void
.end method

.method public static saveClientsBigdataInfoInReboot()V
    .registers 1

    .line 526
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 527
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setBigdataInfoProp()V

    :cond_d
    return-void
.end method

.method public static saveClientsStorageUsage()V
    .registers 1

    .line 514
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isNandswapEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 515
    sget-object v0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->saveStorageUsage()V

    :cond_d
    return-void
.end method

.method public static schedNextLimitReset()V
    .registers 7

    .line 538
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 539
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/16 v3, 0x32d

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x18

    .line 540
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static schedNextUpdateAvgerage()V
    .registers 7

    .line 546
    sget-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 547
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    const/16 v3, 0x32e

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 548
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 549
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static scheduleNandswapManager(Landroid/content/Context;)V
    .registers 5

    const-string v0, "NandswapManager"

    :try_start_2
    const-string v1, "Initialize NandswapManager..."

    .line 579
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Lcom/android/server/NandswapManager;->makeNandswapClient()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 583
    :cond_e
    invoke-static {p0}, Lcom/android/server/NandswapManager;->makeNandswapBigdataManager(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "Bigdata is not supported"

    .line 584
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_19
    sput-object p0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 589
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 590
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REBOOT"

    .line 591
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 592
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 593
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    sget-object v2, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/NandswapManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 596
    invoke-static {p0}, Lcom/android/server/NandswapManager;->testRestoreExpandSizeAndList(Landroid/content/Context;)V

    .line 597
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result p0

    if-nez p0, :cond_45

    return-void

    .line 601
    :cond_45
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 602
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_55

    :catch_4c
    move-exception p0

    const-string v1, "Unexpected error while scheduleNandswapManager"

    .line 604
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-void
.end method

.method public static selectDailyQuota()I
    .registers 12

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 424
    fill-array-data v3, :array_aa

    new-array v4, v2, [I

    .line 425
    fill-array-data v4, :array_b6

    new-array v5, v2, [I

    .line 426
    fill-array-data v5, :array_c2

    .line 429
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v6

    .line 432
    sget-boolean v7, Lcom/android/server/NandswapManager;->isJdmDevice:Z

    const/4 v8, 0x0

    const-string v9, "NandswapManager"

    const/high16 v10, 0x40000

    if-eqz v7, :cond_39

    const-string v0, "This device is JDM model"

    .line 433
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    if-lt v6, v0, :cond_31

    return v10

    :cond_31
    const/16 v0, 0x20

    if-ne v6, v0, :cond_38

    const/high16 v0, 0x20000

    return v0

    :cond_38
    return v8

    :cond_39
    const-string v7, "This device is in-house model"

    .line 443
    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    if-ge v8, v2, :cond_61

    .line 445
    aget v7, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v11, v3, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    aget v7, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v11, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_61
    const/16 v2, 0x80

    if-le v6, v2, :cond_66

    move v6, v2

    :cond_66
    const/16 v2, 0x10

    if-le v2, v6, :cond_6b

    move v6, v2

    .line 453
    :cond_6b
    :try_start_6b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 454
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 456
    invoke-static {}, Lcom/android/server/NandswapManager;->isUfs()Z

    move-result v2
    :try_end_8b
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_8b} :catch_91

    if-eqz v2, :cond_8f

    mul-int/2addr v0, v10

    return v0

    :cond_8f
    mul-int/2addr v1, v10

    return v1

    .line 461
    :catch_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage size is not in Quota table! size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :array_aa
    .array-data 4
        0x0
        0x0
        0x4
        0xc
    .end array-data

    :array_b6
    .array-data 4
        0x0
        0x1
        0x8
        0xc
    .end array-data

    :array_c2
    .array-data 4
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public static setExpandSizeAndList(Landroid/content/Context;I)V
    .registers 7

    .line 242
    invoke-static {}, Lcom/android/server/NandswapManager;->getStorageSize()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NandswapManager"

    const/16 v3, 0x20

    if-ge v0, v3, :cond_22

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no ramExpandSwitch for low storage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_23

    :cond_22
    const/4 v0, 0x1

    .line 249
    :goto_23
    sget-boolean v3, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    if-nez v3, :cond_3f

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no ramExpandSwitch for version "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_3f
    move v1, v0

    .line 255
    :goto_40
    invoke-static {p0, p1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 256
    invoke-static {p1}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    if-nez v1, :cond_49

    return-void

    .line 262
    :cond_49
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ramExpandSizeMb: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " avail: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setRamExpandSizePersistProp(I)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "persist.sys.zram.ram_expand_size"

    .line 150
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_21

    .line 152
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error on set SystemProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NandswapManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public static testRestoreExpandSizeAndList(Landroid/content/Context;)V
    .registers 6

    .line 203
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSize(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 211
    :cond_8
    sget-boolean v1, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    const-string/jumbo v2, "ramExpandSizeMb: "

    const-string v3, "NandswapManager"

    if-nez v1, :cond_45

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no ramExpandSwitch for version "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v1

    if-eq v0, v1, :cond_32

    .line 216
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    move v0, v1

    .line 218
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_45
    invoke-static {}, Lcom/android/server/NandswapManager;->getAvailSizeList()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p0}, Lcom/android/server/NandswapManager;->getRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 226
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager;->putRamExpandSizeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    :cond_56
    invoke-static {v0}, Lcom/android/server/NandswapManager;->isValidRamExpandSize(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 229
    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result v0

    .line 230
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    .line 233
    :cond_63
    invoke-static {v0}, Lcom/android/server/NandswapManager;->setRamExpandSizePersistProp(I)V

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " avail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 7

    const-string v0, "NandswapManager"

    const-string/jumbo v1, "onStartJob"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 613
    :try_start_9
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    move-result v2

    if-nez v2, :cond_13

    .line 614
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    .line 618
    :cond_13
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/16 v3, 0x32d

    if-ne v2, v3, :cond_22

    .line 619
    invoke-static {}, Lcom/android/server/NandswapManager;->resetClientQuotas()V

    .line 620
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    goto :goto_4b

    .line 621
    :cond_22
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/16 v3, 0x32e

    if-ne v2, v3, :cond_4b

    .line 622
    invoke-static {}, Lcom/android/server/NandswapManager;->saveClientsStorageUsage()V

    .line 623
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_4b

    :catch_31
    move-exception v2

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduler exception occurred : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_4b
    :goto_4b
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const-string p0, "NandswapManager"

    const-string/jumbo p1, "onStopJob"

    .line 634
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
