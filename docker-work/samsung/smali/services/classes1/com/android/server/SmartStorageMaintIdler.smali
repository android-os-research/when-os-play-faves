.class public Lcom/android/server/SmartStorageMaintIdler;
.super Landroid/app/job/JobService;
.source "SmartStorageMaintIdler.java"


# static fields
.field public static final SMART_MAINT_JOB_ID:I = 0xaf8

.field public static final SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

.field public static final TAG:Ljava/lang/String; = "SmartStorageMaintIdler"


# instance fields
.field public final mFinishCallback:Ljava/lang/Runnable;

.field public mJobParams:Landroid/app/job/JobParameters;

.field public mStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmJobParams(Lcom/android/server/SmartStorageMaintIdler;)Landroid/app/job/JobParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/SmartStorageMaintIdler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStarted(Lcom/android/server/SmartStorageMaintIdler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/SmartStorageMaintIdler;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 39
    new-instance v0, Lcom/android/server/SmartStorageMaintIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/SmartStorageMaintIdler$1;-><init>(Lcom/android/server/SmartStorageMaintIdler;)V

    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static scheduleSmartIdlePass(Landroid/content/Context;I)V
    .registers 6

    .line 74
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    if-eqz v0, :cond_2d

    .line 75
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->isPassedLifetimeThresh()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2d

    .line 79
    :cond_b
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 83
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0xaf8

    sget-object v3, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    invoke-direct {p1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 87
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 56
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 58
    iput-boolean v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    .line 59
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService;->runSmartIdleMaint(Ljava/lang/Runnable;)V

    :cond_e
    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    return p1
.end method
