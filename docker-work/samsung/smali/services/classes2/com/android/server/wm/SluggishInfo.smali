.class public Lcom/android/server/wm/SluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;,
        Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;
    }
.end annotation


# static fields
.field public static ALWAYS:Z = false

.field public static final A_CHANGE:S = 0x1s

.field public static final A_END:S = 0x2s

.field public static final A_START:S = 0x0s

.field public static CurrentLocale:Ljava/util/Locale; = null

.field public static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field public static DEBUG:Z = false

.field public static final DEFAULT_COMPONENT_NAME:Ljava/lang/String;

.field public static final DEFAULT_MAXIMUM_LOG_COUNT:I = 0x3e8

.field public static DateFormat:Ljava/text/SimpleDateFormat; = null

.field public static ENABLE:Z = false

.field public static FLAG_DHA:Z = false

.field public static FLAG_MEMINFO:Z = false

.field public static FLAG_VMSTAT:Z = false

.field public static LaunchingComponentName:Ljava/lang/String; = null

.field public static volatile LogList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static MAXIMUM_LOG_COUNT:I = 0x0

.field public static final MSG_ADD_CHANGE_ACTIVITY_LOG:I = 0x3

.field public static final MSG_ADD_END_LAUNCHING_LOG:I = 0x2

.field public static final MSG_ADD_START_LAUNCHING_LOG:I = 0x1

.field public static final PROC_KPERF_OLOG:Ljava/lang/String; = "/proc/kperfmon"

.field public static final PROC_SEND_TAR:Ljava/lang/String; = "/sys/block/sda/iomon"

.field public static final TAG:Ljava/lang/String; = "SluggishInfo"

.field public static final TINYM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.tinym"

.field public static final TypeDHA:[Ljava/lang/String;

.field public static final TypeMeminfo:[Ljava/lang/String;

.field public static final TypeSimpleDHA:[Ljava/lang/String;

.field public static final TypeVmstat:[Ljava/lang/String;

.field public static final UNKNOWN:I = -0x1

.field public static volatile instance:Lcom/android/server/wm/SluggishInfo;

.field public static numCached:I

.field public static numCachedHiddenProcs:I

.field public static numEmpty:I

.field public static numNonCachedProcs:I


# instance fields
.field public mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinstance()Lcom/android/server/wm/SluggishInfo;
    .registers 1

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smaddInnerChangeActivityLog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddInnerEndLaunchingLog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddInnerStartLaunchingLog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCurrentMeminfo()[J
    .registers 1

    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetCurrentSimpleDHAStat()[I
    .registers 1

    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentSimpleDHAStat()[I

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 11

    .line 40
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_AAAA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    .line 46
    sput-boolean v2, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    .line 47
    sput-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    .line 48
    sput-boolean v2, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    const/4 v2, 0x0

    .line 51
    sput-object v2, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    .line 52
    sput-object v2, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    const/16 v3, 0x3e8

    .line 55
    sput v3, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    .line 57
    sput-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    const/4 v3, 0x1

    .line 59
    sput-boolean v3, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    .line 60
    sput-boolean v3, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    .line 61
    sput-boolean v3, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    .line 71
    sput-object v1, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v4, "/proc/kperfmon"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_44

    const-string v4, " [SI] Start SI "

    .line 83
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_44
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, " [SI] Start SI kperfmon exist"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput-boolean v3, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    goto :goto_57

    :cond_52
    const-string v1, " [SI] kperfmon nonexist"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_57
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_6d

    .line 95
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_64

    const-string v1, "SluggishInfo static initialize"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_64
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 99
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initDateFormat()V

    .line 100
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initSluggishInfo()V

    .line 104
    :cond_6d
    sput-object v2, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    const-string v0, "MemFree"

    const-string v1, "Cached"

    const-string v2, "SwapFree"

    .line 477
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 519
    sput v0, Lcom/android/server/wm/SluggishInfo;->numCached:I

    .line 520
    sput v0, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    .line 521
    sput v0, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    .line 522
    sput v0, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    const-string v0, "numCached"

    const-string v1, "numEmpty"

    const-string v2, "numCachedHiddenProcs"

    const-string v3, "numNonCachedProcs"

    .line 541
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    .line 547
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeSimpleDHA:[Ljava/lang/String;

    const-string/jumbo v1, "pgpgin"

    const-string/jumbo v2, "pgmajfault"

    const-string/jumbo v3, "pgsteal_kswapd_dma"

    const-string/jumbo v4, "pgsteal_kswapd_normal"

    const-string/jumbo v5, "pgsteal_kswapd_movable"

    const-string/jumbo v6, "pgsteal_direct_dma"

    const-string/jumbo v7, "pgsteal_direct_normal"

    const-string/jumbo v8, "pgsteal_direct_movable"

    const-string v9, "allocstall"

    const-string v10, "compact_stall"

    .line 577
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 106
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    .line 110
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_33

    .line 112
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 113
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_17
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    iget-object v1, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;-><init>(Landroid/os/Looper;Lcom/android/server/wm/SluggishInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    :cond_33
    return-void
.end method

.method public static Clear()V
    .registers 2

    .line 231
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 232
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "Clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_b
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_12

    .line 235
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 237
    :cond_12
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static Clear(Ljava/io/PrintWriter;)V
    .registers 2

    .line 242
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->Clear()V

    const-string v0, "CLEAR SLUGGISH INFO LOG"

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static addChangeActivityLog(Ljava/lang/String;)V
    .registers 5

    .line 991
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2e

    if-nez p0, :cond_7

    return-void

    .line 996
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addChangeActivityLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_23
    const/4 v0, 0x3

    .line 999
    invoke-static {v0, p0}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 1001
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_2e

    .line 1002
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2e
    return-void
.end method

.method public static addEndLaunchLog(Ljava/lang/String;J)V
    .registers 7

    .line 974
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_47

    if-nez p0, :cond_7

    return-void

    .line 979
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addEndLaunchLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_23
    const/4 v0, 0x2

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 984
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_47

    .line 985
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_47
    return-void
.end method

.method public static declared-synchronized addInnerChangeActivityLog(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 289
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_61

    if-nez p0, :cond_a

    goto :goto_61

    .line 292
    :cond_a
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    if-nez v1, :cond_37

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 293
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 294
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addInnerChangeActivityLog() - LaunchingComponentName == componentName ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), return"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_63

    .line 296
    :cond_35
    monitor-exit v0

    return-void

    .line 299
    :cond_37
    :try_start_37
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_53

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerChangeActivityLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_53
    const/4 v1, 0x4

    const/4 v4, 0x1

    .line 303
    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 306
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_5f

    .line 307
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_63

    .line 308
    :cond_5f
    monitor-exit v0

    return-void

    .line 290
    :cond_61
    :goto_61
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addInnerEndLaunchingLog(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 312
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_38

    if-nez p0, :cond_a

    goto :goto_38

    .line 315
    :cond_a
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 317
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_2a

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerEndLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2a
    const/4 v1, 0x4

    const/4 v4, 0x2

    .line 321
    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 324
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_36

    .line 325
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 326
    :cond_36
    monitor-exit v0

    return-void

    .line 313
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addInnerStartLaunchingLog(Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 272
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_36

    if-nez p0, :cond_a

    goto :goto_36

    .line 275
    :cond_a
    sput-object p0, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 277
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_28

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerStartLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_28
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 280
    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 283
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_34

    .line 284
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_38

    .line 285
    :cond_34
    monitor-exit v0

    return-void

    .line 273
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addLog(Ljava/lang/String;)V
    .registers 8

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 330
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f3

    if-eqz v1, :cond_f1

    if-nez p0, :cond_b

    goto/16 :goto_f1

    :cond_b
    const/4 v1, 0x4

    .line 334
    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.tinym"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 335
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 336
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, "addLog() - current log is tinym, return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_25
    .catchall {:try_start_c .. :try_end_23} :catchall_f3

    .line 338
    :cond_23
    monitor-exit v0

    return-void

    .line 342
    :catch_25
    :cond_25
    :try_start_25
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_55

    .line 343
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLog() - log : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_addLog()"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_f3

    .line 349
    :cond_55
    :try_start_55
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v2, :cond_5c

    .line 350
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 352
    :cond_5c
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v5, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    if-ne v2, v5, :cond_6b

    .line 353
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 355
    :cond_6b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 356
    sget-object v5, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_7d

    if-eqz v2, :cond_80

    sget-object v5, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 357
    :cond_7d
    invoke-static {v2}, Lcom/android/server/wm/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    .line 359
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 364
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_c6

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d7

    .line 367
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00-00 00:00:00.000 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 369
    :goto_d7
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_dc} :catch_dd
    .catchall {:try_start_55 .. :try_end_dc} :catchall_f3

    goto :goto_e8

    :catch_dd
    move-exception p0

    .line 372
    :try_start_de
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v2, "addLog() - ERROR"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    :goto_e8
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_ef

    .line 377
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_ef
    .catchall {:try_start_de .. :try_end_ef} :catchall_f3

    .line 378
    :cond_ef
    monitor-exit v0

    return-void

    .line 331
    :cond_f1
    :goto_f1
    monitor-exit v0

    return-void

    :catchall_f3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static addStartLaunchLog(Ljava/lang/String;)V
    .registers 5

    .line 957
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2e

    if-nez p0, :cond_7

    return-void

    .line 962
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addStartLaunchLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_23
    const/4 v0, 0x1

    .line 965
    invoke-static {v0, p0}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 967
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_2e

    .line 968
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2e
    return-void
.end method

.method public static convertIntArrToString([I)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 649
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 652
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    array-length v3, p0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_37

    aget v5, p0, v4

    .line 654
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 655
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 658
    :cond_37
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_3e

    .line 659
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 661
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertLongArrToString([J)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 669
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 672
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    array-length v3, p0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_37

    aget-wide v5, p0, v4

    .line 674
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 675
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 678
    :cond_37
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_3e

    .line 679
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 681
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "==================================================="

    .line 893
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_14d

    if-nez p0, :cond_9

    return-void

    .line 898
    :cond_9
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 899
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v2, "dump()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    :try_start_17
    const-string v4, "SLUGGISH INFO (dumpsys activity slginfo)"

    .line 905
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ENABLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " DEBUG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ALWAYS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MAXIMUM_LOG_COUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_MEMINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_DHA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_VMSTAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 915
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-nez v4, :cond_c4

    return-void

    .line 920
    :cond_c4
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_df

    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_dump()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x1

    :cond_df
    const-string v4, " DataFormat : "

    .line 925
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    if-eqz v4, :cond_f1

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    :cond_f1
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-eqz v4, :cond_fe

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    :cond_fe
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v4, :cond_10b

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    :cond_10b
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 932
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 935
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v4, :cond_11b

    .line 936
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 938
    :cond_11b
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_121
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_131

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 939
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_121

    .line 941
    :cond_131
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 942
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH INFO"

    .line 943
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_13c} :catch_13d

    goto :goto_148

    :catch_13d
    move-exception p0

    .line 946
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, "dump() - ERROR"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_148
    if-eqz v1, :cond_14d

    .line 951
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_14d
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13

    const-string/jumbo v0, "slginfo_"

    .line 802
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_27b

    if-eqz p0, :cond_27b

    if-nez p1, :cond_d

    goto/16 :goto_27b

    .line 807
    :cond_d
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_3d

    .line 808
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeCommand() - cmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_executeCommand()"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3d
    const-string/jumbo v1, "slginfo"

    .line 812
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_270

    .line 815
    :try_start_46
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_265

    const-string v4, "executeCommand() - "

    const-string/jumbo v5, "unknown command : "

    if-eqz v1, :cond_23e

    :try_start_51
    const-string v1, ""

    .line 816
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 819
    array-length v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_75

    .line 820
    aget-object p1, v0, v6

    const-string v0, "CLEAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_270

    .line 821
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_270

    .line 823
    :cond_75
    array-length v1, v0

    const/4 v8, 0x2

    if-ne v1, v8, :cond_217

    .line 824
    aget-object v1, v0, v6

    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_27c

    goto :goto_c9

    :sswitch_84
    const-string v8, "ENABLE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    goto :goto_ca

    :sswitch_8d
    const-string v6, "ALWAYS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v6, v8

    goto :goto_ca

    :sswitch_97
    const-string v6, "FLAG_MEMINFO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v6, 0x4

    goto :goto_ca

    :sswitch_a1
    const-string v6, "DEBUG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    move v6, v7

    goto :goto_ca

    :sswitch_ab
    const-string v6, "MAXIMUM_LOG_COUNT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v6, 0x3

    goto :goto_ca

    :sswitch_b5
    const-string v6, "FLAG_VMSTAT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v6, 0x6

    goto :goto_ca

    :sswitch_bf
    const-string v6, "FLAG_DHA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_c5} :catch_265

    if-eqz v1, :cond_c9

    const/4 v6, 0x5

    goto :goto_ca

    :cond_c9
    :goto_c9
    move v6, v9

    :goto_ca
    const-string v1, "change FLAG_MEMINFO:"

    const-string/jumbo v8, "true"

    packed-switch v6, :pswitch_data_29a

    .line 864
    :try_start_d2
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_1f2

    .line 859
    :pswitch_d6
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    .line 860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change FLAG_VMSTAT:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_270

    .line 854
    :pswitch_f9
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    .line 855
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_270

    .line 849
    :pswitch_11a
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    .line 850
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_139} :catch_265

    goto/16 :goto_270

    .line 841
    :pswitch_13b
    :try_start_13b
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change MAXIMUM_LOG_COUNT:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_13b .. :try_end_159} :catch_15b
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_159} :catch_265

    goto/16 :goto_270

    .line 844
    :catch_15b
    :try_start_15b
    sget-object p1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeCommand() - ERROR parseInt : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown value : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 835
    :pswitch_18c
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    .line 836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change ALWAYS:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_270

    .line 830
    :pswitch_1af
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change DEBUG:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_270

    .line 826
    :pswitch_1d2
    aget-object p1, v0, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change ENABLE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 864
    :goto_1f2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 865
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_270

    .line 869
    :cond_217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 870
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_270

    .line 874
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 875
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_264} :catch_265

    goto :goto_270

    :catch_265
    move-exception p1

    .line 879
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "executeCommand() - ERROR"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 884
    :cond_270
    :goto_270
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->dump(Ljava/io/PrintWriter;)V

    .line 886
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_27b

    .line 887
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :cond_27b
    :goto_27b
    return-void

    :sswitch_data_27c
    .sparse-switch
        -0x71146716 -> :sswitch_bf
        -0x16411642 -> :sswitch_b5
        -0xb2a4b6b -> :sswitch_ab
        0x3de9e33 -> :sswitch_a1
        0x64061610 -> :sswitch_97
        0x7342860f -> :sswitch_8d
        0x7a281983 -> :sswitch_84
    .end sparse-switch

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1af
        :pswitch_18c
        :pswitch_13b
        :pswitch_11a
        :pswitch_f9
        :pswitch_d6
    .end packed-switch
.end method

.method public static getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    if-eqz p0, :cond_55

    if-nez p1, :cond_5

    goto :goto_55

    .line 689
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCommonLines()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 692
    :cond_21
    array-length v0, p0

    .line 693
    array-length v3, p0

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    .line 695
    :goto_27
    array-length v6, p1

    if-ge v5, v6, :cond_4d

    if-lez v0, :cond_4d

    move v6, v4

    .line 696
    :goto_2d
    array-length v7, p0

    if-ge v6, v7, :cond_4a

    if-lez v0, :cond_4a

    .line 697
    aget-object v7, v3, v6

    if-eqz v7, :cond_37

    goto :goto_47

    .line 700
    :cond_37
    aget-object v7, p1, v5

    aget-object v8, p0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 701
    aget-object v7, p1, v5

    aput-object v7, v3, v6

    add-int/lit8 v0, v0, -0x1

    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 707
    :cond_4d
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_54

    .line 708
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_54
    return-object v3

    :cond_55
    :goto_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentDHAStat()[I
    .registers 5

    .line 553
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1c
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v3, 0x0

    .line 556
    sget v4, Lcom/android/server/wm/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    const/4 v3, 0x2

    sget v4, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    aput v4, v0, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    aput v4, v0, v3

    .line 558
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3a

    .line 559
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3a
    return-object v0
.end method

.method public static getCurrentMeminfo()[J
    .registers 11

    const-string v0, ""

    .line 484
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1e

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_getCurrentMeminfo()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 487
    :cond_1e
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v4, :cond_7f

    const-string v5, "/proc/meminfo"

    .line 490
    invoke-static {v5}, Lcom/android/server/wm/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 492
    invoke-static {v1, v5}, Lcom/android/server/wm/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    const/4 v5, 0x0

    .line 494
    :goto_35
    array-length v6, v1

    if-ge v5, v6, :cond_7f

    const-wide/16 v6, -0x1

    .line 496
    :try_start_3a
    aget-object v8, v1, v5

    if-eqz v8, :cond_7c

    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    const-string v9, "kB"

    .line 498
    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 499
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v5
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_6b} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6b} :catch_6c

    goto :goto_7c

    :catch_6c
    move-exception v8

    .line 504
    sget-object v9, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v10, "getCurrentMeminfo() - ERROR"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    aput-wide v6, v4, v5

    goto :goto_7c

    .line 502
    :catch_7a
    aput-wide v6, v4, v5

    :cond_7c
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 513
    :cond_7f
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_86

    .line 514
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_86
    return-object v4
.end method

.method public static getCurrentSimpleDHAStat()[I
    .registers 5

    .line 566
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1c
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    .line 569
    sget v4, Lcom/android/server/wm/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    .line 571
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 572
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_30
    return-object v0
.end method

.method public static getCurrentSimpleSluggishInfo()Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .registers 4

    .line 1065
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1066
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentSimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_27

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1071
    :cond_27
    new-instance v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    invoke-direct {v0}, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;-><init>()V

    .line 1073
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_33

    .line 1074
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_33
    return-object v0
.end method

.method public static getCurrentStat()Ljava/lang/String;
    .registers 12

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_10

    .line 387
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto :goto_11

    :cond_10
    move-wide v4, v2

    .line 389
    :goto_11
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    const-string v6, " ms) "

    const-wide v7, 0x412e848000000000L    # 1000000.0

    if-eqz v1, :cond_51

    .line 391
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 394
    :cond_24
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v1

    .line 395
    invoke-static {v1}, Lcom/android/server/wm/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_51

    .line 398
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    long-to-double v9, v9

    div-double/2addr v9, v7

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(meminfo_Took: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_51
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-eqz v1, :cond_8a

    .line 406
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_5d

    .line 407
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 409
    :cond_5d
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentDHAStat()[I

    move-result-object v1

    .line 410
    invoke-static {v1}, Lcom/android/server/wm/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    long-to-double v9, v9

    div-double/2addr v9, v7

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(dha_Took: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_8a
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v1, :cond_c3

    .line 421
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_96

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 424
    :cond_96
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentVmstat()[J

    move-result-object v1

    .line 425
    invoke-static {v1}, Lcom/android/server/wm/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_c3

    .line 428
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    long-to-double v1, v9

    div-double/2addr v1, v7

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(vmstat_Took: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_c3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_ec

    .line 436
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    long-to-double v1, v1

    div-double/2addr v1, v7

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(total_Took: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVmstat()[J
    .registers 10

    .line 591
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentVmstat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 594
    :cond_1c
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v3

    if-eqz v3, :cond_66

    const-string v4, "/proc/vmstat"

    .line 597
    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 599
    invoke-static {v0, v4}, Lcom/android/server/wm/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v4, 0x0

    .line 601
    :goto_33
    array-length v5, v0

    if-ge v4, v5, :cond_66

    const-wide/16 v5, -0x1

    .line 603
    :try_start_38
    aget-object v7, v0, v4

    if-eqz v7, :cond_63

    .line 604
    sget-object v8, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    aget-object v8, v8, v4

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 605
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v3, v4
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_52} :catch_61
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_52} :catch_53

    goto :goto_63

    :catch_53
    move-exception v7

    .line 610
    sget-object v8, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v9, "getCurrentVmstat() - ERROR"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    aput-wide v5, v3, v4

    goto :goto_63

    .line 608
    :catch_61
    aput-wide v5, v3, v4

    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 619
    :cond_66
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_6d

    .line 620
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_6d
    return-object v3
.end method

.method public static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 754
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_20

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_getLinesFromFile()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 758
    :cond_20
    :try_start_20
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 761
    :goto_25
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 762
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 764
    :cond_2f
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 766
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 767
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_42} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_43

    :cond_42
    return-object p0

    :catch_43
    move-exception p0

    .line 775
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    :catch_4f
    move-exception p0

    .line 772
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, "getLinesFromBufferedReader() - ERROR readLine "

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 779
    :goto_5a
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_61

    .line 780
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_61
    return-object v0
.end method

.method public static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 715
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getLinesFromFile()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 719
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 720
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 722
    invoke-static {v3}, Lcom/android/server/wm/SluggishInfo;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v4

    .line 724
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 725
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 727
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 728
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_37} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_44
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    :cond_37
    return-object v4

    :catch_38
    move-exception p0

    .line 739
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, "getLinesFromFile() - ERROR"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    :catch_44
    move-exception v0

    .line 736
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLinesFromFile() - ERROR IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    :catch_5f
    move-exception v0

    .line 733
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLinesFromFile() - ERROR FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 743
    :goto_79
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_80

    .line 744
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_80
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypeString([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 790
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 792
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 793
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 796
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUnknownValueArray([Ljava/lang/String;)[J
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 631
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_20

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getUnknownValueArray()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 634
    :cond_20
    array-length p0, p0

    new-array v0, p0, [J

    const/4 v3, 0x0

    :goto_24
    if-ge v3, p0, :cond_2d

    const-wide/16 v4, -0x1

    .line 636
    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 638
    :cond_2d
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_34

    .line 639
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_34
    return-object v0
.end method

.method public static initDateFormat()V
    .registers 1

    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    return-void
.end method

.method public static initDateFormat(Ljava/util/Locale;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 196
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 197
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "initDateFormat()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_e
    sput-object p0, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    .line 202
    :try_start_10
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p0, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception p0

    .line 204
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "initDateFormat() - ERROR"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 206
    sput-object p0, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    :goto_2a
    return-void
.end method

.method public static initLogList()V
    .registers 2

    .line 179
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 180
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "initLogList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_b
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_22

    .line 183
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 184
    :try_start_12
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v1, :cond_1d

    .line 185
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    .line 187
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1

    :cond_22
    :goto_22
    return-void
.end method

.method public static initSluggishInfo()V
    .registers 2

    .line 217
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 218
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "initSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_36

    .line 221
    :cond_1b
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 222
    :try_start_1e
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v1, :cond_35

    .line 223
    :cond_2e
    new-instance v1, Lcom/android/server/wm/SluggishInfo;

    invoke-direct {v1}, Lcom/android/server/wm/SluggishInfo;-><init>()V

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    .line 225
    :cond_35
    monitor-exit v0

    :cond_36
    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_37

    throw v1
.end method

.method public static refreshDHAStatForSluggishInfo(IIII)V
    .registers 8

    .line 526
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-nez v0, :cond_5

    return-void

    .line 529
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_refreshDHAStatForSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 532
    :cond_21
    sput p0, Lcom/android/server/wm/SluggishInfo;->numCached:I

    .line 533
    sput p1, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    .line 534
    sput p2, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    .line 535
    sput p3, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    .line 537
    sget-boolean p0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p0, :cond_30

    .line 538
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_30
    return-void
.end method

.method public static sendLogToHandler(ILjava/lang/String;)V
    .registers 5

    .line 248
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_54

    if-nez p1, :cond_7

    return-void

    .line 253
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 254
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLogToHandler() - log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_22
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_35

    .line 257
    :cond_32
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initSluggishInfo()V

    .line 259
    :cond_35
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 261
    sget-object p1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object p1, p1, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    .line 262
    sget-boolean p1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz p1, :cond_5c

    if-nez p0, :cond_5c

    .line 263
    sget-object p0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendLogToHandler() - failed to send Message"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 266
    :cond_54
    sget-object p0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendLogToHandler() - SEC_PRODUCT_FEATURE_COMMON_CONFIG_SLUGGISH_INFO=false"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;)V
    .registers 5

    .line 448
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/block/sda/iomon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 452
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [OLOG] sendMessage msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v1, 0x0

    .line 456
    :try_start_22
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 457
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2d} :catch_44

    .line 458
    :try_start_2d
    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 459
    sget-object p0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v0, " [OLOG] sendMessage write msg "

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_39

    move-object v1, v2

    goto :goto_5b

    :catch_39
    move-exception p0

    move-object v1, v2

    goto :goto_45

    .line 461
    :cond_3c
    :try_start_3c
    sget-object p0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v0, " [OLOG] sendMessage lk_send is NOT file~"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_5b

    :catch_44
    move-exception p0

    .line 464
    :goto_45
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [OLOG] sendMessage - write Exception error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    if-eqz v1, :cond_78

    .line 469
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_78

    :catch_61
    move-exception p0

    .line 471
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [OLOG] sendMessage - close Exception error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz p0, :cond_b

    .line 127
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_b
    return-void
.end method
