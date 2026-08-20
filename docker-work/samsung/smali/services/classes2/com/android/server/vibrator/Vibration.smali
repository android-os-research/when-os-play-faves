.class public final Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/Vibration$DebugInfo;,
        Lcom/android/server/vibrator/Vibration$Status;
    }
.end annotation


# static fields
.field public static final DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TAG:Ljava/lang/String; = "Vibration"


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public final id:J

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public mEffect:Landroid/os/CombinedVibration;

.field public mEndTimeDebug:J

.field public mEndUptimeMillis:J

.field public mEngineData:[I

.field public final mFallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public mFrequency:I

.field public mMagnitude:I

.field public mOriginalEffect:Landroid/os/CombinedVibration;

.field public mPattern:[J

.field public final mStartTimeDebug:J

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public mTimeout:J

.field public final opPkg:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final startUptimeMillis:J

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 438
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mTimeout:J

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mPattern:[J

    .line 440
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEngineData:[I

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/android/server/vibrator/Vibration;->mMagnitude:I

    .line 442
    iput v0, p0, Lcom/android/server/vibrator/Vibration;->mFrequency:I

    .line 119
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    .line 120
    iput-object p3, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    int-to-long p1, p2

    .line 121
    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    .line 123
    iput-object p4, p0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 124
    iput p5, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    .line 125
    iput-object p6, p0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    .line 128
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JII[I)V
    .registers 14

    .line 448
    invoke-direct/range {p0 .. p7}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    iput-wide p8, p0, Lcom/android/server/vibrator/Vibration;->mTimeout:J

    .line 451
    iput-object p10, p0, Lcom/android/server/vibrator/Vibration;->mPattern:[J

    .line 452
    iput p11, p0, Lcom/android/server/vibrator/Vibration;->mMagnitude:I

    .line 453
    iput p12, p0, Lcom/android/server/vibrator/Vibration;->mFrequency:I

    .line 454
    iput-object p13, p0, Lcom/android/server/vibrator/Vibration;->mEngineData:[I

    return-void
.end method

.method public static transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 194
    instance-of v0, p0, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_15

    .line 195
    check-cast p0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    .line 196
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    invoke-static {p0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    .line 197
    :cond_15
    instance-of v0, p0, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_45

    .line 198
    check-cast p0, Landroid/os/CombinedVibration$Stereo;

    .line 199
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p0

    .line 201
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    :goto_24
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 203
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v0, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 205
    :cond_40
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    .line 206
    :cond_45
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_6f

    .line 207
    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    .line 208
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p0

    .line 210
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 212
    invoke-static {v1, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    goto :goto_57

    .line 214
    :cond_6b
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    :cond_6f
    return-object p0
.end method


# virtual methods
.method public addFallback(ILandroid/os/VibrationEffect;)V
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4

    .line 139
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 143
    :cond_7
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    .line 146
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .registers 19

    move-object/from16 v0, p0

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, v0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    iget-wide v3, v0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    sub-long/2addr v1, v3

    goto :goto_10

    :cond_e
    const-wide/16 v1, -0x1

    :goto_10
    move-wide v8, v1

    .line 240
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v4, v0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    iget-wide v6, v0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v11, v0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v14, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v15, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object v3, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v1
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getEngineData()[I
    .registers 1

    .line 462
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mEngineData:[I

    return-object p0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getFrequency()I
    .registers 1

    .line 470
    iget p0, p0, Lcom/android/server/vibrator/Vibration;->mFrequency:I

    return p0
.end method

.method public getMagnitude()I
    .registers 1

    .line 466
    iget p0, p0, Lcom/android/server/vibrator/Vibration;->mMagnitude:I

    return p0
.end method

.method public getPattern()[J
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mPattern:[J

    return-object p0
.end method

.method public getTimeOut()J
    .registers 3

    .line 474
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mTimeout:J

    return-wide v0
.end method

.method public hasEnded()Z
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRepeating()Z
    .registers 5

    .line 228
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public setMagnitude(I)V
    .registers 2

    .line 478
    iput p1, p0, Lcom/android/server/vibrator/Vibration;->mMagnitude:I

    return-void
.end method

.method public updateEffects(Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 178
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez v1, :cond_16

    .line 179
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iput-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 181
    :cond_16
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    :cond_18
    const/4 v0, 0x0

    .line 183
    :goto_19
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 184
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    return-void
.end method

.method public waitForEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
