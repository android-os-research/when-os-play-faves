.class public Lcom/android/server/job/JobSchedulerService$5;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 1622
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$5;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1625
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 1628
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$5;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/job/JobStore;->clockNowValidToInflate(J)Z

    move-result p2

    if-eqz p2, :cond_36

    const-string p2, "JobScheduler"

    const-string v0, "RTC now valid; recalculating persisted job windows"

    .line 1629
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1636
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$5;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmJobTimeUpdater(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;

    move-result-object p0

    const-string p2, "JobSchedulerTimeSetReceiver"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_36
    return-void
.end method
