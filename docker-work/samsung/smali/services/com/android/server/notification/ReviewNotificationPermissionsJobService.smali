.class public Lcom/android/server/notification/ReviewNotificationPermissionsJobService;
.super Landroid/app/job/JobService;
.source "ReviewNotificationPermissionsJobService.java"


# static fields
.field public static final JOB_ID:I = 0xd6eed5b
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ReviewNotificationPermissionsJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;J)V
    .registers 7

    .line 44
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0xd6eed5b

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 49
    :cond_14
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/notification/ReviewNotificationPermissionsJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 63
    const-class p0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 64
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 65
    invoke-interface {p0}, Lcom/android/server/notification/NotificationManagerInternal;->sendReviewPermissionsNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
