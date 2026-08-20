.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final KNOWN_ACTIVE:I = 0x1

.field public static final KNOWN_INACTIVE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Background"

.field public static final UNKNOWN:I


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field public final mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;


# direct methods
.method public static synthetic $r8$lambda$C-JzzKW_Zj4jJM4p-T5Yh0vMJ4k(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$1(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eQB_xxnwc8eZC0ZhlpQQCbZeaqQ(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->lambda$dumpControllerStateLocked$0(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAllJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 55
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Background"

    .line 56
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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 66
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 254
    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 71
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 72
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 71
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 73
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 74
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    return-void
.end method

.method private synthetic lambda$dumpControllerStateLocked$0(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 104
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 105
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    .line 106
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    .line 108
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 110
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " active"

    goto :goto_25

    :cond_23
    const-string v2, " idle"

    :goto_25
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 112
    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_38
    const-string v2, ", exempted"

    .line 113
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3d
    const-string v2, ": "

    .line 115
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    .line 118
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "allowed]"

    goto :goto_57

    :cond_55
    const-string p0, "disallowed]"

    :goto_57
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 p2, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_67

    const-string p0, " RUNNABLE"

    .line 124
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6c

    :cond_67
    const-string p0, " WAITING"

    .line 126
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_6c
    return-void
.end method

.method private synthetic lambda$dumpControllerStateLocked$1(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 12

    const-wide v0, 0x20b00000002L

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    .line 144
    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 145
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const-wide v3, 0x10500000002L

    .line 146
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 147
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    .line 148
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v4

    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 151
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 152
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4c

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 153
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_4c

    :cond_4a
    move v4, v5

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v4, v6

    :goto_4d
    const-wide v7, 0x10800000005L

    .line 151
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000006L

    .line 155
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 156
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p0

    .line 155
    invoke-virtual {p1, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    .line 158
    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 p2, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_70

    move v5, v6

    :cond_70
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 101
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 10
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

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 137
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 140
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0, p4, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 165
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    :cond_10
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 80
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    return-void
.end method

.method public final updateAllJobRestrictionsLocked()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method public final updateJobRestrictionsForUidLocked(IZ)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    .line 174
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method public final updateJobRestrictionsLocked(II)V
    .registers 9

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->prepare(I)V

    .line 180
    sget-boolean p2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    goto :goto_11

    :cond_10
    move-wide v2, v0

    .line 182
    :goto_11
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v4

    if-lez p1, :cond_1f

    .line 184
    iget-object v5, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_24

    .line 186
    :cond_1f
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    :goto_24
    if-eqz p2, :cond_2b

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sub-long/2addr v0, v2

    :cond_2b
    if-eqz p2, :cond_5b

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget v2, v2, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget v2, v2, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p2

    const/4 p2, 0x2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "Job status updated: %d/%d checked/total jobs, %d us"

    .line 191
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Background"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_5b
    iget-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object p1, p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_6e

    .line 200
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {p1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_6e
    return-void
.end method

.method public updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z
    .registers 12

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 207
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 210
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInBatterySaver()Z

    move-result v3

    .line 209
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AppStateTrackerImpl;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-nez p4, :cond_1e

    .line 214
    iget-object p4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p4, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result p4

    goto :goto_23

    :cond_1e
    if-ne p4, v3, :cond_22

    move p4, v3

    goto :goto_23

    :cond_22
    move p4, v4

    :goto_23
    if-eqz p4, :cond_2f

    .line 218
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2f

    .line 219
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->maybeLogBucketMismatch()V

    .line 221
    :cond_2f
    iget-object v5, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 223
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_41

    :cond_40
    move v3, v4

    .line 222
    :goto_41
    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z

    move-result p0

    .line 225
    invoke-virtual {p1, p4}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method
