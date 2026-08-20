.class public final Lcom/android/server/job/controllers/StorageController;
.super Lcom/android/server/job/controllers/StateController;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/StorageController$StorageTracker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Storage"


# instance fields
.field public final mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

.field public final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->maybeReportNewStorageState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 44
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Storage"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 47
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 57
    new-instance p1, Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;-><init>(Lcom/android/server/job/controllers/StorageController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 58
    invoke-virtual {p1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->startTracking()V

    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    .line 164
    :goto_38
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 165
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 166
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_66

    :cond_4f
    const-string v2, "#"

    .line 169
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    .line 171
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 173
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_69
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000007L

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 184
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v2

    const-wide v3, 0x10800000001L

    .line 183
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 185
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 186
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v2

    const-wide v3, 0x10500000002L

    .line 185
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v2, 0x0

    .line 188
    :goto_2a
    iget-object v5, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_5f

    .line 189
    iget-object v5, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 190
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_5c

    :cond_41
    const-wide v6, 0x20b00000003L

    .line 193
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10b00000001L

    .line 194
    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 196
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 195
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 197
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 200
    :cond_5f
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    return-object p0
.end method

.method public final maybeReportNewStorageState()V
    .registers 8

    .line 81
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v2

    .line 84
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_f
    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_18
    if-ltz v4, :cond_2a

    .line 86
    iget-object v6, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 87
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(JZ)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    .line 89
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_3e

    if-eqz v2, :cond_34

    .line 92
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3d

    :cond_34
    if-eqz v5, :cond_3d

    .line 96
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-interface {v0, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_3d
    :goto_3d
    return-void

    :catchall_3e
    move-exception p0

    .line 89
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 63
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 64
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 65
    iget-object p2, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x10

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 67
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 68
    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result p0

    .line 67
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(JZ)Z

    :cond_1f
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    const/16 p2, 0x10

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 76
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method
