.class public Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessEvent"
.end annotation


# static fields
.field public static final FLAG_DOZE_SCALE:I = 0x3

.field public static final FLAG_INVALID_LUX:I = 0x2

.field public static final FLAG_RBC:I = 0x1

.field public static final FLAG_USER_SET:I = 0x4


# instance fields
.field public adjustmentFlags:I

.field public brightness:F

.field public displayId:I

.field public flags:I

.field public hbmMax:F

.field public hbmMode:I

.field public lux:F

.field public preThresholdBrightness:F

.field public preThresholdLux:F

.field public final reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field public recommendedBrightness:F

.field public thermalMax:F

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 5

    .line 4119
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4100
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 4120
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    .line 4121
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .registers 5

    .line 4115
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4100
    new-instance v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 4116
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V
    .registers 4

    .line 4125
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    .line 4126
    iget-wide v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    .line 4127
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 4128
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 4129
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 4130
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 4131
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 4132
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 4133
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 4134
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 4135
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 4136
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 4137
    iget p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    return-void
.end method

.method public equalsMainData(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)Z
    .registers 4

    .line 4158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 4159
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 4160
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 4161
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 4162
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 4163
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 4164
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 4165
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 4166
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 4167
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 4168
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 4170
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 4171
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    if-ne v0, v1, :cond_86

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 4174
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    const/4 p0, 0x1

    goto :goto_87

    :cond_86
    const/4 p0, 0x0

    :goto_87
    return p0
.end method

.method public final flagsToString()Ljava/lang/String;
    .registers 4

    .line 4199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, ""

    if-eqz v1, :cond_11

    const-string/jumbo v1, "user_set "

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4200
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "rbc "

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4201
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "invalid_lux "

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_39

    const-string v2, "doze_scale "

    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .registers 4

    .line 4141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 4142
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 4143
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    const/4 v1, 0x0

    .line 4144
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 4145
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 4146
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4147
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 4148
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    const/4 v0, 0x0

    .line 4149
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 4150
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 4151
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 4152
    iput v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 4195
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 6

    .line 4178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_21

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, v1

    :goto_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: disp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->displayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4181
    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_41

    const-string v1, "(user_set)"

    :cond_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rcmdBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preLux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 4187
    invoke-static {p1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thrmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", flags="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 4190
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
