.class public Lcom/android/server/pm/DynamicCodeLoggingService;
.super Landroid/app/job/JobService;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;,
        Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
    }
.end annotation


# static fields
.field public static final AUDIT_AVC:I = 0x578

.field public static final AUDIT_WATCHING_JOB_ID:I = 0xc1bb70d

.field public static final AUDIT_WATCHING_PERIOD_MILLIS:J

.field public static final AVC_PREFIX:Ljava/lang/String; = "type=1400 "

.field public static final DEBUG:Z = false

.field public static final EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

.field public static final IDLE_LOGGING_JOB_ID:I = 0x1ef9cc

.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public volatile mAuditWatchingStopRequested:Z

.field public volatile mIdleLoggingStopRequested:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuditWatchingStopRequested(Lcom/android/server/pm/DynamicCodeLoggingService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleLoggingStopRequested(Lcom/android/server/pm/DynamicCodeLoggingService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetEXECUTE_NATIVE_AUDIT_PATTERN()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smunhex(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/DynamicCodeLoggingService;->unhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 50
    const-class v0, Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    const-string v0, ".*\\bavc: granted \\{ execute(?:_no_trans|) \\} .*\\bpath=(?:\"([^\" ]*)\"|([0-9A-F]+)) .*\\bscontext=u:r:untrusted_app(?:_25|_27)?:.*\\btcontext=u:object_r:app_data_file:.*\\btclass=file\\b.*"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return-void
.end method

.method public static getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1

    .line 137
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 6

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "jobscheduler"

    .line 80
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 81
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x1ef9cc

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v3, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 81
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 86
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v3, 0xc1bb70d

    invoke-direct {v1, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v1, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static unhex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_14

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    :cond_9
    const/4 v0, 0x0

    .line 289
    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object p0

    .line 290
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_14
    :goto_14
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 99
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0x1ef9cc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1c

    const v1, 0xc1bb70d

    if-eq v0, v1, :cond_11

    return v3

    .line 109
    :cond_11
    iput-boolean v3, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    .line 110
    new-instance v0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v2

    .line 105
    :cond_1c
    iput-boolean v3, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 106
    new-instance v0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 120
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const v0, 0x1ef9cc

    const/4 v1, 0x1

    if-eq p1, v0, :cond_14

    const v0, 0xc1bb70d

    if-eq p1, v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    return v1

    .line 126
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    return v1
.end method
