.class public Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;
.super Landroid/app/job/JobService;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfcollectBGJobService"
.end annotation


# static fields
.field public static final JOB_IDLE_PROCESS:I = 0x3fad1

.field public static final JOB_SERVICE_NAME:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$4RkC8yFOMblNJ968ne_uHF_3o9Q()V
    .registers 0

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->lambda$onStartJob$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0()V
    .registers 3

    .line 220
    :try_start_0
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$fgetmIProfcollect(Lcom/android/server/profcollect/ProfcollectForwardingService;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/profcollect/IProfCollectd;->process()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process profiles in background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfcollectForwardingService"

    .line 222
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 4

    .line 202
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 204
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    const v2, 0x3fad1

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetBG_PROCESS_PERIOD()J

    move-result-wide v1

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 213
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "ProfcollectForwardingService"

    const-string p1, "Starting background process job"

    .line 214
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
