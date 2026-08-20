.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
.super Ljava/lang/Object;
.source "DeviceIdleJobsController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdleUpdateFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .registers 4

    .line 286
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    const-wide/16 v0, 0x0

    .line 288
    iput-wide v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mUpdateTimeElapsed:J

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-wide v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mUpdateTimeElapsed:J

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$mupdateTaskStateLocked(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 298
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 286
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 292
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mUpdateTimeElapsed:J

    return-void
.end method
