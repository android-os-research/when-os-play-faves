.class public final Lcom/android/server/voiceinteraction/HotwordMetricsLogger;
.super Ljava/lang/Object;
.source "HotwordMetricsLogger.java"


# static fields
.field public static final METRICS_INIT_DETECTOR_DSP:I = 0x1

.field public static final METRICS_INIT_DETECTOR_SOFTWARE:I = 0x2

.field public static final METRICS_INIT_NORMAL_DETECTOR:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreateMetricsDetectorType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static getDetectorMetricsDetectorType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static getInitMetricsDetectorType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static getKeyphraseMetricsDetectorType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static getRestartMetricsDetectorType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static writeDetectorCreateEvent(IZI)V
    .registers 4

    .line 59
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getCreateMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1ae

    .line 60
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZI)V

    return-void
.end method

.method public static writeDetectorEvent(III)V
    .registers 4

    .line 95
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getDetectorMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b2

    .line 96
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static writeKeyphraseTriggerEvent(II)V
    .registers 3

    .line 86
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getKeyphraseMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b1

    .line 87
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public static writeServiceInitResultEvent(II)V
    .registers 3

    .line 68
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getInitMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1af

    .line 69
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public static writeServiceRestartEvent(II)V
    .registers 3

    .line 77
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getRestartMetricsDetectorType(I)I

    move-result p0

    const/16 v0, 0x1b0

    .line 78
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
