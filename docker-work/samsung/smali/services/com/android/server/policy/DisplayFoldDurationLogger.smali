.class public Lcom/android/server/policy/DisplayFoldDurationLogger;
.super Ljava/lang/Object;
.source "DisplayFoldDurationLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DisplayFoldDurationLogger$ScreenState;
    }
.end annotation


# static fields
.field public static final LOG_SUBTYPE_DURATION_MASK:I = -0x80000000

.field public static final LOG_SUBTYPE_FOLDED:I = 0x1

.field public static final LOG_SUBTYPE_UNFOLDED:I = 0x0

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON_FOLDED:I = 0x2

.field public static final SCREEN_STATE_ON_UNFOLDED:I = 0x1

.field public static final SCREEN_STATE_UNKNOWN:I = -0x1


# instance fields
.field public volatile mLastChanged:Ljava/lang/Long;

.field public final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public volatile mScreenState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 57
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method


# virtual methods
.method public final isOn()Z
    .registers 3

    .line 131
    iget v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget p0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public final log()V
    .registers 7

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    iget v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    const v0, -0x7fffffff

    goto :goto_14

    :cond_12
    const/high16 v0, -0x80000000

    .line 112
    :goto_14
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    if-eqz v1, :cond_3a

    .line 114
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x63a

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 116
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_3a
    return-void
.end method

.method public logFocusedAppWithFoldState(ZLjava/lang/String;)V
    .registers 5

    .line 88
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x63a

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    .line 90
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    return-void
.end method

.method public onFinishedWakingUp(Ljava/lang/Boolean;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_13

    .line 62
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_13

    :cond_10
    const/4 p1, 0x1

    .line 65
    iput p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 67
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    return-void
.end method

.method public setDeviceFolded(Z)V
    .registers 4

    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->isOn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    if-eqz p1, :cond_e

    const/4 p1, 0x2

    goto :goto_f

    :cond_e
    const/4 p1, 0x1

    .line 83
    :goto_f
    iput p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    return-void
.end method
