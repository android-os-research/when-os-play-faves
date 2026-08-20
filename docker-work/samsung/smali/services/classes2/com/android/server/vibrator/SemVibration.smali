.class public abstract Lcom/android/server/vibrator/SemVibration;
.super Ljava/lang/Object;
.source "SemVibration.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field public static sIsFrequencySupported:Z

.field public static sIsHapticEngineSupported:Z


# instance fields
.field public mAttrs:Landroid/os/VibrationAttributes;

.field public mEffect:Landroid/os/CombinedVibration;

.field public mId:I

.field public mIndex:I

.field public mMagnitude:I

.field public mOpPkg:Ljava/lang/String;

.field public mReason:Ljava/lang/String;

.field public mRepeat:I

.field public mToken:Landroid/os/IBinder;

.field public mUid:I

.field public mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 36
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mId:I

    .line 37
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getAttrs()Landroid/os/VibrationAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 38
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    .line 39
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 43
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getRepeat()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 44
    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getMagnitude()I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 46
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-void
.end method

.method public static setIsFrequencySupported(Z)V
    .registers 2

    .line 116
    sput-boolean p0, Lcom/android/server/vibrator/SemVibration;->sIsFrequencySupported:Z

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frequency supported is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/vibrator/SemVibration;->sIsFrequencySupported:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setIsHapticEngineSupported(Z)V
    .registers 2

    .line 121
    sput-boolean p0, Lcom/android/server/vibrator/SemVibration;->sIsHapticEngineSupported:Z

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "haptic engine supported is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/vibrator/SemVibration;->sIsHapticEngineSupported:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public commonValidation()Z
    .registers 4

    .line 50
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v1, 0x0

    const-string v2, "VibratorManagerService"

    if-gtz v0, :cond_d

    const-string p0, "magnitude value is under 0"

    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 54
    :cond_d
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-lez v0, :cond_18

    const-string/jumbo p0, "repeat value is wrong."

    .line 55
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 58
    :cond_18
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez p0, :cond_23

    const-string/jumbo p0, "token is null"

    .line 59
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method public getCommonLog()Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const v3, 0xc368

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), repeat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", usage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 69
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    .line 70
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), magnitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsFrequencySupported()Z
    .registers 1

    .line 126
    sget-boolean p0, Lcom/android/server/vibrator/SemVibration;->sIsFrequencySupported:Z

    return p0
.end method

.method public getIsHapticEngineSupported()Z
    .registers 1

    .line 130
    sget-boolean p0, Lcom/android/server/vibrator/SemVibration;->sIsHapticEngineSupported:Z

    return p0
.end method

.method public getPatternByIndex(I)[J
    .registers 5

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 101
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 103
    iget-object p0, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    goto :goto_44

    .line 105
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternByIndex(), index out of bound, mVibePatternHash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    .line 105
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    new-array p0, p0, [J

    .line 109
    fill-array-data p0, :array_46

    :goto_44
    return-object p0

    nop

    :array_46
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public getPatternFrequencyByIndex(I)I
    .registers 6

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    sub-int v1, p1, v1

    .line 78
    sget-boolean v2, Lcom/android/server/vibrator/SemVibration;->sIsFrequencySupported:Z

    if-nez v2, :cond_c

    return v0

    .line 82
    :cond_c
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 84
    iget p0, v2, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_48

    .line 86
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPatternFrequencyByIndex(), index out of bound, mVibePatternHash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    .line 86
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_48
    if-eqz p0, :cond_4f

    .line 92
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4f
    return v0
.end method

.method public abstract getVibration()Lcom/android/server/vibrator/Vibration;
.end method
