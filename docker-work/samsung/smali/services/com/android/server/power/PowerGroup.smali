.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerGroup$PowerGroupListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PowerGroup"


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastGoToSleepReason:I

.field public mLastPowerOnTime:J

.field public mLastSleepTime:J

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mSupportsSandman:Z

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJ)V
    .registers 11

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 96
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 97
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 98
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 99
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 100
    iput p5, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 101
    iput-boolean p6, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 102
    iput-boolean p7, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 103
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 104
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V
    .registers 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 110
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 111
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 112
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 113
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 114
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 116
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 117
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method


# virtual methods
.method public dozeLocked(JII)Z
    .registers 18

    const-wide/32 v1, 0x20000

    const-string/jumbo v0, "powerOffDisplay"

    .line 265
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v0, 0x18

    const/4 v3, 0x0

    move/from16 v4, p4

    .line 268
    :try_start_e
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 267
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 269
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Powering off display group due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {v9}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (groupId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v3, p0

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move-wide v6, p1

    move/from16 v8, p3

    .line 274
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_5b
    .catchall {:try_start_e .. :try_end_5b} :catchall_5f

    .line 277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_5f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    throw v0
.end method

.method public dreamLocked(JI)Z
    .registers 17

    move-object v0, p0

    .line 243
    iget-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_69

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v10, 0x1

    if-eq v1, v10, :cond_d

    goto :goto_69

    .line 247
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dreamPowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v11, 0x20000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 249
    :try_start_28
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Napping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    .line 251
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_60
    .catchall {:try_start_28 .. :try_end_60} :catchall_64

    .line 254
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return v10

    :catchall_64
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 255
    throw v0

    :cond_69
    :goto_69
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredScreenPolicyLocked(ZZZZZ)I
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 423
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZJ)I

    move-result p0

    return p0
.end method

.method public getDesiredScreenPolicyLocked(ZZZZZJ)I
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    if-eqz p1, :cond_e

    goto :goto_4e

    :cond_e
    const/4 p1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v3, :cond_20

    .line 438
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v0, v4, :cond_18

    return v2

    :cond_18
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1d

    return p1

    :cond_1d
    if-eqz p2, :cond_20

    return v2

    :cond_20
    const/4 p2, 0x4

    if-eqz p3, :cond_24

    return p2

    :cond_24
    and-int/lit8 p3, v1, 0x2

    if-nez p3, :cond_4d

    if-eqz p4, :cond_4d

    .line 463
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p3

    and-int/2addr p1, p3

    if-nez p1, :cond_4d

    if-eqz p5, :cond_34

    goto :goto_4d

    :cond_34
    const-wide/16 p3, 0x0

    cmp-long p1, p6, p3

    if-nez p1, :cond_4c

    .line 469
    iget p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/2addr p1, p2

    if-nez p1, :cond_4c

    .line 472
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 473
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return p0

    :cond_4c
    return v4

    :cond_4d
    :goto_4d
    return v3

    :cond_4e
    :goto_4e
    return v2
.end method

.method public getDisplayPowerRequestLocked()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p0
.end method

.method public getGroupId()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return p0
.end method

.method public getLastGoToSleepReasonLocked()I
    .registers 1

    .line 357
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mLastGoToSleepReason:I

    return p0
.end method

.method public getLastPowerOnTimeLocked()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method public getLastSleepTimeLocked()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeLocked()J
    .registers 3

    .line 301
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .registers 3

    .line 309
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method public getLastWakeTimeLocked()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method public getPolicyLocked()I
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return p0
.end method

.method public getUserActivitySummaryLocked()I
    .registers 1

    .line 317
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return p0
.end method

.method public getWakeLockSummaryLocked()I
    .registers 1

    .line 342
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return p0
.end method

.method public getWakefulnessLocked()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return p0
.end method

.method public isBrightOrDimLocked()Z
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p0

    return p0
.end method

.method public isPolicyBrightLocked()Z
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isPolicyDimLocked()Z
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isPolicyVrLocked()Z
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result p0

    return p0
.end method

.method public isPoweringOnLocked()Z
    .registers 1

    .line 195
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return p0
.end method

.method public isReadyLocked()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return p0
.end method

.method public isSandmanSummonedLocked()Z
    .registers 1

    .line 203
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return p0
.end method

.method public needSuspendBlockerLocked(ZZ)Z
    .registers 5

    .line 379
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    return v0

    .line 398
    :cond_a
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v0, :cond_16

    iget p2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_16

    return v0

    .line 407
    :cond_16
    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    const/4 v1, 0x0

    if-nez p2, :cond_25

    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz p2, :cond_24

    iget p2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    if-ne p2, v0, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    if-ne p1, v0, :cond_2f

    .line 410
    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq p0, v0, :cond_2f

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0
.end method

.method public setIsPoweringOnLocked(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return-void
.end method

.method public setLastGoToSleepReasonLocked(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mLastGoToSleepReason:I

    return-void
.end method

.method public setLastPowerOnTimeLocked(J)V
    .registers 3

    .line 191
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-void
.end method

.method public setLastUserActivityTimeLocked(J)V
    .registers 3

    .line 305
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(J)V
    .registers 3

    .line 313
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-void
.end method

.method public setReadyLocked(Z)Z
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_8

    .line 180
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setSandmanSummonedLocked(Z)V
    .registers 2

    .line 212
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .registers 2

    .line 338
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .registers 2

    .line 346
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return-void
.end method

.method public setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    .line 143
    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v1, v2, :cond_38

    const/4 v10, 0x1

    if-ne v2, v10, :cond_13

    .line 145
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    .line 146
    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 147
    iput-wide v3, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    goto :goto_21

    .line 148
    :cond_13
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 149
    iput-wide v3, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 151
    :cond_21
    :goto_21
    iput v2, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 152
    iget-object v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v5, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move-object v0, v1

    move v1, v5

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p5

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnableInteractiveModeLocked(ZZ)Z
    .registers 6

    .line 544
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    .line 554
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v1, :cond_1d

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1d

    if-eqz p2, :cond_1d

    return v1

    :cond_1d
    return v2

    .line 545
    :cond_1e
    :goto_1e
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-nez p0, :cond_23

    return v2

    :cond_23
    if-eqz p1, :cond_26

    return v2

    :cond_26
    return v1
.end method

.method public sleepLocked(JII)Z
    .registers 19

    const-wide/32 v1, 0x20000

    const-string/jumbo v0, "sleepPowerGroup"

    .line 288
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 290
    :try_start_9
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping power group (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v3, p0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    move-wide v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 292
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_48

    .line 295
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_48
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 296
    throw v0
.end method

.method public supportsSandmanLocked()Z
    .registers 1

    .line 370
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return p0
.end method

.method public updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZ)Z
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    const-wide/16 v15, -0x1

    const/high16 v17, 0x3f800000    # 1.0f

    .line 492
    invoke-virtual/range {v0 .. v17}, Lcom/android/server/power/PowerGroup;->updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZJF)Z

    move-result v0

    return v0
.end method

.method public updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZJF)Z
    .registers 28

    move-object v8, p0

    .line 507
    iget-object v9, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p13

    move-wide/from16 v6, p15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZJ)I

    move-result v0

    iput v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 510
    iget-object v0, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v1, p1

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    move v1, p2

    .line 511
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move v1, p3

    .line 512
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move v1, p4

    .line 513
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 515
    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f

    move v1, p5

    .line 516
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 517
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_48

    if-nez p7, :cond_48

    .line 518
    iget-object v0, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_40

    const/4 v1, 0x3

    .line 519
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 521
    :cond_40
    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_48

    const/4 v1, 0x2

    .line 522
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 525
    :cond_48
    iget-object v0, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v1, p6

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    goto :goto_56

    :cond_4f
    const/4 v1, 0x0

    .line 527
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 528
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 530
    :goto_56
    iget-object v0, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v1, p8

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v1, p17

    .line 533
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 535
    iget-object v1, v8, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v8, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v3, p14

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    .line 537
    iget-object v1, v8, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, v8, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v3, v8, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    return v0
.end method

.method public wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .registers 21

    move-object v0, p0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakePowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 224
    :try_start_1b
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up power group from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 225
    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", details="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Screen turning on"

    .line 231
    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v10, v11, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v1, 0x5

    .line 233
    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p8

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p5

    move v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    .line 235
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_88
    .catchall {:try_start_1b .. :try_end_88} :catchall_8c

    .line 238
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8c
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    throw v0
.end method
