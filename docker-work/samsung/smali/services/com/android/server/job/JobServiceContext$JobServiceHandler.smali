.class public Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JobServiceHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .registers 3

    .line 658
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 659
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 664
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1b

    const-string p0, "JobServiceContext"

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognised message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 666
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmLock(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 667
    :try_start_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v2

    if-ne v1, v2, :cond_32

    .line 668
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {p0}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mhandleOpTimeoutLocked(Lcom/android/server/job/JobServiceContext;)V

    goto :goto_6a

    .line 670
    :cond_32
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring timeout of no longer active job"

    .line 672
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v1, :cond_61

    const-string v1, ", stopped "

    .line 674
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, " because: "

    .line 677
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    const-string p0, "JobServiceContext"

    .line 680
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_6a
    monitor-exit v0

    :goto_6b
    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_22 .. :try_end_6e} :catchall_6c

    throw p0
.end method
