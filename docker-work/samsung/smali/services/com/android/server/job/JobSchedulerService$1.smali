.class public Lcom/android/server/job/JobSchedulerService$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/time/ZoneId;)V
    .registers 2

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .registers 3

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
