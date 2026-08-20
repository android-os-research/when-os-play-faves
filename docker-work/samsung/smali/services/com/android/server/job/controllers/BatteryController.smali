.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$PowerTracker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Battery"


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

.field public final mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

.field public final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackedTasks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$A55ze38iA9vuWqC4k-rBg3L2RvQ(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->lambda$onBatteryStateChangedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeReportNewChargingStateLocked(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 52
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Battery"

    .line 53
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
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 55
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 60
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 69
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    .line 73
    new-instance p1, Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->startTracking()V

    return-void
.end method

.method private synthetic lambda$onBatteryStateChangedLocked$0()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    .line 149
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
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

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :goto_5c
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_8d

    .line 285
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 286
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_8a

    :cond_73
    const-string v1, "#"

    .line 289
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v1, " from "

    .line 291
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 293
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_8d
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 13
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

    .line 300
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000002L

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 303
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 304
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    const-wide v4, 0x10800000001L

    .line 303
    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000002L

    .line 305
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 306
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    .line 305
    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 308
    :goto_37
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v3, v2, :cond_71

    .line 309
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 310
    invoke-interface {p4, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_6e

    :cond_4e
    const-wide v4, 0x20b00000005L

    .line 313
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000001L

    .line 314
    invoke-virtual {v2, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v6, 0x10500000002L

    .line 316
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 315
    invoke-virtual {p1, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 317
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 320
    :cond_71
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTopStartedJobs()Landroid/util/ArraySet;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getTrackedJobs()Landroid/util/ArraySet;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_19

    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 164
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public final maybeReportNewChargingStateLocked()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 171
    :goto_1a
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v3

    .line 172
    sget-boolean v4, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v4, :cond_49

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Battery"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_49
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 177
    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_56
    if-ltz v6, :cond_9f

    .line 178
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 179
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 181
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v7

    const/16 v8, 0x12c

    if-lt v7, v8, :cond_80

    .line 188
    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 189
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 191
    :cond_80
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 192
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_8b
    :goto_8b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 196
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 197
    iget-object v7, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9c
    add-int/lit8 v6, v6, -0x1

    goto :goto_56

    :cond_9f
    if-nez v1, :cond_b4

    if-eqz v3, :cond_a4

    goto :goto_b4

    .line 203
    :cond_a4
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 206
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_ba

    .line 202
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 208
    :cond_ba
    :goto_ba
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 79
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 80
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 81
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 83
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 85
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mPowerTracker:Lcom/android/server/job/controllers/BatteryController$PowerTracker;

    .line 86
    invoke-virtual {p2}, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->isPowerConnected()Z

    move-result p2

    .line 85
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    goto :goto_40

    .line 88
    :cond_2b
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 89
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    .line 88
    :goto_3d
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    .line 92
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    :cond_49
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    const/4 p2, 0x1

    .line 129
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 130
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/16 p1, 0x28

    if-eq p2, p1, :cond_6

    if-ne p3, p1, :cond_9

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    :cond_9
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 108
    :cond_7
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    const-string v1, "JobScheduler.Battery"

    if-eqz v0, :cond_25

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_52

    if-eqz v0, :cond_4d

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4d
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_52
    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 137
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/BatteryController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    :cond_b
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
