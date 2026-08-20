.class public Lcom/android/server/job/JobSchedulerService$6;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6

    .line 3588
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p0

    .line 3589
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 3590
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    .line 3591
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_18

    if-ge p0, v0, :cond_17

    move v1, v2

    :cond_17
    return v1

    :cond_18
    if-ge p1, p2, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    if-le p1, p2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3585
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$6;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0
.end method
