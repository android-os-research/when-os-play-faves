.class public Lcom/samsung/android/hardware/context/SemContextPedometer;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextPedometer.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextPedometer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXERCISE_MODE_BICYCLE:I = 0x2

.field public static final blacklist EXERCISE_MODE_NONE:I = -0x1

.field public static final blacklist EXERCISE_MODE_NON_BICYCLE:I = 0x3

.field public static final blacklist EXERCISE_MODE_RUN:I = 0x1

.field public static final blacklist EXERCISE_MODE_WALK:I = 0x0

.field public static final whitelist GENDER_MAN:I = 0x1

.field public static final whitelist GENDER_WOMAN:I = 0x2

.field public static final whitelist HISTORY_MODE:I = 0x2

.field public static final whitelist LOGGING_MODE:I = 0x1

.field public static final whitelist NORMAL_MODE:I = 0x0

.field public static final blacklist PARAMETERS_UNKNOWN:I = 0x0

.field public static final blacklist STEP_STATUS_MARK:I = 0x1

.field public static final whitelist STEP_STATUS_RUN:I = 0x4

.field public static final whitelist STEP_STATUS_RUN_DOWN:I = 0x9

.field public static final whitelist STEP_STATUS_RUN_UP:I = 0x8

.field public static final whitelist STEP_STATUS_RUSH:I = 0x5

.field public static final whitelist STEP_STATUS_STOP:I = 0x0

.field public static final whitelist STEP_STATUS_STROLL:I = 0x2

.field public static final whitelist STEP_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist STEP_STATUS_WALK:I = 0x3

.field public static final whitelist STEP_STATUS_WALK_DOWN:I = 0x7

.field public static final whitelist STEP_STATUS_WALK_UP:I = 0x6


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 282
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometer$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    .line 309
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 316
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 911
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    .line 912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    .line 913
    return-void
.end method


# virtual methods
.method public whitelist getCalorie()D
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getCalorieDiff()D
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CalorieDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getCalorieDiffArray()[D
    .registers 4

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 734
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "CalorieDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 736
    :cond_11
    return-object v0
.end method

.method public blacklist getCumulativeCalorie()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeDistance()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunDownStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunUpStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeTotalStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkDownStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkUpStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDistance()D
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDistanceDiff()D
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "DistanceDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDistanceDiffArray()[D
    .registers 4

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 748
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "DistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 750
    :cond_11
    return-object v0
.end method

.method public whitelist getLoggingCount()I
    .registers 4

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "res":I
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 872
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "LoggingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 874
    :cond_11
    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 325
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    return v0
.end method

.method public whitelist getRunDownStepCount()J
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunDownStepCountDiff()J
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunDownStepCountDiffArray()[J
    .registers 4

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 846
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 848
    :cond_11
    return-object v0
.end method

.method public whitelist getRunStepCount()J
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunStepCountDiff()J
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunStepCountDiffArray()[J
    .registers 4

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 818
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 820
    :cond_11
    return-object v0
.end method

.method public whitelist getRunUpStepCount()J
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunUpStepCountDiff()J
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRunUpStepCountDiffArray()[J
    .registers 4

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 832
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 834
    :cond_11
    return-object v0
.end method

.method public whitelist getSpeed()D
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSpeedArray()[D
    .registers 4

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "res":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 720
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 722
    :cond_11
    return-object v0
.end method

.method public whitelist getStepStatus()I
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getTimeStampArray()[J
    .registers 4

    .line 857
    const/4 v0, 0x0

    .line 858
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 859
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 861
    :cond_11
    return-object v0
.end method

.method public whitelist getTotalStepCount()J
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTotalStepCountDiff()J
    .registers 3

    .line 498
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTotalStepCountDiffArray()[J
    .registers 4

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 762
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TotalStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 764
    :cond_11
    return-object v0
.end method

.method public blacklist getUpDownStepCount()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUpDownStepCountDiff()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkDownStepCount()J
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkDownStepCountDiff()J
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkDownStepCountDiffArray()[J
    .registers 4

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 804
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 806
    :cond_11
    return-object v0
.end method

.method public whitelist getWalkStepCount()J
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkStepCountDiff()J
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkStepCountDiffArray()[J
    .registers 4

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 776
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 778
    :cond_11
    return-object v0
.end method

.method public whitelist getWalkUpStepCount()J
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkUpStepCountDiff()J
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getWalkUpStepCountDiffArray()[J
    .registers 4

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "res":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 790
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 792
    :cond_11
    return-object v0
.end method

.method public whitelist getWalkingFrequency()D
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/os/Bundle;

    .line 885
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    .line 886
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    .line 887
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 900
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 901
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    return-void
.end method
