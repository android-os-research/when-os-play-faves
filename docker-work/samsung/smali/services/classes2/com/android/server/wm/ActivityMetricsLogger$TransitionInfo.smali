.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionInfo"
.end annotation


# instance fields
.field public mBindApplicationDelayMs:I

.field public mCurrentTransitionDelayMs:I

.field public mIsDrawn:Z

.field public mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchTraceName:Ljava/lang/String;

.field public final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field public mLoggedStartingWindowDrawn:Z

.field public mLoggedTransitionStarting:Z

.field public mPendingFullyDrawn:Ljava/lang/Runnable;

.field public final mProcessRunning:Z

.field public final mProcessSwitch:Z

.field public mReason:I

.field public mRelaunched:Z

.field public mSourceEventDelayMs:I

.field public mSourceType:I

.field public mStartingWindowDelayMs:I

.field public final mTransitionDeviceUptimeMs:J

.field public final mTransitionStartTimeNs:J

.field public final mTransitionType:I

.field public mWindowsDrawnDelayMs:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZ)V
    .registers 9

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 359
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 363
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 365
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    const/4 v0, 0x3

    .line 369
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 409
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 410
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    .line 411
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 412
    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 413
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 414
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentUpTimeMs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionDeviceUptimeMs:J

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 418
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 419
    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fputmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    :cond_2d
    if-eqz p3, :cond_43

    .line 422
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 424
    iget p3, p1, Landroid/app/ActivityOptions$SourceInfo;->type:I

    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    .line 425
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentUpTimeMs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide p2

    iget-wide p4, p1, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    sub-long/2addr p2, p4

    long-to-int p1, p2

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    :cond_43
    return-void
.end method

.method public static create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .registers 14

    if-eqz p6, :cond_7

    const/4 v0, 0x2

    if-eq p6, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    if-eqz p3, :cond_17

    if-nez p5, :cond_14

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p5

    if-eqz p5, :cond_14

    const/16 p5, 0x9

    goto :goto_18

    :cond_14
    const/16 p5, 0x8

    goto :goto_18

    :cond_17
    const/4 p5, 0x7

    :goto_18
    move v4, p5

    .line 401
    new-instance p5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZ)V

    return-object p5
.end method


# virtual methods
.method public calculateCurrentDelay()I
    .registers 3

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result p0

    return p0
.end method

.method public calculateDelay(J)I
    .registers 6

    .line 477
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 454
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_14

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public contains(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 460
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isInterestingToLoggerAndObserver()Z
    .registers 1

    .line 468
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    return p0
.end method

.method public setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_14

    .line 443
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 444
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 445
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 446
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 448
    :cond_14
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 449
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
