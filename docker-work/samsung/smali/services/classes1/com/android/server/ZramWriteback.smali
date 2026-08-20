.class public final Lcom/android/server/ZramWriteback;
.super Landroid/app/job/JobService;
.source "ZramWriteback.java"


# static fields
.field public static final BDEV_SYS:Ljava/lang/String; = "/sys/block/zram%d/backing_dev"

.field public static final DEBUG:Z = false

.field public static final FIRST_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.first_wb_delay_mins"

.field public static final FORCE_WRITEBACK_PROP:Ljava/lang/String; = "zram.force_writeback"

.field public static final IDLE_SYS:Ljava/lang/String; = "/sys/block/zram%d/idle"

.field public static final IDLE_SYS_ALL_PAGES:Ljava/lang/String; = "all"

.field public static final MARK_IDLE_DELAY_PROP:Ljava/lang/String; = "ro.zram.mark_idle_delay_mins"

.field public static final MARK_IDLE_JOB_ID:I = 0x32b

.field public static final MAX_ZRAM_DEVICES:I = 0x100

.field public static final PERIODIC_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.periodic_wb_delay_hours"

.field public static final TAG:Ljava/lang/String; = "ZramWriteback"

.field public static final WB_STATS_MAX_FILE_SIZE:I = 0x80

.field public static final WB_STATS_SYS:Ljava/lang/String; = "/sys/block/zram%d/bd_stat"

.field public static final WB_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback"

.field public static final WB_SYS_IDLE_PAGES:Ljava/lang/String; = "idle"

.field public static final WRITEBACK_IDLE_JOB_ID:I = 0x32c

.field public static sZramDeviceId:I

.field public static final sZramWriteback:Landroid/content/ComponentName;


# direct methods
.method public static bridge synthetic -$$Nest$mmarkAndFlushPages(Lcom/android/server/ZramWriteback;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->markAndFlushPages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smschedNextWriteback(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ZramWriteback;->schedNextWriteback(Landroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ZramWriteback;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static isWritebackEnabled()Z
    .registers 7

    const-string v0, "ZramWriteback"

    const/4 v1, 0x0

    .line 111
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/zram%d/backing_dev"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget v6, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    return v4

    :cond_2f
    const-string v2, "Writeback device is not set"

    .line 116
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    const-string v2, "Writeback is not enabled on zram"

    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return v1
.end method

.method public static schedNextWriteback(Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v0, "ro.zram.periodic_wb_delay_hours"

    const/16 v1, 0x18

    .line 125
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "zram.force_writeback"

    const/4 v2, 0x0

    .line 126
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "jobscheduler"

    .line 127
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 129
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/16 v4, 0x32c

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    .line 130
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    xor-int/lit8 v1, v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static scheduleZramWriteback(Landroid/content/Context;)V
    .registers 11

    const-string/jumbo v0, "ro.zram.mark_idle_delay_mins"

    const/16 v1, 0x14

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ro.zram.first_wb_delay_mins"

    const/16 v2, 0xb4

    .line 171
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "zram.force_writeback"

    const/4 v3, 0x0

    .line 172
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "jobscheduler"

    .line 174
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 178
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget-object v4, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    const/16 v5, 0x32b

    invoke-direct {v3, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    .line 179
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 186
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x32c

    invoke-direct {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    int-to-long v3, v1

    .line 187
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    xor-int/lit8 v1, v2, 0x1

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public final flushIdlePages()V
    .registers 3

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 76
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "/sys/block/zram%d/writeback"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 78
    :try_start_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "idle"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_34

    .line 80
    :catch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZramWriteback"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public final getWrittenPageCount()I
    .registers 4

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 86
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "/sys/block/zram%d/bd_stat"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 88
    :try_start_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, ""

    .line 89
    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_32} :catch_33

    return p0

    .line 92
    :catch_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read writeback stats from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZramWriteback"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final markAndFlushPages()V
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->flushIdlePages()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total pages written to disk is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZramWriteback"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public final markPagesAsIdle()V
    .registers 3

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 66
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "/sys/block/zram%d/idle"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 68
    :try_start_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "all"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_33

    .line 70
    :catch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZramWriteback"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 138
    invoke-static {}, Lcom/android/server/ZramWriteback;->isWritebackEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 139
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    .line 143
    :cond_b
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32b

    if-ne v0, v2, :cond_1a

    .line 144
    invoke-virtual {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 145
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    .line 148
    :cond_1a
    new-instance v0, Lcom/android/server/ZramWriteback$1;

    const-string v1, "ZramWriteback_WritebackIdlePages"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/ZramWriteback$1;-><init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
