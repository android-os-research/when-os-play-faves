.class public final Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccelSensorJudge"
.end annotation


# static fields
.field public static final ACCELERATION_TOLERANCE:F = 4.0f

.field public static final ACCELEROMETER_DATA_X:I = 0x0

.field public static final ACCELEROMETER_DATA_Y:I = 0x1

.field public static final ACCELEROMETER_DATA_Z:I = 0x2

.field public static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field public static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field public static final FLAT_ANGLE:F = 80.0f

.field public static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field public static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field public static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field public static final MAX_TILT:I = 0x50

.field public static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field public static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field public static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field public static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field public static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field public static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field public static final RADIANS_TO_DEGREES:F = 57.29578f

.field public static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field public static final SWING_TIME_NANOS:J = 0x11e1a300L

.field public static final TILT_HISTORY_SIZE:I = 0xc8

.field public static final TILT_OVERHEAD_ENTER:I = -0x28

.field public static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field public mAccelerating:Z

.field public mAccelerationTimestampNanos:J

.field public mFlat:Z

.field public mFlatTimestampNanos:J

.field public mLastFilteredTimestampNanos:J

.field public mLastFilteredX:F

.field public mLastFilteredY:F

.field public mLastFilteredZ:F

.field public mOverhead:Z

.field public mPredictedRotation:I

.field public mPredictedRotationTimestampNanos:J

.field public mProposedRotation:I

.field public mSwingTimestampNanos:J

.field public mSwinging:Z

.field public mTiltHistory:[F

.field public mTiltHistoryIndex:I

.field public mTiltHistoryTimestampNanos:[J

.field public final mTiltToleranceConfig:[[I

.field public mTouchEndedTimestampNanos:J

.field public mTouched:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V
    .registers 11

    .line 686
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    const/4 p1, 0x4

    new-array v0, p1, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 641
    fill-array-data v2, :array_8c

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_94

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_a4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    const-wide/high16 v0, -0x8000000000000000L

    .line 674
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    const/16 v0, 0xc8

    new-array v1, v0, [F

    .line 682
    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    new-array v0, v0, [J

    .line 683
    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 688
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x107007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 690
    array-length v0, p2

    const-string v1, "WindowOrientationListener"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_86

    move v0, v3

    :goto_4b
    if-ge v0, p1, :cond_8b

    mul-int/lit8 v2, v0, 0x2

    .line 692
    aget v5, p2, v2

    add-int/2addr v2, v4

    .line 693
    aget v2, p2, v2

    const/16 v6, -0x5a

    if-lt v5, v6, :cond_67

    if-gt v5, v2, :cond_67

    const/16 v6, 0x5a

    if-gt v2, v6, :cond_67

    .line 695
    iget-object v6, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v6, v6, v0

    aput v5, v6, v3

    .line 696
    aput v2, v6, v4

    goto :goto_83

    .line 698
    :cond_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_86
    const-string p0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    .line 703
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return-void

    :array_8c
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_94
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_9c
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_a4
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method


# virtual methods
.method public final addTiltHistoryEntryLocked(JF)V
    .registers 6

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1096
    iget-object p3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1097
    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 p0, -0x8000000000000000L

    .line 1098
    aput-wide p0, p3, v1

    return-void
.end method

.method public final clearPredictedRotationLocked()V
    .registers 3

    const/4 v0, -0x1

    .line 1073
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 1074
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    return-void
.end method

.method public final clearTiltHistoryLocked()V
    .registers 5

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    .line 1091
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms ago)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSwinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAccelerating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOverhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTiltToleranceConfig=["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_188
    const/4 v1, 0x4

    const-string v2, "]"

    if-ge v0, v1, :cond_1b5

    const-string v1, ", "

    if-eqz v0, :cond_194

    .line 733
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_194
    const-string v3, "["

    .line 735
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 737
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 739
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_188

    .line 741
    :cond_1b5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getLastTiltLocked()F
    .registers 2

    .line 1133
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 1134
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget p0, p0, v0

    goto :goto_f

    :cond_d
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_f
    return p0
.end method

.method public getProposedRotationLocked()I
    .registers 1

    .line 709
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return p0
.end method

.method public final isAcceleratingLocked(F)Z
    .registers 2

    const p0, 0x40b9d014

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_11

    const p0, 0x415ce80a

    cmpl-float p0, p1, p0

    if-lez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final isFlatLocked(J)Z
    .registers 8

    .line 1102
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_21

    .line 1103
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    goto :goto_21

    .line 1106
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public final isOrientationAngleAcceptableLocked(II)Z
    .registers 7

    .line 992
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result p0

    if-ltz p0, :cond_3d

    const/16 v0, 0x2d

    const/4 v1, 0x0

    if-eq p1, p0, :cond_13

    add-int/lit8 v2, p0, 0x1

    .line 998
    rem-int/lit8 v2, v2, 0x4

    if-ne p1, v2, :cond_26

    :cond_13
    mul-int/lit8 v2, p1, 0x5a

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x16

    if-nez p1, :cond_23

    const/16 v3, 0x13b

    if-lt p2, v3, :cond_26

    add-int/lit16 v2, v2, 0x168

    if-ge p2, v2, :cond_26

    return v1

    :cond_23
    if-ge p2, v2, :cond_26

    return v1

    :cond_26
    if-eq p1, p0, :cond_2e

    add-int/lit8 p0, p0, 0x3

    .line 1017
    rem-int/lit8 p0, p0, 0x4

    if-ne p1, p0, :cond_3d

    :cond_2e
    mul-int/lit8 p0, p1, 0x5a

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x16

    if-nez p1, :cond_3a

    if-gt p2, v0, :cond_3d

    if-le p2, p0, :cond_3d

    return v1

    :cond_3a
    if-le p2, p0, :cond_3d

    return v1

    :cond_3d
    const/4 p0, 0x1

    return p0
.end method

.method public final isPredictedRotationAcceptableLocked(J)Z
    .registers 11

    .line 1041
    iget-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    return v1

    .line 1046
    :cond_c
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    return v1

    .line 1052
    :cond_17
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    return v1

    .line 1057
    :cond_22
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    return v1

    .line 1063
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long p0, p1, v2

    if-gez p0, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    :goto_38
    return v1
.end method

.method public final isSwingingLocked(JF)Z
    .registers 9

    .line 1115
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_22

    .line 1116
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_15

    goto :goto_22

    .line 1119
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public final isTiltAngleAcceptableLocked(II)Z
    .registers 5

    .line 978
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 v1, 0x1

    if-lt p2, v0, :cond_f

    aget p0, p0, v1

    if-gt p2, p0, :cond_f

    move p1, v1

    :cond_f
    return p1
.end method

.method public final nextTiltHistoryIndexLocked(I)I
    .registers 6

    if-nez p1, :cond_4

    const/16 p1, 0xc8

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 1129
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, p0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    return p1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 2

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 753
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v2}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 757
    :try_start_b
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    .line 758
    aget v7, v3, v6

    const/4 v8, 0x2

    .line 759
    aget v3, v3, v8

    .line 761
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v8

    if-eqz v8, :cond_57

    const-string v8, "WindowOrientationListener"

    .line 762
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v5, v5

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 764
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 762
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_57
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 772
    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long v12, v8, v10

    long-to-float v1, v12

    const v12, 0x358637bd    # 1.0E-6f

    mul-float/2addr v1, v12

    cmp-long v13, v8, v10

    if-ltz v13, :cond_d4

    const-wide/32 v13, 0x3b9aca00

    add-long/2addr v10, v13

    cmp-long v10, v8, v10

    if-gtz v10, :cond_d4

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-nez v11, :cond_7c

    cmpl-float v11, v7, v10

    if-nez v11, :cond_7c

    cmpl-float v10, v3, v10

    if-nez v10, :cond_7c

    goto :goto_d4

    :cond_7c
    const/high16 v10, 0x43480000    # 200.0f

    add-float/2addr v10, v1

    div-float v10, v1, v10

    .line 785
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v10

    add-float/2addr v5, v11

    .line 786
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float/2addr v7, v11

    mul-float/2addr v7, v10

    add-float/2addr v7, v11

    .line 787
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float/2addr v3, v11

    mul-float/2addr v10, v3

    add-float v3, v10, v11

    .line 788
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v10

    if-eqz v10, :cond_d2

    const-string v10, "WindowOrientationListener"

    .line 789
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Filtered acceleration vector: x="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", y="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", z="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", magnitude="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v13, v5, v5

    mul-float v14, v7, v7

    add-float/2addr v13, v14

    mul-float v14, v3, v3

    add-float/2addr v13, v14

    float-to-double v13, v13

    .line 791
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 789
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    move v10, v4

    goto :goto_e5

    .line 778
    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v10

    if-eqz v10, :cond_e1

    const-string v10, "WindowOrientationListener"

    const-string v11, "Resetting orientation listener."

    .line 779
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_e1
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    move v10, v6

    .line 795
    :goto_e5
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 796
    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 797
    iput v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 798
    iput v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    if-nez v10, :cond_23d

    mul-float v10, v5, v5

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 805
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_115

    .line 807
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v3

    if-eqz v3, :cond_110

    const-string v3, "WindowOrientationListener"

    const-string v5, "Ignoring sensor data, magnitude too close to zero."

    .line 808
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto/16 :goto_23d

    .line 814
    :cond_115
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_11f

    .line 816
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    move v11, v6

    goto :goto_120

    :cond_11f
    move v11, v4

    :goto_120
    div-float/2addr v3, v10

    float-to-double v13, v3

    .line 826
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v13, v15

    .line 825
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v3, v13

    int-to-float v10, v3

    .line 827
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 830
    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v13

    if-eqz v13, :cond_13f

    .line 832
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    move v13, v6

    goto :goto_140

    :cond_13f
    move v13, v4

    .line 834
    :goto_140
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v10

    if-eqz v10, :cond_14a

    .line 836
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    move v10, v6

    goto :goto_14b

    :cond_14a
    move v10, v4

    :goto_14b
    const/16 v14, -0x28

    if-gt v3, v14, :cond_152

    .line 842
    iput-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_158

    :cond_152
    const/16 v6, -0xf

    if-lt v3, v6, :cond_158

    .line 844
    iput-boolean v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 846
    :cond_158
    :goto_158
    iget-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v6, :cond_17f

    .line 847
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_178

    const-string v4, "WindowOrientationListener"

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    :goto_17b
    move/from16 p1, v13

    goto/16 :goto_23a

    .line 852
    :cond_17f
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v14, 0x50

    if-le v6, v14, :cond_1a7

    .line 853
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_1a3

    const-string v4, "WindowOrientationListener"

    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_1a3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto :goto_17b

    :cond_1a7
    neg-float v5, v5

    float-to-double v5, v5

    move/from16 p1, v13

    float-to-double v12, v7

    .line 863
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    mul-double/2addr v5, v15

    .line 862
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    if-gez v5, :cond_1bb

    add-int/lit16 v5, v5, 0x168

    :cond_1bb
    add-int/lit8 v6, v5, 0x2d

    .line 870
    div-int/lit8 v6, v6, 0x5a

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    move v4, v6

    .line 876
    :goto_1c4
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v6

    if-eqz v6, :cond_213

    .line 877
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v6

    if-eqz v6, :cond_213

    .line 879
    invoke-virtual {v0, v8, v9, v4}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 880
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_23a

    const-string v4, "WindowOrientationListener"

    .line 881
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Predicted: tiltAngle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", orientationAngle="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotation="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotationAgeMS="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v12, v8, v12

    long-to-float v3, v12

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23a

    .line 890
    :cond_213
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_237

    const-string v4, "WindowOrientationListener"

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", orientationAngle="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    :cond_23a
    :goto_23a
    move/from16 v4, p1

    goto :goto_23f

    :cond_23d
    :goto_23d
    move v10, v4

    move v11, v10

    .line 900
    :goto_23f
    iput-boolean v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 901
    iput-boolean v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 902
    iput-boolean v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 905
    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 906
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v5, :cond_251

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v5

    if-eqz v5, :cond_255

    .line 907
    :cond_251
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 909
    :cond_255
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 912
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v6

    if-eqz v6, :cond_313

    const-string v6, "WindowOrientationListener"

    .line 913
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Result: currentRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v12}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", proposedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", predictedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeDeltaMS="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isAccelerating="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlat="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSwinging="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOverhead="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouched="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSettledMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v12, 0x2625a00

    add-long/2addr v10, v12

    .line 922
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v12, 0x1dcd6500

    add-long/2addr v10, v12

    .line 924
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v10, v12

    .line 926
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v14, 0x11e1a300

    add-long/2addr v10, v14

    .line 928
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v10, v12

    .line 930
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_313
    monitor-exit v2
    :try_end_314
    .catchall {:try_start_b .. :try_end_314} :catchall_342

    if-eq v5, v3, :cond_341

    if-ltz v5, :cond_341

    .line 937
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v1

    if-eqz v1, :cond_33c

    const-string v1, "WindowOrientationListener"

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldProposedRotation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_33c
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_341
    return-void

    :catchall_342
    move-exception v0

    .line 933
    :try_start_343
    monitor-exit v2
    :try_end_344
    .catchall {:try_start_343 .. :try_end_344} :catchall_342

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4

    const/4 v0, 0x0

    .line 952
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 953
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    return-void
.end method

.method public final remainingMS(JJ)F
    .registers 5

    cmp-long p0, p1, p3

    if-ltz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    sub-long/2addr p3, p1

    long-to-float p0, p3

    const p1, 0x358637bd    # 1.0E-6f

    mul-float/2addr p0, p1

    :goto_c
    return p0
.end method

.method public resetLocked(Z)V
    .registers 4

    const-wide/high16 v0, -0x8000000000000000L

    .line 958
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    if-eqz p1, :cond_9

    const/4 p1, -0x1

    .line 960
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 962
    :cond_9
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const/4 p1, 0x0

    .line 963
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 964
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 965
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 966
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 967
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 968
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 969
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 970
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    return-void
.end method

.method public final updatePredictedRotationLocked(JI)V
    .registers 5

    .line 1078
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 1079
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1080
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :cond_8
    return-void
.end method
