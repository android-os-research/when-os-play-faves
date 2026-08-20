.class public Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;
.super Landroid/app/job/JobService;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMeasurementsJobService"
.end annotation


# static fields
.field public static final COMPUTE_APEX_MODULE_SHA256_JOB_ID:I


# direct methods
.method public static synthetic $r8$lambda$VHb_mGl_DRYWXm3Vhfz5ePl8PCA(Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;Landroid/app/job/JobParameters;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 394
    const-class v0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .registers 3

    const-string/jumbo v0, "transparency"

    .line 412
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;

    move-result-object v0

    .line 416
    :try_start_b
    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getApexInfo()Ljava/util/Map;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_13

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catch_13
    move-exception p0

    const-string p1, "TransparencyService"

    const-string v0, "Updating binary measurements was interrupted."

    .line 418
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string p1, "TransparencyService"

    const-string v0, "Scheduling APEX & Module SHA256 digest computation job"

    .line 434
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_17

    const-string p0, "Failed to obtain an instance of JobScheduler."

    .line 437
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :cond_17
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p0, 0x1

    .line 443
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-eq v0, p0, :cond_3e

    const-string p0, "Failed to schedule job to update binary measurements."

    .line 447
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v0, "Job %d to update binary measurements scheduled successfully."

    .line 450
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    const-string v0, "TransparencyService"

    const-string v1, "Job to update binary measurements started."

    .line 399
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    sget v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    if-eq v0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    .line 407
    :cond_11
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
