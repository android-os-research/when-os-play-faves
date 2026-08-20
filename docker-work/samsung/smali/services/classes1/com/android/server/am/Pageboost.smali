.class public final Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Pageboost$VramdiskLogger;,
        Lcom/android/server/am/Pageboost$PageboostFileDBHelper;,
        Lcom/android/server/am/Pageboost$PageboostAppDBHelper;,
        Lcom/android/server/am/Pageboost$BigDataProxy;,
        Lcom/android/server/am/Pageboost$DaemonConnector;,
        Lcom/android/server/am/Pageboost$PageboostdProxy;,
        Lcom/android/server/am/Pageboost$PageboostHandler;,
        Lcom/android/server/am/Pageboost$MemReclaimer;,
        Lcom/android/server/am/Pageboost$MemUsageCollector;,
        Lcom/android/server/am/Pageboost$MemUsage;,
        Lcom/android/server/am/Pageboost$PageboostAppCapture;,
        Lcom/android/server/am/Pageboost$IoRecord;,
        Lcom/android/server/am/Pageboost$FileMapInfo;,
        Lcom/android/server/am/Pageboost$FileMapList;,
        Lcom/android/server/am/Pageboost$NoPreDo;,
        Lcom/android/server/am/Pageboost$IoPrefetch;,
        Lcom/android/server/am/Pageboost$PreDo;,
        Lcom/android/server/am/Pageboost$PageboostAppInfo;,
        Lcom/android/server/am/Pageboost$PageboostPredictor;,
        Lcom/android/server/am/Pageboost$LRUPolicy;,
        Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;,
        Lcom/android/server/am/Pageboost$Vramdisk;,
        Lcom/android/server/am/Pageboost$VramdiskMlockManager;,
        Lcom/android/server/am/Pageboost$VramdiskXMLParser;,
        Lcom/android/server/am/Pageboost$PageboostAppList;
    }
.end annotation


# static fields
.field public static final ACTION_BIGDATA:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final ACTION_PAGEBOOST:Ljava/lang/String; = "com.android.server.am.ACTION_PAGEBOOST"

.field public static final ACTION_PAGEBOOST_LEGACY:Ljava/lang/String; = "com.sec.android.launcher.action.RUN_APP"

.field public static final ACTION_PREFETCH:Ljava/lang/String; = "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

.field public static final APP_ENTRY_TRIGGER_DELAY:I = 0xbb8

.field public static final BOOTFILE_ENABLED:Z

.field public static final BOOT_FILE_MUNLOCK_DELAY:I = 0x927c0

.field public static final CAPTURE_TRIGGER_DELAY:I = 0x7d0

.field public static final DEBUG:Z = false

.field public static final DELAYED_INIT_DELAY:I = 0x1388

.field public static final DISABLED:Z = false

.field public static final MAX_LAUNCH_TIME:I = 0x2710

.field public static final MSG_APP_CAPTURE:I = 0x5

.field public static final MSG_APP_ENTRY:I = 0x9

.field public static final MSG_APP_ENTRY_DELAYED:I = 0xb

.field public static final MSG_APP_MEMCOLLECT_END:I = 0x12

.field public static final MSG_APP_MEMCOLLECT_START:I = 0x11

.field public static final MSG_APP_RECORD_END:I = 0xf

.field public static final MSG_APP_RECORD_START:I = 0xe

.field public static final MSG_APP_REENTRY:I = 0xa

.field public static final MSG_APP_REENTRY_DELAYED:I = 0xc

.field public static final MSG_BOOT_FILE_MLOCK:I = 0x17

.field public static final MSG_BOOT_FILE_MUNLOCK:I = 0x18

.field public static final MSG_DELAYED_INIT:I = 0x1

.field public static final MSG_LAUNCHER_SCROLL:I = 0x3

.field public static final MSG_LAUNCHER_SCROLL_CLEAR:I = 0x2

.field public static final MSG_PACKAGE_UPDATE:I = 0x4

.field public static final MSG_PKG_ADD:I = 0x7

.field public static final MSG_PKG_DEL:I = 0x8

.field public static final MSG_PROC_STATUS_CHANGE:I = 0x10

.field public static final MSG_SEND_BIGDATA:I = 0xd

.field public static final MSG_START_ACTIVE_LAUNCH:I = 0x13

.field public static final MSG_STOP_ACTIVE_LAUNCH:I = 0x14

.field public static final MSG_TERMINATE:I = 0x6

.field public static final MSG_TIMEOUT_ACTIVE_LAUNCH:I = 0x15

.field public static final MSG_TOP_ACT_CHANGE:I = 0x16

.field public static final PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

.field public static PAGEBOOST_DAEMON_ENABLED:Z = false

.field public static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field public static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field public static PAGEBOOST_KERNEL_ENABLED:Z = false

.field public static final PAGEBOOST_MINIMIZE:Z

.field public static final PAGEBOOST_VRAMDISK_ENABLED:Z = false

.field public static final PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

.field public static final PAGE_SIZE:J = 0x1000L

.field public static final PERMISSION_PAGEBOOST:Ljava/lang/String; = "com.android.server.am.permission.PAGEBOOST"

.field public static final PREFETCH_TRIGGER_DELAY:I = 0x190

.field public static final PROC_DIED:I = 0x2

.field public static final PROC_START:I = 0x1

.field public static final RECORD_END_DELAY_LONG:I = 0x88b8

.field public static final RECORD_END_DELAY_SHORT:I = 0x1388

.field public static final RECORD_START_DELAY:I = 0x32

.field public static final TAG:Ljava/lang/String; = "Pageboost"

.field public static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

.field public static mContext:Landroid/content/Context;

.field public static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

.field public static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public static mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field public static mReceiver:Landroid/content/BroadcastReceiver;

.field public static mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

.field public static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field public static sHandlerThread:Lcom/android/server/ServiceThread;

.field public static user_unlock_done:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_ACTIVE_LAUNCH_ENABLED()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IGNORE_DRAM_SPECIFICATION()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_VRAMDISK_WITHOUT_PREDICT()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetuser_unlock_done()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V
    .registers 1

    sput-object p0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputuser_unlock_done(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddPackage(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdelayedInitPageboost()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Pageboost;->delayedInitPageboost()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdeleteDB(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smrealupdatePackages()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Pageboost;->realupdatePackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smremovePackage(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessage(ILjava/lang/String;IIII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithBundle(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.enabled"

    const-string/jumbo v1, "true"

    .line 127
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "ro.config.pageboost.ignore_dram_spec"

    const-string v2, "false"

    .line 130
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    const-string/jumbo v0, "ro.config.pageboost.active_launch.enabled"

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    const-string/jumbo v0, "ro.config.pageboost.active_launch.timeout"

    const/16 v3, 0x64

    .line 134
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.minimize"

    .line 136
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.without_predict"

    .line 138
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.bootfile.enabled"

    .line 140
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    const/4 v0, 0x1

    .line 147
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 148
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    const/4 v0, 0x0

    .line 151
    sput-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 152
    sput-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 153
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 154
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 155
    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 156
    sput-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    .line 157
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 158
    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 161
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    .line 162
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 166
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 167
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 169
    sput-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    const/4 v0, 0x0

    .line 225
    sput-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 232
    invoke-static {}, Lcom/android/server/am/Pageboost;->staticInitialize()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPackage(Ljava/lang/String;)V
    .registers 4

    .line 3109
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_5

    return-void

    .line 3112
    :cond_5
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3113
    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const/4 v1, 0x0

    .line 3115
    :try_start_e
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_26

    .line 3116
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3117
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p0, :cond_26

    .line 3118
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p0

    .line 3122
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3124
    :cond_26
    :goto_26
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3125
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app to global @ runtime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkPageboostDaemonSupport()V
    .registers 3

    const-string/jumbo v0, "init.svc.pageboostd"

    const-string v1, ""

    .line 379
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 380
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPageboostDaemonSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkPageboostKernelSupport()V
    .registers 3

    .line 363
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/io_record_control"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 365
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "io_record_control file exists: kernel support = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_16
    const/4 v0, 0x0

    .line 368
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 369
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "io_record_control file does not exist: kernel support = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2a

    .line 372
    :catch_22
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "io_record_control file open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_2a
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPageboostKernelSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static delayedInitPageboost()V
    .registers 5

    .line 510
    invoke-static {}, Lcom/android/server/am/Pageboost;->checkPageboostKernelSupport()V

    .line 511
    invoke-static {}, Lcom/android/server/am/Pageboost;->checkPageboostDaemonSupport()V

    .line 513
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 514
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "abort delayedInitPageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_14
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 519
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 520
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "emergency reset during bootup"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_24
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a7

    .line 525
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 528
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 531
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.android.server.am.permission.PAGEBOOST"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 535
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 536
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 539
    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    invoke-static {}, Lcom/android/server/am/Pageboost;->openFileDB()Z

    move-result v0

    .line 543
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->openAppDB(Z)V

    const-string/jumbo v0, "zygote64"

    .line 546
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "zygote"

    .line 547
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "system_server"

    .line 548
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 551
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->initBigDataProxy()V

    .line 553
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostdProxy;->initPageboostdProxy()V

    goto :goto_ae

    .line 560
    :cond_a7
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Pageboost Delayed Init Failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    return-void
.end method

.method public static deleteDB(Ljava/lang/String;)V
    .registers 2

    .line 447
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 448
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 449
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_11
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    .line 3412
    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "minimized: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", kernel support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 3414
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", daemon support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 3415
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3413
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_40
    if-eqz p0, :cond_15d

    .line 3418
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v1, :cond_48

    goto/16 :goto_15d

    .line 3421
    :cond_48
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6f

    const-string/jumbo v1, "purge"

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 3422
    sget-object p1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_69

    .line 3423
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->clearTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p1, "DB is purged. Please type \'adb reboot\'"

    .line 3424
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "(!CAUTION: Do not reboot using \'power key\'. Unless DB will be restored)"

    .line 3425
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6e

    :cond_69
    const-string p1, "app DB not exists. Try again after 5 seconds"

    .line 3427
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6e
    return-void

    .line 3431
    :cond_6f
    array-length v1, p1

    const/4 v3, 0x2

    if-le v1, v3, :cond_7f

    const-string/jumbo v1, "heimdall"

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    return-void

    :cond_7f
    const-string p1, "== Pageboost dump start =="

    .line 3435
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Configurations"

    .line 3437
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignore dram spec: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alp enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch level: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_LEVEL()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "prefetch app count: 1"

    .line 3442
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk enabled: (config) false (decision_by_dram) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->-$$Nest$sfgetENABLED()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "memprep enabled: false"

    .line 3444
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost AppLRU Info"

    .line 3446
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    sget-object p1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->print(Ljava/io/PrintWriter;)V

    .line 3448
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Vramdisk Info"

    .line 3449
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "disabled"

    .line 3455
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Action Log"

    .line 3458
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->print(Ljava/io/PrintWriter;)V

    .line 3460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- Bigdata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->-$$Nest$sfgetENABLED()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  String: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->-$$Nest$smmakeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "== pageboost dump end =="

    .line 3461
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15c} :catch_15e

    goto :goto_165

    :cond_15d
    :goto_15d
    return-void

    .line 3463
    :catch_15e
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to dumpInfo by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_165
    return-void
.end method

.method public static gatherLaunchTime(Ljava/lang/String;II)V
    .registers 11

    const-string v0, " "

    if-nez p0, :cond_5

    return-void

    .line 3288
    :cond_5
    :try_start_5
    sget-object v1, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->hasPinnedFile()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3289
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "launcher"

    .line 3290
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "com.android.settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "com.samsung.android.mtp"

    .line 3291
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0xbb8

    .line 3292
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    .line 3296
    :cond_4a
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_51

    return-void

    :cond_51
    const-string v1, "com.att.iqi"

    .line 3301
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 3302
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch time gathered : pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const/16 v2, 0x9

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 3304
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_85} :catch_86

    goto :goto_8d

    .line 3306
    :catch_86
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to gatherLaunchTime by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return-void
.end method

.method public static getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 441
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_17

    .line 443
    array-length v0, p0

    if-lez v0, :cond_17

    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    aget p0, p0, v1

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public static getPidFromPackageName(Ljava/lang/String;Z)I
    .registers 7

    .line 389
    sget-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 390
    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 391
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_4f

    .line 393
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_20
    if-ltz v1, :cond_4f

    .line 394
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_31

    if-eqz v2, :cond_4c

    .line 397
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    goto :goto_50

    :cond_31
    if-eqz v2, :cond_4c

    .line 405
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string v3, "cch-empty"

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 406
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 407
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    goto :goto_50

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    :cond_4f
    const/4 p0, 0x0

    .line 413
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_55
    move-exception p0

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static initPageboost(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 14

    .line 423
    :try_start_0
    sput-object p0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 424
    sput-object p1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 426
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x1388

    .line 427
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    .line 430
    :cond_14
    sget-boolean p0, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    if-eqz p0, :cond_36

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 431
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0x927c0

    .line 432
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_36

    .line 435
    :catch_2f
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to initPageboost by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public static isPageboostMinimized()Z
    .registers 1

    .line 384
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static moveTaskToFront(Ljava/lang/String;)V
    .registers 9

    .line 3313
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p0, :cond_32

    .line 3318
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToFront : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    .line 3321
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_32

    .line 3324
    :catch_2b
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to moveTaskToFront by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public static notifyResumedActivity(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_17

    .line 3267
    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    :cond_9
    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 3270
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_17

    .line 3272
    :catch_10
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to notifyResumedActivity by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public static onAppLaunch(Landroid/content/Intent;)V
    .registers 4

    .line 3237
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-nez v0, :cond_5e

    if-eqz p0, :cond_5e

    const-string v0, "android.intent.action.MAIN"

    .line 3238
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "android.intent.category.LAUNCHER"

    .line 3239
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3240
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_5e

    .line 3243
    :cond_23
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3244
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppLaunch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_45

    return-void

    .line 3250
    :cond_45
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    const/16 v0, 0xe

    .line 3251
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_58

    :cond_52
    const/4 v0, 0x5

    const/16 v2, 0x7d0

    .line 3253
    invoke-static {v0, p0, v2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    :goto_58
    const/16 v0, 0x11

    .line 3257
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5f

    goto :goto_66

    :cond_5e
    :goto_5e
    return-void

    .line 3260
    :catch_5f
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to onAppLaunch by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method

.method public static onProcStatusChange(ILjava/lang/String;I)V
    .registers 10

    .line 3331
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x10

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p2

    move v5, p0

    .line 3335
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_19

    .line 3337
    :catch_12
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to onProcStatusChange by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public static openAppDB(Z)V
    .registers 6

    const-string v0, "/data/misc/pageboost/pageboost_app_db.db"

    const-string v1, "delete app db and open"

    if-eqz p0, :cond_e

    .line 455
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 459
    :cond_e
    new-instance p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 461
    :try_start_17
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 462
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getWritableDatabase for appDB"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_17 .. :try_end_25} :catch_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_25} :catch_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_26

    goto :goto_88

    :catch_26
    move-exception p0

    .line 475
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception for appDB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :catch_42
    move-exception p0

    .line 468
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException for appDB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "malformed database"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_88

    .line 470
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 472
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_88

    .line 465
    :catch_79
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "SQLiteDatabaseCorruptException for appDB"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_88
    :goto_88
    return-void
.end method

.method public static openFileDB()Z
    .registers 6

    .line 481
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    const/4 v1, 0x1

    .line 482
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const/4 v0, 0x0

    .line 484
    :try_start_e
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 485
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getWritableDatabase for fileDB"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_1e} :catch_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_1e} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_88

    :catch_1f
    move-exception v1

    .line 499
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for fileDB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :catch_3b
    move-exception v2

    .line 491
    sget-object v3, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException for fileDB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "malformed database"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v0, "delete fileDB and open"

    .line 494
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/pageboost/pageboost_file_db.db"

    .line 495
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_77

    :cond_76
    move v1, v0

    :goto_77
    move v0, v1

    goto :goto_88

    .line 488
    :catch_79
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v2, "SQLiteDatabaseCorruptException for fileDB"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 502
    :goto_88
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_8f

    .line 503
    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->initFileDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8f
    return v0
.end method

.method public static prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    .line 3475
    :try_start_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    .line 3478
    :cond_8
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v1, :cond_14

    .line 3479
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "Pageboost pkg list is not initialized yet"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_14
    if-nez p0, :cond_1f

    .line 3483
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "null pkg is requested"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3487
    :cond_1f
    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 3489
    sget-object p1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not in Pageboost pkg list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3d
    const-string v2, "alp"

    .line 3493
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3494
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->activeLaunch()Z

    move-result v1

    if-nez v1, :cond_4c

    return v0

    .line 3498
    :cond_4c
    invoke-static {}, Lcom/android/server/am/Pageboost;->startActiveLaunchTimeout()V

    goto :goto_6d

    .line 3500
    :cond_50
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 3501
    sget-object p1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to prefetch. maybe not captured yet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3506
    :cond_6d
    :goto_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefetchRequested,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8a} :catch_8c

    const/4 p0, 0x0

    return p0

    .line 3510
    :catch_8c
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to prefetchPackage by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static realupdatePackages()V
    .registers 9

    .line 3150
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3154
    :cond_7
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-nez v0, :cond_11

    goto/16 :goto_a8

    .line 3160
    :cond_11
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v0, :cond_20

    .line 3161
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reinit global list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3170
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3173
    :cond_20
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3174
    sget-object v1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->restoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    const/16 v2, 0x80

    .line 3176
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 3179
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_4b

    goto :goto_36

    .line 3188
    :cond_4b
    sget-object v4, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_98

    .line 3191
    new-instance v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 3192
    invoke-virtual {v1, v5, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add app to global : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_36

    .line 3195
    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3196
    iput v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_36

    .line 3199
    :cond_98
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_36

    .line 3200
    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3201
    iput v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_36

    .line 3207
    :cond_a2
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeNotInstalled()V

    .line 3208
    sput-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-void

    .line 3155
    :cond_a8
    :goto_a8
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static removePackage(Ljava/lang/String;)V
    .registers 2

    .line 3135
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_5

    return-void

    .line 3138
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeFromName(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 3140
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public static sendMessage(ILjava/lang/String;IIII)V
    .registers 8

    .line 2333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_d

    const-string/jumbo v1, "pkg"

    .line 2335
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-ltz p2, :cond_15

    const-string/jumbo p1, "launchtime"

    .line 2338
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_15
    if-ltz p3, :cond_1d

    const-string/jumbo p1, "pid"

    .line 2341
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    if-ltz p4, :cond_25

    const-string/jumbo p1, "status"

    .line 2344
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2346
    :cond_25
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2347
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p5, :cond_37

    .line 2349
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long p2, p5

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3c

    .line 2351
    :cond_37
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3c
    return-void
.end method

.method public static sendMessageWithBundle(ILandroid/os/Bundle;I)V
    .registers 5

    .line 2314
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2315
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p2, :cond_12

    .line 2317
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17

    .line 2319
    :cond_12
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_17
    return-void
.end method

.method public static sendMessageWithObject(ILjava/lang/Object;I)V
    .registers 5

    .line 2324
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    if-lez p2, :cond_f

    .line 2326
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 2328
    :cond_f
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_14
    return-void
.end method

.method public static startActiveLaunch(Ljava/lang/String;)V
    .registers 9

    .line 3344
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_30

    :cond_b
    if-nez p0, :cond_e

    return-void

    .line 3352
    :cond_e
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start alp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x13

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    .line 3353
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_31

    goto :goto_38

    :cond_30
    :goto_30
    return-void

    .line 3355
    :catch_31
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to startActiveLaunch by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public static startActiveLaunchTimeout()V
    .registers 7

    .line 3369
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_16

    :cond_b
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 3373
    sget v6, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static staticInitialize()V
    .registers 4

    .line 242
    :try_start_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Static Initialization of Pageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/Pageboost;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostHandler;

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 250
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 253
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->setConfiguration(J)V

    .line 259
    new-instance v0, Lcom/android/server/am/Pageboost$1;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$1;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    new-instance v0, Lcom/android/server/am/Pageboost$2;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$2;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_4b

    .line 357
    :catch_44
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "failed to staticInitialize by exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public static stopActiveLaunch()V
    .registers 8

    .line 3360
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 3364
    :cond_b
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop alp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 3365
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static updatePackages()V
    .registers 8

    .line 3217
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3227
    :cond_7
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Update Packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x2710

    .line 3228
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_20

    .line 3230
    :catch_19
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "failed to updatePackages by exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method
