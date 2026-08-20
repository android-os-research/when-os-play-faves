.class public Landroid/os/vibrator/VibrationConfig;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# instance fields
.field private final blacklist mDefaultAlarmVibrationIntensity:I

.field private final blacklist mDefaultHapticFeedbackIntensity:I

.field private final blacklist mDefaultMediaVibrationIntensity:I

.field private final blacklist mDefaultNotificationVibrationIntensity:I

.field private final blacklist mDefaultRingVibrationIntensity:I

.field private final blacklist mHapticChannelMaxVibrationAmplitude:F

.field private final blacklist mRampDownDurationMs:I

.field private final blacklist mRampStepDurationMs:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x10500b7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    .line 67
    const v0, 0x10e0136

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    .line 69
    const v0, 0x10e0137

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    .line 72
    const v0, 0x10e005a

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    .line 74
    const v0, 0x10e0060

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 76
    const v0, 0x10e0061

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    .line 78
    const v0, 0x10e0068

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    .line 80
    const v0, 0x10e006f

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    .line 82
    return-void
.end method

.method private static blacklist loadDefaultIntensity(Landroid/content/res/Resources;I)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 86
    const/4 v0, 0x3

    .line 87
    .local v0, "defaultIntensity":I
    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v1

    .line 88
    .local v1, "value":I
    if-ltz v1, :cond_c

    const/4 v2, 0x5

    if-le v1, v2, :cond_b

    goto :goto_c

    .line 91
    :cond_b
    return v1

    .line 89
    :cond_c
    :goto_c
    return v0
.end method

.method private static blacklist loadFloat(Landroid/content/res/Resources;IF)F
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # F

    .line 95
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;II)I
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # I

    .line 99
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method


# virtual methods
.method public blacklist getDefaultVibrationIntensity(I)I
    .registers 3
    .param p1, "usage"    # I

    .line 141
    sparse-switch p1, :sswitch_data_12

    .line 158
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    return v0

    .line 146
    :sswitch_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    return v0

    .line 148
    :sswitch_9
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return v0

    .line 153
    :sswitch_c
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    return v0

    .line 143
    :sswitch_f
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    return v0

    :sswitch_data_12
    .sparse-switch
        0x11 -> :sswitch_f
        0x12 -> :sswitch_c
        0x21 -> :sswitch_9
        0x22 -> :sswitch_c
        0x31 -> :sswitch_6
        0x32 -> :sswitch_c
        0x41 -> :sswitch_6
        0x42 -> :sswitch_c
    .end sparse-switch
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .registers 3

    .line 109
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_a

    .line 110
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 112
    :cond_a
    return v0
.end method

.method public blacklist getRampDownDurationMs()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    if-gez v0, :cond_6

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_6
    return v0
.end method

.method public blacklist getRampStepDurationMs()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    if-gez v0, :cond_6

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_6
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationConfig{mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampStepDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampDownDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultAlarmIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultMediaIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
