.class public Lcom/android/server/LooperStatsService;
.super Landroid/os/Binder;
.source "LooperStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LooperStatsService$LooperShellCommand;,
        Lcom/android/server/LooperStatsService$SettingsObserver;,
        Lcom/android/server/LooperStatsService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG_SYS_LOOPER_STATS_ENABLED:Ljava/lang/String; = "debug.sys.looper_stats_enabled"

.field public static final DEFAULT_ENABLED:Z = true

.field public static final DEFAULT_ENTRIES_SIZE_CAP:I = 0x5dc

.field public static final DEFAULT_SAMPLING_INTERVAL:I = 0x3e8

.field public static final DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final LOOPER_STATS_SERVICE_NAME:Ljava/lang/String; = "looper_stats"

.field public static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_IGNORE_BATTERY_STATUS_KEY:Ljava/lang/String; = "ignore_battery_status"

.field public static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field public static final TAG:Ljava/lang/String; = "LooperStatsService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mIgnoreBatteryStatus:Z

.field public final mStats:Lcom/android/internal/os/LooperStats;

.field public mTrackScreenInteractive:Z


# direct methods
.method public static synthetic $r8$lambda$-vv-7_4orr4hIT14hH-7VJPzENs(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->lambda$dump$3(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5ecgqHRbWuuLW-n1YS6qkJxobSc(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->lambda$dump$0(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BIQ1IAcOtLRqu0--gwFurF4_YTg(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->lambda$dump$1(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w9f1AljrdWnUOFp4OAId-GVGP7Q(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->lambda$dump$2(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/LooperStatsService;)Lcom/android/internal/os/LooperStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/LooperStatsService;->initFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/LooperStatsService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSamplingInterval(Lcom/android/server/LooperStatsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    .line 71
    iput-object p1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;Lcom/android/server/LooperStatsService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V

    return-void
.end method

.method public static synthetic lambda$dump$0(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;
    .registers 1

    .line 115
    iget p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$dump$1(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$dump$2(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$dump$3(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 107
    iget-object v2, v0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    const-string v3, "LooperStatsService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    .line 108
    :cond_f
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    const-string v3, "Start time: "

    .line 109
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getStartTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "On battery time (ms): "

    .line 111
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getBatteryTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 113
    iget-object v0, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 114
    new-instance v3, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda1;-><init>()V

    .line 116
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda2;-><init>()V

    .line 117
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda3;-><init>()V

    .line 118
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    .line 114
    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const-string/jumbo v4, "work_source_uid"

    const-string/jumbo v5, "thread_name"

    const-string/jumbo v6, "handler_class"

    const-string/jumbo v7, "message_name"

    const-string/jumbo v8, "is_interactive"

    const-string/jumbo v9, "message_count"

    const-string/jumbo v10, "recorded_message_count"

    const-string/jumbo v11, "total_latency_micros"

    const-string/jumbo v12, "max_latency_micros"

    const-string/jumbo v13, "total_cpu_micros"

    const-string/jumbo v14, "max_cpu_micros"

    const-string/jumbo v15, "recorded_delay_message_count"

    const-string/jumbo v16, "total_delay_millis"

    const-string/jumbo v17, "max_delay_millis"

    const-string v18, "exception_count"

    .line 119
    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 137
    iget-object v4, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    const-string v5, "__DEBUG_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    goto :goto_a4

    :cond_bb
    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 141
    iget v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 142
    invoke-virtual {v2, v6}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-boolean v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 146
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 147
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 152
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 154
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 155
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    iget-wide v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v5

    const-string v3, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n"

    .line 141
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_a4

    :cond_148
    return-void
.end method

.method public final initFromSettings()V
    .registers 5

    .line 76
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 79
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "looper_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    const-string v2, "LooperStatsService"

    const-string v3, "Bad looper_stats settings"

    .line 82
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/16 v1, 0x3e8

    const-string/jumbo v2, "sampling_interval"

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/server/LooperStatsService;->setSamplingInterval(I)V

    const-string/jumbo v1, "track_screen_state"

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/LooperStatsService;->setTrackScreenInteractive(Z)V

    const-string/jumbo v1, "ignore_battery_status"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/server/LooperStatsService;->setIgnoreBatteryStatus(Z)V

    const/4 v1, 0x1

    const-string v2, "enabled"

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "debug.sys.looper_stats_enabled"

    .line 94
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 102
    new-instance v0, Lcom/android/server/LooperStatsService$LooperShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;Lcom/android/server/LooperStatsService$LooperShellCommand-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final setEnabled(Z)V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    if-eq v0, p1, :cond_19

    .line 162
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 163
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 164
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setAddDebugEntries(Z)V

    if-eqz p1, :cond_15

    .line 165
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    invoke-static {p0}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    :cond_19
    return-void
.end method

.method public final setIgnoreBatteryStatus(Z)V
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    if-eq v0, p1, :cond_10

    .line 178
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setIgnoreBatteryStatus(Z)V

    .line 179
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->reset()V

    :cond_10
    return-void
.end method

.method public final setSamplingInterval(I)V
    .registers 3

    if-lez p1, :cond_8

    .line 186
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    goto :goto_1e

    .line 188
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LooperStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public final setTrackScreenInteractive(Z)V
    .registers 3

    .line 170
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    if-eq v0, p1, :cond_b

    .line 171
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 172
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->reset()V

    :cond_b
    return-void
.end method
