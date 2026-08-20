.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
    }
.end annotation


# static fields
.field public static final LUX_GRAD_SMOOTHING:F = 0.25f

.field public static LUX_NO_PERCEPTIBLE:F = 0.0f

.field public static final MAX_GRAD:F = 1.0f

.field public static final MIN_GRAD:F = 0.05f

.field public static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field public static final PLOG:Lcom/android/server/display/utils/Plog;

.field public static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field public static final SIMILAR_LUX_BOUNDARY_MIN_DISTANCE:F = 10.0f

.field public static final SIMILAR_LUX_BOUNDARY_RATIO:F = 2.5f

.field public static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field public static sHbmLux:F

.field public static sScreenExtendedBrightnessRangeMaximum:I


# instance fields
.field public final MIN_SHORT_TERM_MODEL_THRESHOLD:I

.field public mLoggingEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;
    .registers 1

    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsHbmLux()F
    .registers 1

    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsScreenExtendedBrightnessRangeMaximum()I
    .registers 1

    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisValidUserLux(F)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidUserLux(F)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "BrightnessMappingStrategy"

    .line 76
    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const/high16 v0, 0x40400000    # 3.0f

    .line 80
    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->LUX_NO_PERCEPTIBLE:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 91
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->MIN_SHORT_TERM_MODEL_THRESHOLD:I

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 4

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 16

    if-eqz p2, :cond_19

    const v0, 0x1070078

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    const v1, 0x107007d

    .line 143
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    goto :goto_2f

    :cond_19
    const v0, 0x1070077

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    const v1, 0x107007c

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v1

    :goto_2f
    move-object v2, v1

    const v1, 0x107007a

    .line 153
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/high16 v1, 0x1130000

    const/4 v4, 0x1

    .line 155
    invoke-virtual {p0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    const-wide/32 v4, 0x927c0

    .line 162
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v7

    .line 163
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v8

    const p1, 0x10e0109

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    const p1, 0x10e002d

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_66

    const p0, 0x469c4000    # 20000.0f

    .line 172
    sput p0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    .line 176
    :cond_66
    invoke-static {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result p0

    const-string p1, "BrightnessMappingStrategy"

    if-eqz p0, :cond_b3

    .line 177
    invoke-static {v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result p0

    if-eqz p0, :cond_b3

    const-string p0, "Use PhysicalMappingStrategy"

    .line 178
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    if-eqz p0, :cond_95

    const/4 p0, 0x0

    .line 181
    :goto_7e
    array-length p1, v0

    if-ge p0, p1, :cond_95

    .line 182
    aget p1, v2, p0

    sget v1, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8a

    goto :goto_95

    .line 185
    :cond_8a
    aget p1, v0, p0

    const v1, 0x3f628f5c    # 0.885f

    mul-float/2addr p1, v1

    aput p1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_7e

    .line 190
    :cond_95
    :goto_95
    new-instance p0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {p0, v2, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 192
    invoke-virtual {p0, v4, v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    const p1, 0x3f19999a    # 0.6f

    .line 193
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 194
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 195
    new-instance p1, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6

    move-object v5, p1

    move v10, p2

    move-object v11, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V

    return-object p1

    .line 197
    :cond_b3
    invoke-static {v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result p0

    if-eqz p0, :cond_cc

    if-nez p2, :cond_cc

    const-string p0, "Use SimpleMappingStrategy"

    .line 198
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v7, 0x0

    const-wide/32 v5, 0x927c0

    move-object v1, p0

    move v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy-IA;)V

    return-object p0

    :cond_cc
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createForIdleMode(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 4

    const/4 v0, 0x1

    .line 118
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;ZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 232
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 233
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 237
    :cond_13
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .registers 4

    .line 218
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 219
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_12

    add-int/lit8 v2, v1, 0x1

    .line 220
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_6

    :cond_12
    return-object v0
.end method

.method public static isValidMapping([F[F)Z
    .registers 15

    const-string v0, "BrightnessMappingStrategy"

    const/4 v1, 0x0

    if-eqz p0, :cond_fc

    if-eqz p1, :cond_fc

    .line 242
    array-length v2, p0

    if-eqz v2, :cond_fc

    array-length v2, p1

    if-nez v2, :cond_f

    goto/16 :goto_fc

    .line 247
    :cond_f
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_33

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " y.length: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 251
    :cond_33
    array-length v2, p0

    .line 252
    aget v3, p0, v1

    .line 253
    aget v4, p1, v1

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    const-string v7, " prevY: "

    const-string/jumbo v8, "prevX: "

    if-ltz v6, :cond_e3

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_e3

    .line 254
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_e3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_54

    goto/16 :goto_e3

    :cond_54
    const/4 v5, 0x1

    move v6, v5

    :goto_56
    if-ge v6, v2, :cond_e2

    .line 259
    aget v9, p0, v6

    cmpl-float v10, v3, v9

    const-string v11, " y["

    const-string v12, "]: "

    if-gez v10, :cond_ab

    aget v10, p1, v6

    cmpl-float v10, v4, v10

    if-lez v10, :cond_69

    goto :goto_ab

    .line 264
    :cond_69
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7f

    aget v3, p1, v6

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7f

    .line 268
    :cond_78
    aget v3, p0, v6

    .line 269
    aget v4, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 265
    :cond_7f
    :goto_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p1, v6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 260
    :cond_ab
    :goto_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " x["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p1, v6

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e2
    return v5

    .line 255
    :cond_e3
    :goto_e3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 243
    :cond_fc
    :goto_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "null"

    if-nez p0, :cond_10e

    move-object p0, v3

    goto :goto_113

    :cond_10e
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_113
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " y: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_11e

    goto :goto_123

    .line 244
    :cond_11e
    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isValidMapping([F[I)Z
    .registers 14

    const-string v0, "BrightnessMappingStrategy"

    const/4 v1, 0x0

    if-eqz p0, :cond_db

    if-eqz p1, :cond_db

    .line 275
    array-length v2, p0

    if-eqz v2, :cond_db

    array-length v2, p1

    if-nez v2, :cond_f

    goto/16 :goto_db

    .line 280
    :cond_f
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_33

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " y.length: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 284
    :cond_33
    array-length v2, p0

    .line 285
    aget v3, p0, v1

    .line 286
    aget v4, p1, v1

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    const-string v6, " prevY: "

    const-string/jumbo v7, "prevX: "

    if-ltz v5, :cond_c2

    if-ltz v4, :cond_c2

    .line 287
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto/16 :goto_c2

    :cond_4c
    const/4 v5, 0x1

    move v8, v5

    :goto_4e
    if-ge v8, v2, :cond_c1

    .line 292
    aget v9, p0, v8

    cmpl-float v10, v3, v9

    const-string v11, "]: "

    if-gez v10, :cond_88

    aget v10, p1, v8

    if-le v4, v10, :cond_5d

    goto :goto_88

    .line 297
    :cond_5d
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 301
    :cond_81
    aget v3, p0, v8

    .line 302
    aget v4, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 293
    :cond_88
    :goto_88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " x["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v8

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " y["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p1, v8

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c1
    return v5

    .line 288
    :cond_c2
    :goto_c2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 276
    :cond_db
    :goto_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "null"

    if-nez p0, :cond_ed

    move-object p0, v3

    goto :goto_f2

    :cond_ed
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_f2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " y: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_fd

    goto :goto_102

    .line 277
    :cond_fd
    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isValidUserLux(F)Z
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_d

    .line 697
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeAbsoluteBrightness(I)F
    .registers 1

    .line 507
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p0

    return p0
.end method

.method public static permissibleMinimumRatio(FF)F
    .registers 4

    .line 686
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->LUX_NO_PERCEPTIBLE:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_d

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_d
    const v0, 0x3d4ccccd    # 0.05f

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr p0, v1

    .line 692
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    add-float/2addr p1, v1

    .line 693
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr p0, v0

    .line 691
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    return p0
.end method

.method public static permissibleRatio(FF)F
    .registers 3

    const/high16 v0, 0x3e800000    # 0.25f

    add-float/2addr p0, v0

    add-float/2addr p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 680
    invoke-static {p0, p1}, Landroid/util/MathUtils;->pow(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToBrightness(F)I
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;F)V
.end method

.method public final findInsertionPoint([FF)I
    .registers 4

    const/4 p0, 0x0

    .line 602
    :goto_1
    array-length v0, p1

    if-ge p0, v0, :cond_e

    .line 603
    aget v0, p1, p0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_b

    return p0

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 607
    :cond_e
    array-length p0, p1

    return p0
.end method

.method public getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 738
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 739
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_11

    .line 740
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v2, "unadjusted curve"

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_11
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 742
    invoke-static {p5, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    neg-float p5, p5

    .line 743
    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 744
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v4, :cond_54

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdjustedCurve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result p5

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, " == "

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "BrightnessMappingStrategy"

    .line 745
    invoke-static {p6, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    cmpl-float p5, v3, v2

    if-eqz p5, :cond_67

    const/4 p5, 0x0

    .line 749
    :goto_59
    array-length p6, v0

    if-ge p5, p6, :cond_67

    .line 750
    aget p6, v0, p5

    invoke-static {p6, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p6

    aput p6, v0, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_59

    .line 753
    :cond_67
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_72

    .line 754
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string p6, "gamma adjusted curve"

    invoke-virtual {p5, p6, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_72
    cmpl-float p5, p3, v1

    if-eqz p5, :cond_a1

    .line 757
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p5

    .line 759
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, [F

    .line 760
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, [F

    .line 761
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_a0

    .line 762
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v1, "gamma and user adjusted curve"

    invoke-virtual {p5, v1, p6, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 764
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p0

    .line 765
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [F

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [F

    const-string/jumbo p2, "user adjusted curve"

    invoke-virtual {p5, p2, p1, p0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_a0
    move-object p1, p6

    .line 768
    :cond_a1
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 367
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessForSpline(FLandroid/util/Spline;)F
.end method

.method public abstract getBrightnessSpline()Landroid/util/Spline;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public inferAutoBrightnessAdjustment(FFF)F
    .registers 10

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p3, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-lez v0, :cond_37

    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_39

    :cond_1c
    cmpl-float v0, p2, v2

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_39

    .line 721
    :cond_22
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    div-float v3, v0, v3

    .line 723
    invoke-static {v3}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    neg-float v0, v0

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float/2addr v0, v4

    goto :goto_39

    :cond_37
    :goto_37
    sub-float v0, p2, p3

    .line 725
    :goto_39
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 726
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_9d

    .line 727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inferAutoBrightnessAdjustment: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-static {p1, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " == "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "BrightnessMappingStrategy"

    .line 727
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {p3, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return v0
.end method

.method public final insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result p0

    .line 573
    array-length v0, p1

    if-ne p0, v0, :cond_1a

    .line 574
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 575
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 576
    aput p3, p1, p0

    .line 577
    aput p4, p2, p0

    goto :goto_4d

    .line 578
    :cond_1a
    aget v0, p1, p0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_2d

    .line 579
    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 580
    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 581
    aput p4, p2, p0

    goto :goto_4d

    .line 583
    :cond_2d
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    .line 584
    array-length p1, p1

    sub-int/2addr p1, p0

    invoke-static {v0, p0, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    aput p3, v0, p0

    .line 586
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 587
    array-length p2, p2

    sub-int/2addr p2, p0

    invoke-static {p1, p0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    aput p4, p1, p0

    move-object p2, p1

    move-object p1, v0

    .line 592
    :goto_4d
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Landroid/util/Spline;",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 539
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 541
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 544
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 545
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [F

    const/4 v1, 0x0

    .line 547
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 548
    aget v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_36

    .line 550
    sget v3, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_36

    .line 551
    invoke-virtual {p3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aget v4, p2, v1

    add-float/2addr v3, v4

    .line 554
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    invoke-virtual {p0, v4, p1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p1

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 558
    :cond_39
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getLastAddedLux()F

    move-result p2

    .line 559
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, [F

    invoke-virtual {p0, p3, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result p2

    .line 561
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, [F

    iget-object p4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, [F

    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    :cond_50
    return-object p1
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract isForIdleMode()Z
.end method

.method public plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F
    .registers 7

    .line 513
    array-length p0, p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 514
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 517
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, [F

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [F

    invoke-static {p3, p2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    const/4 p3, 0x0

    .line 519
    :goto_18
    array-length v0, p0

    if-ge p3, v0, :cond_36

    .line 521
    aget v0, p0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_24

    goto :goto_36

    .line 526
    :cond_24
    aget v2, p1, p3

    invoke-virtual {p2, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    add-float/2addr v0, v2

    aput v0, p0, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 529
    aput v1, p0, p3

    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    :cond_36
    :goto_36
    return-object p0
.end method

.method public abstract recalculateSplines(Z[F)V
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 316
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 319
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 321
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->setLoggingEnabled(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public shouldResetShortTermModel(FF)Z
    .registers 6

    .line 469
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 473
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_13

    .line 474
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    .line 476
    :cond_13
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_20

    .line 477
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    :cond_20
    const/high16 v0, 0x41f00000    # 30.0f

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, p2

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v1, p2, v0

    add-float/2addr p2, v0

    cmpg-float v0, v1, p1

    const-string v2, "BrightnessMappingStrategy"

    if-gez v0, :cond_5f

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_5f

    .line 493
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_5d

    .line 494
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    const/4 p0, 0x0

    return p0

    .line 499
    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final smoothCurve([F[FI)V
    .registers 10

    .line 611
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 612
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 614
    :cond_c
    aget v0, p1, p3

    .line 615
    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 617
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_37

    .line 618
    aget v3, p1, v2

    .line 619
    aget v4, p2, v2

    .line 632
    sget v5, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_20

    goto :goto_37

    .line 636
    :cond_20
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 637
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_30

    goto :goto_31

    :cond_30
    move v1, v0

    .line 645
    :goto_31
    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_12

    .line 648
    :cond_37
    :goto_37
    aget v0, p1, p3

    .line 649
    aget v1, p2, p3

    add-int/lit8 p3, p3, -0x1

    :goto_3d
    if-ltz p3, :cond_58

    .line 651
    aget v2, p1, p3

    .line 652
    aget v3, p2, p3

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_49

    goto :goto_58

    .line 666
    :cond_49
    invoke-static {v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 667
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 672
    aput v1, p2, p3

    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_3d

    .line 674
    :cond_58
    :goto_58
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_64

    .line 675
    sget-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo p3, "smoothed curve"

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_64
    return-void
.end method
