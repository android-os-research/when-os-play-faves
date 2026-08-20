.class public Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UidConstraintUpdater"
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
.field public final changedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mToScheduleStartAlarms:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 4

    .line 1734
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 1737
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    const-wide/16 v0, 0x0

    .line 1738
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9

    .line 1748
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1749
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1753
    :goto_e
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 1754
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    move-object v2, p1

    move v6, v0

    .line 1753
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$msetConstraintSatisfied(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1755
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1757
    :cond_23
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$msetExpeditedQuotaApproved(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1758
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 1762
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 1763
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result p1

    if-eqz v0, :cond_57

    .line 1764
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1765
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1768
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    move-result-object p0

    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, v1, v2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    goto :goto_60

    .line 1770
    :cond_57
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_60
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1734
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public postProcess()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 1775
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 1776
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 1777
    :goto_11
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 1778
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1779
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1780
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 1741
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 1742
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 1786
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    return-void
.end method
