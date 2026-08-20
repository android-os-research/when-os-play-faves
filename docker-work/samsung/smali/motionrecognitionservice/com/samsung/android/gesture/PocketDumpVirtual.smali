.class Lcom/samsung/android/gesture/PocketDumpVirtual;
.super Lcom/samsung/android/gesture/PocketDumpData;
.source "PocketDumpData.java"


# instance fields
.field private mBaseProxy:I

.field private mBatteryTemp:I

.field private mCloseCentroid:I

.field private mCurrentProxy:I

.field private mHighLuxProxy:I

.field private mHighLuxProxyTime:Ljava/lang/String;

.field private mMinRecog:I

.field private mMinRelease:I

.field private mOpenCentroid:I

.field private mPocketSensorState:I

.field private mProxyReason:I

.field private mReleaseDiff:I


# direct methods
.method public constructor <init>(JIIIIIIIIIIJII)V
    .registers 32
    .param p1, "timeStamp"    # J
    .param p3, "pocketState"    # I
    .param p4, "reason"    # I
    .param p5, "baseProxy"    # I
    .param p6, "currentProxy"    # I
    .param p7, "releaseDiff"    # I
    .param p8, "minRelease"    # I
    .param p9, "minRecog"    # I
    .param p10, "lux"    # I
    .param p11, "batteryTemp"    # I
    .param p12, "highLuxProxy"    # I
    .param p13, "highLuxProxyTime"    # J
    .param p15, "openCentroid"    # I
    .param p16, "closeCentroid"    # I

    .line 77
    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketDumpData;-><init>()V

    .line 78
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    move-wide/from16 v3, p1

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mScreenOnTime:Ljava/lang/String;

    .line 79
    move/from16 v1, p3

    iput v1, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mPocketSensorState:I

    .line 80
    move/from16 v2, p4

    iput v2, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mProxyReason:I

    .line 81
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mBaseProxy:I

    .line 82
    move/from16 v6, p6

    iput v6, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mCurrentProxy:I

    .line 83
    move/from16 v7, p7

    iput v7, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mReleaseDiff:I

    .line 84
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRelease:I

    .line 85
    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRecog:I

    .line 86
    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mLux:I

    .line 87
    move/from16 v11, p11

    iput v11, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mBatteryTemp:I

    .line 88
    move/from16 v12, p12

    iput v12, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mHighLuxProxy:I

    .line 89
    iget-object v13, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    move-wide/from16 v1, p13

    invoke-direct {v14, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mHighLuxProxyTime:Ljava/lang/String;

    .line 90
    move/from16 v13, p15

    iput v13, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mOpenCentroid:I

    .line 91
    move/from16 v14, p16

    iput v14, v0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mCloseCentroid:I

    .line 92
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 96
    iget v0, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mProxyReason:I

    const-string v1, "    Time : "

    const/4 v2, 0x7

    if-ne v0, v2, :cond_51

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mScreenOnTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prox_raw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mBaseProxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mCurrentProxy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mReleaseDiff:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRelease:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRecog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mScreenOnTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psstate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mPocketSensorState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mProxyReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mBaseProxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mCurrentProxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mReleaseDiff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minRel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRelease:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minRecog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mMinRecog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lux : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batTemp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mBatteryTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highluxProxy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mHighLuxProxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mHighLuxProxyTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), o.c : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mOpenCentroid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c.c : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpVirtual;->mCloseCentroid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
