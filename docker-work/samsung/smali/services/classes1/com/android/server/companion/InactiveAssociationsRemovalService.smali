.class public Lcom/android/server/companion/InactiveAssociationsRemovalService;
.super Landroid/app/job/JobService;
.source "InactiveAssociationsRemovalService.java"


# static fields
.field public static final JOB_ID:I

.field public static final ONE_DAY_INTERVAL:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 39
    const-class v0, Lcom/android/server/companion/InactiveAssociationsRemovalService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/android/server/companion/InactiveAssociationsRemovalService;->JOB_ID:I

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/companion/InactiveAssociationsRemovalService;->ONE_DAY_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 6

    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Scheduling the Association Removal job"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 65
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/server/companion/InactiveAssociationsRemovalService;->JOB_ID:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/server/companion/InactiveAssociationsRemovalService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p0, 0x1

    .line 67
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    sget-wide v1, Lcom/android/server/companion/InactiveAssociationsRemovalService;->ONE_DAY_INTERVAL:J

    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    const-string v0, "CompanionDeviceManagerService"

    const-string v1, "Execute the Association Removal job"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    .line 48
    invoke-interface {v0}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->removeInactiveSelfManagedAssociations()V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Association removal job stopped; id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result p1

    .line 57
    invoke-static {p1}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CompanionDeviceManagerService"

    .line 55
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
