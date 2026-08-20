.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field blacklist frameVsyncId:J

.field blacklist hwuiCallbackFired:Z

.field blacklist isFirstFrame:Z

.field blacklist jankType:I

.field blacklist surfaceControlCallbackFired:Z

.field blacklist totalDurationNanos:J


# direct methods
.method private constructor blacklist <init>(JZZIJZ)V
    .registers 9
    .param p1, "frameVsyncId"    # J
    .param p3, "hwuiCallbackFired"    # Z
    .param p4, "surfaceControlCallbackFired"    # Z
    .param p5, "jankType"    # I
    .param p6, "totalDurationNanos"    # J
    .param p8, "isFirstFrame"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    .line 142
    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 143
    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 144
    iput-wide p6, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 145
    iput p5, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    .line 146
    iput-boolean p8, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    .line 147
    return-void
.end method

.method static blacklist createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 15
    .param p0, "frameVsyncId"    # J
    .param p2, "totalDurationNanos"    # J
    .param p4, "isFirstFrame"    # Z

    .line 129
    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method

.method static blacklist createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 13
    .param p0, "frameVsyncId"    # J
    .param p2, "jankType"    # I

    .line 135
    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "str":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    sparse-switch v1, :sswitch_data_5a

    .line 175
    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 172
    :sswitch_16
    const-string v1, "SURFACE_FLINGER_SCHEDULING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_40

    .line 169
    :sswitch_1c
    const-string v1, "PREDICTION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_40

    .line 157
    :sswitch_22
    const-string v1, "JANK_APP_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    goto :goto_40

    .line 163
    :sswitch_28
    const-string v1, "JANK_SURFACEFLINGER_GPU_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    goto :goto_40

    .line 160
    :sswitch_2e
    const-string v1, "JANK_SURFACEFLINGER_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    goto :goto_40

    .line 166
    :sswitch_34
    const-string v1, "DISPLAY_HAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_40

    .line 154
    :sswitch_3a
    const-string v1, "JANK_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    nop

    .line 178
    :goto_40
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_3a
        0x1 -> :sswitch_34
        0x2 -> :sswitch_2e
        0x4 -> :sswitch_28
        0x8 -> :sswitch_22
        0x10 -> :sswitch_1c
        0x20 -> :sswitch_16
    .end sparse-switch
.end method
