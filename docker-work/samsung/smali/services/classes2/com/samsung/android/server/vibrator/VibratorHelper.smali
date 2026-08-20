.class public Lcom/samsung/android/server/vibrator/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field public static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x4

.field public static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field public static final TIMEOUT_FOR_PREVENT_DELAY:I = 0x64

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;


# instance fields
.field public final mActAlwaysPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mVibePatternHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/vibrator/PatternInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 56
    sget-object v0, Lcom/samsung/android/vibrator/VibRune;->DND_EXCEPTION_PACKAGES:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mActAlwaysPackages:Ljava/util/HashSet;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 64
    sget-boolean p0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    if-eqz p0, :cond_24

    .line 65
    sget-object p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_24
    return-void
.end method

.method public static getHapticFeedbackSettingName()Ljava/lang/String;
    .registers 1

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;
    .registers 1

    .line 71
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-direct {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 74
    :cond_b
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-object v0
.end method

.method public static getMotorType(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3e

    const-string v0, ""

    goto :goto_23

    :pswitch_6
    const-string v0, "MOTOR_LINEAR_1030"

    goto :goto_23

    :pswitch_9
    const-string v0, "MOTOR_LINEAR_RCVMOT"

    goto :goto_23

    :pswitch_c
    const-string v0, "MOTOR_LINEAR_1040"

    goto :goto_23

    :pswitch_f
    const-string v0, "MOTOR_LINEAR_0832RC"

    goto :goto_23

    :pswitch_12
    const-string v0, "MOTOR_LINEAR_INDEX"

    goto :goto_23

    :pswitch_15
    const-string v0, "MOTOR_COIN_DC_INDEX"

    goto :goto_23

    :pswitch_18
    const-string v0, "MOTOR_COIN_DC_PMIC"

    goto :goto_23

    :pswitch_1b
    const-string v0, "MOTOR_LINEAR_0832"

    goto :goto_23

    :pswitch_1e
    const-string v0, "MOTOR_COIN_DC"

    goto :goto_23

    :pswitch_21
    const-string v0, "MOTOR_NONE"

    .line 302
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getNotificationVibrationSettingName()Ljava/lang/String;
    .registers 1

    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    return-object v0
.end method

.method public static getRingVibrationSettingName()Ljava/lang/String;
    .registers 1

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    return-object v0
.end method

.method public static getVibrationTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "SEM_SUPPORTED_VIBRATION_NONE"

    goto :goto_1a

    :cond_f
    const-string p0, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    goto :goto_1a

    :cond_12
    const-string p0, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    goto :goto_1a

    :cond_15
    const-string p0, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    goto :goto_1a

    :cond_18
    const-string p0, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    :goto_1a
    return-object p0
.end method

.method public static isColorfulDataFormat([I)Z
    .registers 8

    .line 306
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const-string v2, "] = "

    const-string v3, "VibratorManagerService"

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-le v0, v4, :cond_3a

    .line 309
    div-int/lit8 v6, v1, 0x4

    mul-int/2addr v6, v4

    if-eq v6, v1, :cond_11

    goto :goto_3a

    .line 318
    :cond_11
    aget v4, p0, v5

    if-ne v1, v4, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    move v1, v5

    :goto_18
    if-ge v1, v0, :cond_39

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p0, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_39
    return v5

    :cond_3a
    :goto_3a
    move v1, v5

    :goto_3b
    if-ge v1, v0, :cond_5c

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p0, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_5c
    return v5
.end method


# virtual methods
.method public final createPatternInfo(ILandroid/content/res/Resources;II)V
    .registers 7

    .line 130
    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/vibrator/PatternInfo;-><init>()V

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->initPattern(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 132
    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 135
    iget-object p2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mVibePatternHash.put("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pattern), mVibePatternHash.size() : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 137
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    .line 136
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getIntArray(Landroid/content/res/Resources;I)[I
    .registers 5

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    .line 85
    :goto_6
    array-length v0, p0

    const/4 v1, -0x1

    if-ge p2, v0, :cond_14

    .line 86
    aget v0, p0, p2

    if-ne v0, v1, :cond_11

    add-int/lit8 v1, p2, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    :goto_14
    if-gez v1, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_18
    array-length p2, p0

    sub-int/2addr p2, v1

    .line 96
    new-array v0, p2, [I

    .line 97
    invoke-static {p0, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getLongArray(Landroid/content/res/Resources;I)[J
    .registers 7

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 104
    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_8
    if-ge v0, p1, :cond_15

    aget v2, p0, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    goto :goto_15

    :cond_10
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 110
    :cond_15
    :goto_15
    new-array p1, v1, [J

    :goto_17
    if-ge p2, v1, :cond_21

    .line 112
    aget v0, p0, p2

    int-to-long v2, v0

    aput-wide v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_21
    return-object p1
.end method

.method public getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    return-object p0
.end method

.method public getSupportedPatternSize()I
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public final initEngineData(Landroid/content/res/Resources;I)[I
    .registers 3

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 124
    fill-array-data p0, :array_e

    :cond_c
    return-object p0

    nop

    :array_e
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final initPattern(Landroid/content/res/Resources;I)[J
    .registers 3

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    return-object p0
.end method

.method public isAllowedPackage(Ljava/lang/String;)Z
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mActAlwaysPackages:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadPatternInfo(Landroid/content/Context;)V
    .registers 7

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x107013b

    const/4 v2, 0x4

    .line 165
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v1, 0x2

    const v3, 0x107013c

    .line 166
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v3, 0x3

    const v4, 0x107013d

    .line 167
    invoke-virtual {p0, v3, p1, v4, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v4, 0x107013e

    .line 168
    invoke-virtual {p0, v2, p1, v4, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v3, 0x5

    const v4, 0x107013f

    .line 169
    invoke-virtual {p0, v3, p1, v4, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v0, 0x6

    const v3, 0x1070140

    .line 170
    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v0, 0x7

    const v2, 0x1070141

    .line 171
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x8

    const v1, 0x1070142

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x9

    const v1, 0x1070143

    .line 173
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xa

    const v1, 0x1070144

    .line 174
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xb

    const v1, 0x1070145

    .line 175
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xc

    const v1, 0x1070146

    .line 176
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xd

    const v1, 0x1070147

    .line 177
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xe

    const v1, 0x1070148

    .line 178
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0xf

    const v1, 0x1070149

    .line 179
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x10

    const v1, 0x107014a

    .line 180
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x11

    const v1, 0x107014b

    .line 181
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x12

    const v1, 0x107014c

    .line 182
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x13

    const v1, 0x107014d

    .line 183
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x14

    const v1, 0x107014e

    .line 184
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x15

    const v1, 0x107014f

    .line 185
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x16

    const v1, 0x1070159

    .line 186
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x17

    const v1, 0x107015a

    .line 187
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x18

    const v1, 0x107015b

    .line 188
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x19

    const v1, 0x107015c

    .line 189
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1a

    const v1, 0x107015d

    .line 190
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1b

    const v1, 0x107015e

    .line 191
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1c

    const v1, 0x107015f

    .line 192
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1d

    const v1, 0x1070160

    .line 193
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1e

    const v1, 0x1070161

    .line 194
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x1f

    const v1, 0x1070162

    .line 195
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x20

    const v1, 0x1070163

    .line 196
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x21

    const v1, 0x1070164

    .line 197
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x22

    const v1, 0x1070165

    .line 198
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x23

    const v1, 0x1070166

    .line 199
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x24

    const v1, 0x1070167

    .line 200
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x25

    const v1, 0x1070168

    .line 201
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x26

    const v1, 0x1070169

    .line 202
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x27

    const v1, 0x107016a

    .line 203
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x28

    const v1, 0x107016b

    .line 204
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x29

    const v1, 0x107016c

    .line 205
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2a

    const v1, 0x107016d

    .line 206
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2b

    const v1, 0x107016e

    .line 207
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2c

    const v1, 0x107016f

    .line 208
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2d

    const v1, 0x1070170

    .line 209
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2e

    const v1, 0x1070171

    .line 210
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x2f

    const v1, 0x1070172

    .line 211
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x30

    const v1, 0x1070173

    .line 212
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x31

    const v1, 0x1070174

    .line 213
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x32

    const v1, 0x1070175

    .line 214
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x33

    const v1, 0x1070176

    .line 215
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x34

    const v1, 0x1070177

    .line 216
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x38

    const v1, 0x1070178

    .line 217
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x39

    const v1, 0x1070179

    .line 218
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x3a

    const v1, 0x107017a

    .line 219
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x3b

    const v1, 0x107017b

    .line 220
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x3c

    const v1, 0x107017c

    .line 221
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x54

    const v1, 0x107017d

    .line 222
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x55

    const v1, 0x107017e

    .line 223
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x56

    const v1, 0x107017f

    .line 224
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x57

    const v1, 0x1070180

    .line 225
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x58

    const v1, 0x1070181

    .line 226
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x59

    const v1, 0x1070182

    .line 227
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x5a

    const v1, 0x1070183

    .line 228
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x5b

    const v1, 0x1070184

    .line 229
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x5c

    const v1, 0x1070185

    .line 230
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x6c

    const v1, 0x1070150

    .line 231
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x6d

    const v1, 0x1070151

    .line 232
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x6e

    const v1, 0x1070152

    .line 233
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x6f

    const v1, 0x1070153

    .line 234
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x70

    const v1, 0x1070154

    .line 235
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x71

    const v1, 0x1070155

    .line 236
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x72

    const v1, 0x1070156

    .line 237
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x77

    const v1, 0x1070157

    .line 238
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v0, 0x7d

    const v1, 0x1070158

    .line 239
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    return-void
.end method
