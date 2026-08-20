.class public Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "BaseAppStateTimeSlotEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseAppStateTimeSlotEventsPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final mDefaultNumOfEventsThreshold:I

.field public final mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyNumOfEventsThreshold:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public volatile mNumOfEventsThreshold:I

.field public mTimeSlotSize:J


# direct methods
.method public static synthetic $r8$lambda$WeWI0yzI1GjbQXm7Ssn5Dhcug8I(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->lambda$onMaxTrackingDurationChanged$0(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BaseAppStateTracker$Injector;",
            "TE;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 197
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 184
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    const-wide/32 p3, 0xdbba0

    .line 187
    iput-wide p3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 199
    iput-object p8, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 200
    iput p9, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    .line 201
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$onMaxTrackingDurationChanged$0(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 1

    .line 226
    invoke-static {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->-$$Nest$mtrimEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 336
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    .line 340
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 341
    iget v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 343
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "event_time_slot_size="

    .line 344
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getTimeSlotSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .registers 1

    const-string p0, "event"

    return-object p0
.end method

.method public getNumOfEventsThreshold()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    return p0
.end method

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 312
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x1e

    const/16 v1, 0x28

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->isAutoRestrictAbusiveAppEnabled()Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move p0, p2

    :goto_1f
    if-le p3, v1, :cond_23

    .line 317
    monitor-exit v0

    return p0

    :cond_23
    if-ne p3, v1, :cond_27

    .line 319
    monitor-exit v0

    return p2

    :cond_27
    const/4 p0, 0x0

    .line 321
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    .line 322
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public getTimeSlotSize()J
    .registers 3

    .line 245
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    return-wide v0
.end method

.method public onExcessiveEvents(Ljava/lang/String;IIJ)V
    .registers 8

    .line 259
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 260
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 267
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 270
    :goto_1a
    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2a

    if-eqz p1, :cond_29

    .line 272
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 p1, 0x600

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_29
    return-void

    :catchall_2a
    move-exception p0

    .line 270
    :try_start_2b
    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onMaxTrackingDurationChanged(J)V
    .registers 3

    .line 226
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    move-object p1, p0

    check-cast p1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    goto :goto_f

    .line 215
    :cond_c
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 206
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->onMonitorEnabled(Z)V

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 5

    .line 327
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 329
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    .line 330
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 p1, 0x300

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    return-void

    :catchall_18
    move-exception p0

    .line 329
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setTimeSlotSize(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    return-void
.end method

.method public shouldExempt(Ljava/lang/String;I)I
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->isUidOnTop(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0xc

    return p0

    .line 289
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/16 p0, 0xe

    return p0

    .line 296
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_24

    return p0

    :cond_24
    return p1
.end method

.method public final updateNumOfEventsThreshold()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 234
    iget v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    if-eq v0, v1, :cond_17

    .line 235
    iput v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 236
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->onNumOfEventsThresholdChanged(I)V

    :cond_17
    return-void
.end method
