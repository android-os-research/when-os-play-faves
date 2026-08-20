.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricLogger"


# instance fields
.field public mFirstAcquireTimeMs:J

.field public volatile mLastAmbientLux:F

.field public mLightSensorEnabled:Z

.field public final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/biometrics/log/BiometricLogger;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAmbientLux(Lcom/android/server/biometrics/log/BiometricLogger;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLightSensorLoggingEnabled(Lcom/android/server/biometrics/log/BiometricLogger;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricLogger;->setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 83
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricLogger$1;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 118
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 119
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 120
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 121
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 122
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11

    .line 110
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v4

    const-class v0, Landroid/hardware/SensorManager;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/hardware/SensorManager;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 3

    .line 97
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method


# virtual methods
.method public createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe-IA;)V

    invoke-direct {v0, v1, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public disableMetrics()V
    .registers 2

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    return-void
.end method

.method public getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .registers 2

    .line 335
    iget-boolean p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method

.method public getStatsClient()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    return p0
.end method

.method public getStatsModality()I
    .registers 1

    .line 360
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    return p0
.end method

.method public logOnAcquired(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .registers 16

    .line 162
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_5

    return-void

    .line 166
    :cond_5
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-ne v0, v3, :cond_12

    move v2, v3

    :cond_12
    if-nez v1, :cond_28

    if-eqz v2, :cond_17

    goto :goto_28

    :cond_17
    if-nez p3, :cond_39

    .line 174
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_39

    :cond_28
    :goto_28
    if-eqz v2, :cond_2d

    const/4 v0, 0x7

    if-eq p3, v0, :cond_33

    :cond_2d
    if-eqz v1, :cond_39

    const/16 v0, 0x14

    if-ne p3, v0, :cond_39

    .line 171
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 188
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_40

    return-void

    .line 192
    :cond_40
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 193
    invoke-static {p1, p5}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    move-object v2, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 192
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Landroid/hardware/biometrics/common/OperationContext;IIIZIII)V

    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V
    .registers 19

    move-object v0, p0

    .line 233
    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-nez p3, :cond_b

    const/4 v1, 0x1

    :goto_9
    move v8, v1

    goto :goto_13

    :cond_b
    if-eqz p6, :cond_11

    if-eqz p4, :cond_11

    const/4 v1, 0x2

    goto :goto_9

    :cond_11
    const/4 v1, 0x3

    goto :goto_9

    .line 250
    :goto_13
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_25

    :cond_23
    const-wide/16 v1, -0x1

    :goto_25
    move-wide v6, v1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_43

    return-void

    .line 271
    :cond_43
    iget-object v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move-object v5, p1

    move/from16 v10, p5

    .line 272
    invoke-static {p1, v10}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    iget v11, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    move-object v0, v1

    move-object v1, p2

    move/from16 v9, p4

    .line 271
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V

    return-void
.end method

.method public logOnEnrolled(IJZ)V
    .registers 15

    .line 278
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_5

    return-void

    .line 290
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 297
    :cond_22
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget v9, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZF)V

    return-void
.end method

.method public logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .registers 20

    move-object v0, p0

    .line 200
    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_6

    return-void

    .line 204
    :cond_6
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_18

    :cond_16
    const-wide/16 v1, -0x1

    :goto_18
    move-wide v9, v1

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_36

    return-void

    .line 224
    :cond_36
    iget-object v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v5, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v6, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v7, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move-object v0, p1

    move/from16 v1, p5

    .line 225
    invoke-static {p1, v1}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v8

    move-object/from16 v4, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 224
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V

    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .registers 2

    .line 312
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .registers 2

    .line 303
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    return-void
.end method

.method public final setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 345
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    .line 346
    iput-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    .line 347
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 348
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_21

    :cond_15
    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    .line 353
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    .line 354
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final shouldSkipLogging()Z
    .registers 4

    .line 141
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v1, 0x1

    :goto_c
    const-string v2, "BiometricLogger"

    if-nez v0, :cond_15

    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    .line 145
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_15
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_1e

    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    .line 149
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1e
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez p0, :cond_27

    const-string p0, "Unknown field detected: CLIENT_UNKNOWN"

    .line 153
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return v1
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 127
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method
