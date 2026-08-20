.class public final Lcom/android/server/job/controllers/QuotaController$Timer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Timer"
.end annotation


# instance fields
.field public mBgJobCount:I

.field public mDebitAdjustment:J

.field public final mPkg:Lcom/android/server/job/controllers/Package;

.field public final mRegularJobTimer:Z

.field public final mRunningBgJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mStartTimeElapsed:J

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/Package;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V
    .registers 6

    .line 2113
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2108
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 2114
    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, p3, p4}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2115
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2116
    iput-boolean p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    return-void
.end method


# virtual methods
.method public final cancelCutoff()V
    .registers 3

    .line 2311
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v0

    .line 2312
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x4

    :goto_d
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2311
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public dropEverythingLocked()V
    .registers 2

    .line 2186
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2187
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Timer<"

    .line 2316
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_c

    const-string v0, "REG"

    goto :goto_e

    :cond_c
    const-string v0, "EJ"

    :goto_e
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ">{"

    .line 2318
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, "} "

    .line 2320
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "started at "

    .line 2322
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2323
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, " ("

    .line 2324
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago)"

    .line 2326
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_4a
    const-string v0, "NOT active"

    .line 2328
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_4f
    const-string v0, ", "

    .line 2330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " running bg jobs"

    .line 2332
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2333
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v0, :cond_71

    const-string v0, " (debit adj="

    .line 2334
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, ")"

    .line 2336
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    :cond_71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2339
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 2340
    :goto_78
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 2341
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2342
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2343
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 2346
    :cond_98
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 9
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

    .line 2350
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2353
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2355
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    .line 2356
    :goto_25
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 2357
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2358
    invoke-interface {p4, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-wide v2, 0x20b00000005L

    .line 2359
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2364
    :cond_46
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final emitSessionLocked(J)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2192
    iget v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-gtz v5, :cond_5

    return-void

    .line 2196
    :cond_5
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    move-object v0, v9

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$TimingSession;-><init>(JJI)V

    .line 2197
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v7, p1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v8, p1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    xor-int/lit8 v10, p1, 0x1

    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-static/range {v6 .. v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$msaveTimingSession(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    const/4 p1, 0x0

    .line 2199
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2204
    iget-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz p1, :cond_34

    .line 2205
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget p2, p0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p0, p0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mincrementTimingSessionCountLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    :cond_34
    return-void
.end method

.method public getBgJobCount()I
    .registers 2

    .line 2230
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2231
    :try_start_5
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 2232
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getCurrentDuration(J)J
    .registers 6

    .line 2224
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2225
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_e

    const-wide/16 p0, 0x0

    goto :goto_15

    :cond_e
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr p1, v1

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long p0, p1, v1

    :goto_15
    monitor-exit v0

    return-wide p0

    :catchall_17
    move-exception p0

    .line 2226
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isActive()Z
    .registers 2

    .line 2214
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_5
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 2216
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public isRunning(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 2220
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onStateChangedLocked(JZ)V
    .registers 5

    if-eqz p3, :cond_6

    .line 2258
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    goto :goto_45

    .line 2259
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p3

    if-nez p3, :cond_45

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result p3

    if-eqz p3, :cond_45

    .line 2261
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_45

    .line 2262
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide/16 p1, 0x0

    .line 2263
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 2267
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2269
    iget-boolean p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz p2, :cond_42

    .line 2270
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v0, p3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p3, p3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, p3, p1}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 2273
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget p3, p2, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object p2, p2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 2276
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_45
    :goto_45
    return-void
.end method

.method public rescheduleCutoff()V
    .registers 1

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    return-void
.end method

.method public final scheduleCutoff()V
    .registers 8

    .line 2290
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2291
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2292
    monitor-exit v0

    return-void

    .line 2294
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v1

    .line 2295
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    goto :goto_1a

    :cond_19
    const/4 v2, 0x4

    :goto_1a
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2294
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2296
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_31

    .line 2297
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v4, v3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    goto :goto_3d

    .line 2298
    :cond_31
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v4, v3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 2299
    :goto_3d
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_75

    const-string v4, "JobScheduler.Quota"

    .line 2300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2301
    iget-boolean v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v6, :cond_51

    const-string v6, "Regular job"

    goto :goto_53

    :cond_51
    const-string v6, "EJ"

    :goto_53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2300
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_75
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2307
    monitor-exit v0

    return-void

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final shouldTrackLocked()Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2237
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2238
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v3, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/job/controllers/Package;->userId:I

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    .line 2240
    iget-boolean v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2241
    invoke-static {v3, v6, v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mhasTempAllowlistExemptionLocked(Lcom/android/server/job/controllers/QuotaController;IIJ)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v4

    goto :goto_23

    :cond_22
    move v3, v5

    .line 2242
    :goto_23
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    iget v7, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    .line 2243
    iget-boolean v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v8, :cond_47

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    iget v9, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2244
    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_45

    cmp-long v0, v0, v6

    if-gez v0, :cond_47

    :cond_45
    move v0, v4

    goto :goto_48

    :cond_47
    move v0, v5

    .line 2245
    :goto_48
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "quotaFree="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFG="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    iget v7, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2247
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " tempEx="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " topEx="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "JobScheduler.Quota"

    .line 2246
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_8f
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2252
    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_aa

    if-nez v3, :cond_aa

    if-nez v0, :cond_aa

    goto :goto_ab

    :cond_aa
    move v4, v5

    :goto_ab
    return v4
.end method

.method public startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 2120
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misTopStartedJobLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_2e

    .line 2123
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 2124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timer ignoring "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because isTop"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2124
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    .line 2129
    :cond_2e
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting to track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_4c
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 2134
    iget p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2135
    iget-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz p1, :cond_6f

    .line 2136
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v2, v1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v1, v1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 2138
    :cond_6f
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ne p1, v0, :cond_95

    .line 2140
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide/16 v0, 0x0

    .line 2141
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 2142
    iget-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz p1, :cond_92

    .line 2145
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v1, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v0, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 2147
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_95
    return-void
.end method

.method public stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7

    .line 2153
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "JobScheduler.Quota"

    .line 2154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping tracking of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_20
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_25
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_3c

    .line 2160
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "JobScheduler.Quota"

    const-string p1, "Timer isn\'t tracking any jobs but still told to stop"

    .line 2161
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_3a
    monitor-exit v0

    return-void

    .line 2165
    :cond_3c
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 2166
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v4, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/job/controllers/Package;->userId:I

    invoke-static {v4, v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v3

    .line 2168
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_6a

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2169
    invoke-static {p1, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 2170
    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2173
    :cond_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_25 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public updateDebitAdjustment(JJ)V
    .registers 7

    .line 2178
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr v0, p3

    iget-wide p3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr p3, p1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    return-void
.end method
