.class public Lcom/android/server/wm/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$LockContentionInfo;,
        Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;,
        Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;,
        Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;,
        Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;,
        Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;
    }
.end annotation


# static fields
.field public static Before_Store_time:J = -0x1L

.field public static final DATA_FORMAT:Ljava/lang/String; = "[shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageIoInfoData] [launchTimeStandardDeviation]"

.field public static final DEBUG:Z = false

.field public static ENABLE:Z = true

.field public static final NO_CONTEXT:I = -0x63

.field public static final NO_VALUE:I = -0x1

.field public static final PROC_KPERF_OLOG:Ljava/lang/String; = "/proc/kperfmon"

.field public static final PROC_STORE_OLOG:Ljava/lang/String; = "/data/log/remaining_olog"

.field public static final PROC_STORE_OLOG_NOW:Ljava/lang/String; = "/data/log/remaining_olog_now"

.field public static PerfmondSocketName:Ljava/lang/String; = "perfmon_send"

.field public static final SIMPLE_Store_Time:J = 0xdbba00L

.field public static final TAG:Ljava/lang/String; = "SluggishDetector"

.field public static final VERSION_NAME:Ljava/lang/String; = "1.2.0"

.field public static mContext:Landroid/content/Context;

.field public static mReceiver:Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;

.field public static mReceiverThread:Ljava/lang/Thread;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetBefore_Store_time()J
    .registers 2

    sget-wide v0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPerfmondSocketName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmReceiverThread()Ljava/lang/Thread;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mReceiverThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputBefore_Store_time(J)V
    .registers 2

    sput-wide p0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 72
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    goto :goto_1f

    :cond_17
    const-string v1, " [SD] kperfmon nonexist"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    .line 117
    :goto_1f
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2c

    .line 122
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$sminit()V

    .line 129
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$sminit()V

    .line 134
    :try_start_29
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstep()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1489
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smclear()V

    if-eqz p0, :cond_a

    const-string v0, "CLEAR SLUGGISH DETECTOR"

    .line 1492
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1550
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_11

    if-nez p0, :cond_e

    .line 1556
    sget-object p0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    const-string v0, "dump() - pw is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1563
    :cond_e
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smdump(Ljava/io/PrintWriter;)V

    :cond_11
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 1497
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_21

    if-eqz p0, :cond_1a

    if-nez p1, :cond_9

    goto :goto_1a

    :cond_9
    const-string/jumbo v0, "slgdetect_periodic_olog"

    .line 1536
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1537
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_21

    .line 1540
    :cond_16
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector;->dump(Ljava/io/PrintWriter;)V

    goto :goto_21

    .line 1503
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    const-string p1, "executeCommand() - pw or cmd is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void
.end method

.method public static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1269
    :cond_4
    :try_start_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1272
    :goto_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1273
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1275
    :cond_13
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    return-object v0
.end method

.method public static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1302
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1303
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1305
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 1308
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getModifyTimeFromFile(Ljava/lang/String;)J
    .registers 5

    .line 1339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 1344
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1345
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v1, v0, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    :cond_15
    return-wide v1

    :catch_16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static reportLaunch(Lcom/android/server/wm/ActivityRecord;J)V
    .registers 15

    .line 1425
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_33

    if-eqz p0, :cond_33

    .line 1427
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_15

    goto :goto_33

    .line 1436
    :cond_15
    :try_start_15
    new-instance v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/wm/SluggishDetector$ReportLaunchInfo-IA;)V

    const/16 p0, 0xc

    .line 1437
    invoke-static {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendDataToHandler(ILjava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_33

    nop

    :catch_33
    :cond_33
    :goto_33
    return-void
.end method

.method public static reportStoreOLOGNow()V
    .registers 2

    .line 1368
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "reportStoreOLOGNow"

    const/16 v1, 0x16

    .line 1379
    :try_start_9
    invoke-static {v1, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendDataToHandler(ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 1392
    sput-object p0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setLaunch(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1399
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_1d

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_1d

    .line 1411
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;ILcom/android/server/wm/SluggishDetector$SetLaunchInfo-IA;)V

    const/16 p0, 0xb

    .line 1412
    invoke-static {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendDataToHandler(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    nop

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static setLockContentionInfo(SLjava/lang/String;)V
    .registers 3

    .line 1461
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_11

    const/16 v0, 0xd

    .line 1469
    :try_start_6
    invoke-static {v0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendDataToHandler(ILjava/lang/Object;)V

    const/16 v0, 0xe

    .line 1471
    invoke-static {v0, p0, p1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 1473
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstep()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public static setReboot()V
    .registers 2

    .line 1449
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, " [OLOG] setReboot "

    .line 1455
    invoke-static {v1}, Landroid/util/PerfLog;->d(Ljava/lang/String;)V

    const-string v1, "OLOG Reboot"

    .line 1457
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
