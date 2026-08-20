.class abstract Lnet/jafama/AbstractFastMath;
.super Ljava/lang/Object;
.source "AbstractFastMath.java"


# static fields
.field static final ANTI_JIT_OPTIM_CRASH_ON_NAN:Z = true

.field static final ANTI_SLOW_CASTS:Z = true

.field static final ASINH_ACOSH_SQRT_ELISION_THRESHOLD:D = 1.6777216E7

.field static final ASINH_LOG1P_THRESHOLD:D = 0.04

.field static final ASIN_DELTA:D

.field static final ASIN_INDEXER:D

.field static final ASIN_MAX_VALUE_FOR_POWTABS:D

.field static final ASIN_MAX_VALUE_FOR_TABS:D

.field static final ASIN_PIO2_HI:D

.field static final ASIN_PIO2_LO:D

.field static final ASIN_POWTABS_ONE_DIV_MAX_VALUE:D

.field static final ASIN_POWTABS_POWER:I = 0x54

.field static final ASIN_POWTABS_SIZE:I

.field static final ASIN_POWTABS_SIZE_MINUS_ONE:I

.field static final ASIN_PS0:D

.field static final ASIN_PS1:D

.field static final ASIN_PS2:D

.field static final ASIN_PS3:D

.field static final ASIN_PS4:D

.field static final ASIN_PS5:D

.field static final ASIN_QS1:D

.field static final ASIN_QS2:D

.field static final ASIN_QS3:D

.field static final ASIN_QS4:D

.field static final ASIN_TABS_SIZE:I

.field static final ATAN_AT0:D

.field static final ATAN_AT1:D

.field static final ATAN_AT10:D

.field static final ATAN_AT2:D

.field static final ATAN_AT3:D

.field static final ATAN_AT4:D

.field static final ATAN_AT5:D

.field static final ATAN_AT6:D

.field static final ATAN_AT7:D

.field static final ATAN_AT8:D

.field static final ATAN_AT9:D

.field static final ATAN_DELTA:D

.field static final ATAN_HI3:D

.field static final ATAN_INDEXER:D

.field static final ATAN_LO3:D

.field static final ATAN_MAX_VALUE_FOR_TABS:D

.field static final ATAN_TABS_SIZE:I

.field static final CBRT_LO_BITS:I

.field static final CBRT_LO_TAB_SIZE:I

.field static final DOUBLE_BEFORE_60:D

.field static final DOUBLE_MIN_NORMAL:D

.field static final EXP_LO_DISTANCE_TO_ZERO:I = 0x1

.field static final EXP_LO_DISTANCE_TO_ZERO_POT:I = 0x0

.field static final EXP_LO_INDEXING:I

.field static final EXP_LO_INDEXING_DIV_SHIFT:I

.field static final EXP_LO_TAB_MID_INDEX:I

.field static final EXP_LO_TAB_SIZE:I

.field static final EXP_LO_TAB_SIZE_POT:I

.field static final EXP_OVERFLOW_LIMIT:D

.field static final EXP_UNDERFLOW_LIMIT:D

.field static final FM_USE_JDK_MATH:Z

.field static final FM_USE_POWTABS_FOR_ASIN:Z = false

.field static final FM_USE_REDEFINED_LOG:Z

.field static final FM_USE_REDEFINED_SQRT:Z

.field static final HYPOT_FACTOR:D

.field static final HYPOT_MAX_MAG:D

.field static final INV_LOG_10:D

.field static final LOG_2:D

.field static final LOG_BITS:I

.field static final LOG_DOUBLE_MAX_VALUE:D

.field static final LOG_TAB_SIZE:I

.field static final LOG_TWO_POW_27:D

.field static final MAX_DOUBLE_EXPONENT:I = 0x3ff

.field static final MAX_FLOAT_EXPONENT:I = 0x7f

.field static final MIN_DOUBLE_EXPONENT:I = -0x432

.field static final MIN_DOUBLE_NORMAL_EXPONENT:I = -0x3fe

.field static final MIN_FLOAT_NORMAL_EXPONENT:I = -0x7e

.field static final NORMALIZE_ANGLE_MAX_MEDIUM_DOUBLE_PIO2:D

.field static final ONE_DIV_F2:D = 0.5

.field static final ONE_DIV_F3:D = 0.16666666666666666

.field static final ONE_DIV_F4:D = 0.041666666666666664

.field static final PIO2_HI:D

.field static final PIO2_INV:D

.field static final PIO2_LO:D

.field private static final PIO2_TAB0:D

.field private static final PIO2_TAB1:D

.field private static final PIO2_TAB2:D

.field private static final PIO2_TAB3:D

.field private static final PIO2_TAB4:D

.field private static final PIO2_TAB5:D

.field static final PI_HI:D

.field static final PI_INV:D

.field static final PI_LO:D

.field public static final PI_SUP:D

.field private static final QUADRANT_BITS_0_MASK:J = -0x3000000000000001L

.field private static final QUADRANT_PLACE_BITS:J = 0x3000000000000000L

.field static final SFM_USE_JDK_MATH:Z

.field static final SFM_USE_POWTABS_FOR_ASIN:Z = false

.field static final SFM_USE_REDEFINED_LOG:Z

.field static final SFM_USE_REDEFINED_SQRT:Z

.field static final SIN_COS_DELTA_HI:D

.field static final SIN_COS_DELTA_LO:D

.field static final SIN_COS_INDEXER:D

.field static final SIN_COS_MAX_VALUE_FOR_INT_MODULO:D

.field static final SIN_COS_TABS_SIZE:I

.field private static final SQRT_2:D

.field static final SQRT_LO_BITS:I

.field static final SQRT_LO_TAB_SIZE:I

.field static final TANH_1_THRESHOLD:D = 19.061547465398498

.field static final TAN_DELTA_HI:D

.field static final TAN_DELTA_LO:D

.field static final TAN_INDEXER:D

.field static final TAN_MAX_VALUE_FOR_INT_MODULO:D

.field static final TAN_MAX_VALUE_FOR_TABS:D

.field static final TAN_TABS_SIZE:I

.field static final TAN_VIRTUAL_TABS_SIZE:I

.field static final TWOPI_HI:D

.field static final TWOPI_INV:D

.field static final TWOPI_LO:D

.field static final TWO_MATH_PI_IN_MINUS_PI_PI:D = -2.4492935982947064E-16

.field private static final TWO_OVER_PI_TAB:[D

.field static final TWO_POW_23_F:F

.field static final TWO_POW_24:D

.field static final TWO_POW_26:D

.field static final TWO_POW_27:D

.field static final TWO_POW_512:D

.field static final TWO_POW_52:D

.field static final TWO_POW_66:D

.field private static final TWO_POW_N24:D

.field static final TWO_POW_N26:D

.field static final TWO_POW_N27:D

.field static final TWO_POW_N28:D

.field static final TWO_POW_N512:D

.field static final TWO_POW_N55:D

.field static final USE_TWO_POW_TAB:Z = false

.field static final asinDer1DivF1PowTab:[D

.field static final asinDer1DivF1Tab:[D

.field static final asinDer2DivF2PowTab:[D

.field static final asinDer2DivF2Tab:[D

.field static final asinDer3DivF3PowTab:[D

.field static final asinDer3DivF3Tab:[D

.field static final asinDer4DivF4PowTab:[D

.field static final asinDer4DivF4Tab:[D

.field static final asinParamPowTab:[D

.field static final asinPowTab:[D

.field static final asinTab:[D

.field static final atanDer1DivF1Tab:[D

.field static final atanDer2DivF2Tab:[D

.field static final atanDer3DivF3Tab:[D

.field static final atanDer4DivF4Tab:[D

.field static final atanTab:[D

.field static final cbrtSlopeHiTab:[D

.field static final cbrtSlopeLoTab:[D

.field static final cbrtXCbrtHiTab:[D

.field static final cbrtXCbrtLoTab:[D

.field static final cosTab:[D

.field static final expHiTab:[D

.field static final expLoNegTab:[D

.field static final expLoPosTab:[D

.field static final logXInvTab:[D

.field static final logXLogTab:[D

.field static final logXTab:[D

.field static final sinTab:[D

.field static final sqrtSlopeHiTab:[D

.field static final sqrtSlopeLoTab:[D

.field static final sqrtXSqrtHiTab:[D

.field static final sqrtXSqrtLoTab:[D

.field static final tanDer1DivF1Tab:[D

.field static final tanDer2DivF2Tab:[D

.field static final tanDer3DivF3Tab:[D

.field static final tanDer4DivF4Tab:[D

.field static final tanTab:[D

.field static final twoPowTab:[D


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-string v0, "jafama.usejdk"

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_JDK_MATH:Z

    const-string v0, "jafama.fastlog"

    .line 95
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_REDEFINED_LOG:Z

    const-string v0, "jafama.fastsqrt"

    .line 97
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_REDEFINED_SQRT:Z

    const-string v0, "jafama.strict.usejdk"

    .line 109
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->SFM_USE_JDK_MATH:Z

    const-string v0, "jafama.strict.fastlog"

    const/4 v2, 0x1

    .line 115
    invoke-static {v0, v2}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->SFM_USE_REDEFINED_LOG:Z

    const-string v0, "jafama.strict.fastsqrt"

    .line 117
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lnet/jafama/AbstractFastMath;->SFM_USE_REDEFINED_SQRT:Z

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 168
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PI_SUP:D

    const/16 v0, 0x17

    .line 174
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    double-to-float v0, v3

    sput v0, Lnet/jafama/AbstractFastMath;->TWO_POW_23_F:F

    const/16 v0, 0x18

    .line 176
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_24:D

    const/16 v0, -0x18

    .line 177
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_N24:D

    const/16 v0, 0x1a

    .line 179
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    const/16 v0, -0x1a

    .line 180
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_N26:D

    const/16 v0, 0x1b

    .line 183
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_27:D

    const/16 v0, -0x1b

    .line 184
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_N27:D

    const/16 v0, -0x1c

    .line 186
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_N28:D

    const/16 v0, 0x34

    .line 188
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    const/16 v0, -0x37

    .line 190
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_N55:D

    const/16 v0, 0x42

    .line 192
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_66:D

    const/16 v7, 0x200

    .line 194
    invoke-static {v7}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_512:D

    const/16 v7, -0x200

    .line 195
    invoke-static {v7}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_N512:D

    const-wide/high16 v7, 0x10000000000000L

    .line 200
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    sput-wide v7, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 213
    invoke-static {v7, v8}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v9

    sput-wide v9, Lnet/jafama/AbstractFastMath;->SQRT_2:D

    .line 215
    invoke-static {v7, v8}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v9

    sput-wide v9, Lnet/jafama/AbstractFastMath;->LOG_2:D

    .line 216
    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->LOG_TWO_POW_27:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 217
    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->LOG_DOUBLE_MAX_VALUE:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 219
    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v3, v9, v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->INV_LOG_10:D

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->DOUBLE_BEFORE_60:D

    new-array v0, v0, [D

    .line 233
    fill-array-data v0, :array_44e

    sput-object v0, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    const-wide v3, 0x3ff921fb40000000L    # 1.570796251296997

    .line 250
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB0:D

    const-wide v3, 0x3e74442d00000000L    # 7.549789415861596E-8

    .line 251
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB1:D

    const-wide v3, 0x3cf8469880000000L    # 5.390302529957765E-15

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB2:D

    const-wide v3, 0x3b78cc5160000000L    # 3.282003415807913E-22

    .line 253
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB3:D

    const-wide v3, 0x39f01b8380000000L    # 1.270655753080676E-29

    .line 254
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB4:D

    const-wide v3, 0x387a252040000000L    # 1.2293330898111133E-36

    .line 255
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB5:D

    const-wide v3, 0x3fe45f306dc9c883L    # 0.6366197723675814

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_INV:D

    const-wide v5, 0x3ff921fb54400000L    # 1.5707963267341256

    .line 258
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sput-wide v5, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    const-wide v11, 0x3dd0b4611a626331L    # 6.077100506506192E-11

    .line 259
    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    sput-wide v11, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    div-double v13, v3, v7

    .line 260
    sput-wide v13, Lnet/jafama/AbstractFastMath;->PI_INV:D

    mul-double v13, v5, v7

    .line 261
    sput-wide v13, Lnet/jafama/AbstractFastMath;->PI_HI:D

    mul-double v13, v11, v7

    .line 262
    sput-wide v13, Lnet/jafama/AbstractFastMath;->PI_LO:D

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v13

    .line 263
    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWOPI_INV:D

    mul-double v3, v5, v13

    .line 264
    sput-wide v3, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    mul-double/2addr v13, v11

    .line 265
    sput-wide v13, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    const-wide/high16 v9, 0x4033000000000000L    # 19.0

    .line 288
    invoke-static {v7, v8, v9, v10}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v7, v9

    sput-wide v7, Lnet/jafama/AbstractFastMath;->NORMALIZE_ANGLE_MAX_MEDIUM_DOUBLE_PIO2:D

    const/16 v0, 0xb

    .line 304
    invoke-static {v0}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v7

    shl-int v7, v2, v7

    add-int/2addr v7, v2

    sput v7, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    add-int/lit8 v8, v7, -0x1

    int-to-double v0, v8

    div-double/2addr v3, v0

    .line 305
    sput-wide v3, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_HI:D

    add-int/lit8 v0, v7, -0x1

    int-to-double v0, v0

    div-double/2addr v13, v0

    .line 306
    sput-wide v13, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_LO:D

    add-double/2addr v3, v13

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v3, v0, v3

    .line 307
    sput-wide v3, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    .line 308
    new-array v0, v7, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->sinTab:[D

    .line 309
    new-array v0, v7, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->cosTab:[D

    const-wide v0, 0x414fffff80000000L    # 4194303.0

    div-double v3, v0, v3

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v3, v7

    .line 320
    sput-wide v3, Lnet/jafama/AbstractFastMath;->SIN_COS_MAX_VALUE_FOR_INT_MODULO:D

    const/16 v3, 0xc

    .line 335
    invoke-static {v3}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v4

    shl-int v4, v2, v4

    add-int/2addr v4, v2

    sput v4, Lnet/jafama/AbstractFastMath;->TAN_VIRTUAL_TABS_SIZE:I

    const-wide v13, 0x4053400000000000L    # 77.0

    .line 342
    invoke-static {v13, v14}, Ljava/lang/StrictMath;->toRadians(D)D

    move-result-wide v13

    sput-wide v13, Lnet/jafama/AbstractFastMath;->TAN_MAX_VALUE_FOR_TABS:D

    div-double/2addr v13, v9

    add-int/lit8 v9, v4, -0x1

    int-to-double v9, v9

    mul-double/2addr v13, v9

    double-to-int v9, v13

    add-int/2addr v9, v2

    .line 344
    sput v9, Lnet/jafama/AbstractFastMath;->TAN_TABS_SIZE:I

    add-int/lit8 v10, v4, -0x1

    int-to-double v13, v10

    div-double/2addr v5, v13

    .line 345
    sput-wide v5, Lnet/jafama/AbstractFastMath;->TAN_DELTA_HI:D

    sub-int/2addr v4, v2

    int-to-double v13, v4

    div-double/2addr v11, v13

    .line 346
    sput-wide v11, Lnet/jafama/AbstractFastMath;->TAN_DELTA_LO:D

    add-double/2addr v5, v11

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v4, v10, v5

    .line 347
    sput-wide v4, Lnet/jafama/AbstractFastMath;->TAN_INDEXER:D

    .line 348
    new-array v6, v9, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->tanTab:[D

    .line 349
    new-array v6, v9, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->tanDer1DivF1Tab:[D

    .line 350
    new-array v6, v9, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->tanDer2DivF2Tab:[D

    .line 351
    new-array v6, v9, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->tanDer3DivF3Tab:[D

    .line 352
    new-array v6, v9, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->tanDer4DivF4Tab:[D

    div-double/2addr v0, v4

    mul-double/2addr v0, v7

    .line 363
    sput-wide v0, Lnet/jafama/AbstractFastMath;->TAN_MAX_VALUE_FOR_INT_MODULO:D

    const-wide v0, 0x4052400000000000L    # 73.0

    .line 380
    invoke-static {v0, v1}, Ljava/lang/StrictMath;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ASIN_MAX_VALUE_FOR_TABS:D

    const/16 v4, 0xd

    .line 382
    invoke-static {v4}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v4

    shl-int v4, v2, v4

    add-int/2addr v4, v2

    sput v4, Lnet/jafama/AbstractFastMath;->ASIN_TABS_SIZE:I

    add-int/lit8 v5, v4, -0x1

    int-to-double v5, v5

    div-double/2addr v0, v5

    .line 383
    sput-wide v0, Lnet/jafama/AbstractFastMath;->ASIN_DELTA:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v9, v5, v0

    .line 384
    sput-wide v9, Lnet/jafama/AbstractFastMath;->ASIN_INDEXER:D

    .line 385
    new-array v0, v4, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->asinTab:[D

    .line 386
    new-array v0, v4, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->asinDer1DivF1Tab:[D

    .line 387
    new-array v0, v4, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->asinDer2DivF2Tab:[D

    .line 388
    new-array v0, v4, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->asinDer3DivF3Tab:[D

    .line 389
    new-array v0, v4, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->asinDer4DivF4Tab:[D

    const-wide v0, 0x4056266666666666L    # 88.6

    .line 391
    invoke-static {v0, v1}, Ljava/lang/StrictMath;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ASIN_MAX_VALUE_FOR_POWTABS:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v9, v4, v0

    .line 394
    sput-wide v9, Lnet/jafama/AbstractFastMath;->ASIN_POWTABS_ONE_DIV_MAX_VALUE:D

    const/4 v0, 0x0

    .line 395
    sput v0, Lnet/jafama/AbstractFastMath;->ASIN_POWTABS_SIZE:I

    rsub-int/lit8 v1, v2, 0x0

    .line 396
    sput v1, Lnet/jafama/AbstractFastMath;->ASIN_POWTABS_SIZE_MINUS_ONE:I

    new-array v1, v0, [D

    .line 397
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinParamPowTab:[D

    new-array v1, v0, [D

    .line 398
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinPowTab:[D

    new-array v1, v0, [D

    .line 399
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinDer1DivF1PowTab:[D

    new-array v1, v0, [D

    .line 400
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinDer2DivF2PowTab:[D

    new-array v1, v0, [D

    .line 401
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinDer3DivF3PowTab:[D

    new-array v1, v0, [D

    .line 402
    sput-object v1, Lnet/jafama/AbstractFastMath;->asinDer4DivF4PowTab:[D

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 404
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Lnet/jafama/AbstractFastMath;->ASIN_PIO2_HI:D

    const-wide v4, 0x3c91a62633145c07L    # 6.123233995736766E-17

    .line 405
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PIO2_LO:D

    const-wide v6, 0x3fc5555555555555L    # 0.16666666666666666

    .line 406
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS0:D

    const-wide v6, -0x402b29edfc149083L    # -0.3255658186224009

    .line 407
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS1:D

    const-wide v6, 0x3fc9c1550e884455L    # 0.20121253213486293

    .line 408
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS2:D

    const-wide v6, -0x405b7dd74a9770c5L    # -0.04005553450067941

    .line 409
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS3:D

    const-wide v6, 0x3f49efe07501b288L    # 7.915349942898145E-4

    .line 410
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS4:D

    const-wide v6, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    .line 411
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_PS5:D

    const-wide v6, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    .line 412
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_QS1:D

    const-wide v6, 0x40002ae59c598ac8L    # 2.0209457602335057

    .line 413
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_QS2:D

    const-wide v6, -0x4019f993e472fea7L    # -0.6882839716054533

    .line 414
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_QS3:D

    const-wide v6, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    .line 415
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_QS4:D

    const-wide v6, 0x4052800000000000L    # 74.0

    .line 429
    invoke-static {v6, v7}, Ljava/lang/StrictMath;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->tan(D)D

    move-result-wide v6

    sput-wide v6, Lnet/jafama/AbstractFastMath;->ATAN_MAX_VALUE_FOR_TABS:D

    .line 431
    invoke-static {v3}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v8

    shl-int v8, v2, v8

    add-int/2addr v8, v2

    sput v8, Lnet/jafama/AbstractFastMath;->ATAN_TABS_SIZE:I

    add-int/lit8 v9, v8, -0x1

    int-to-double v9, v9

    div-double/2addr v6, v9

    .line 432
    sput-wide v6, Lnet/jafama/AbstractFastMath;->ATAN_DELTA:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v6

    .line 433
    sput-wide v9, Lnet/jafama/AbstractFastMath;->ATAN_INDEXER:D

    .line 434
    new-array v6, v8, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->atanTab:[D

    .line 435
    new-array v6, v8, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->atanDer1DivF1Tab:[D

    .line 436
    new-array v6, v8, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->atanDer2DivF2Tab:[D

    .line 437
    new-array v6, v8, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->atanDer3DivF3Tab:[D

    .line 438
    new-array v6, v8, [D

    sput-object v6, Lnet/jafama/AbstractFastMath;->atanDer4DivF4Tab:[D

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_HI3:D

    .line 441
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_LO3:D

    const-wide v0, 0x3fd555555555550dL    # 0.3333333333333293

    .line 442
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT0:D

    const-wide v0, -0x403666666667143cL    # -0.19999999999876483

    .line 443
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT1:D

    const-wide v0, 0x3fc24924920083ffL    # 0.14285714272503466

    .line 444
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT2:D

    const-wide v0, -0x40438e3901dce98fL    # -0.11111110405462356

    .line 445
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT3:D

    const-wide v0, 0x3fb745cdc54c206eL    # 0.09090887133436507

    .line 446
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT4:D

    const-wide v0, -0x404c4f0d508b6593L    # -0.0769187620504483

    .line 447
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT5:D

    const-wide v0, 0x3fb10d66a0d03d51L    # 0.06661073137387531

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT6:D

    const-wide v0, -0x405221d2ad210266L    # -0.058335701337905735

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT7:D

    const-wide v0, 0x3fa97b4b24760debL    # 0.049768779946159324

    .line 450
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT8:D

    const-wide v0, -0x405d4bbbd39593d1L    # -0.036531572744216916

    .line 451
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT9:D

    const-wide v0, 0x3f90ad3ae322da11L    # 0.016285820115365782

    .line 452
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->ATAN_AT10:D

    const-wide v0, 0x40862e42fefa39efL    # 709.782712893384

    .line 481
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->EXP_OVERFLOW_LIMIT:D

    const-wide v4, -0x3f78b6ef2ad2cfafL    # -745.1332191019411

    .line 482
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    sput-wide v4, Lnet/jafama/AbstractFastMath;->EXP_UNDERFLOW_LIMIT:D

    const/16 v6, 0xb

    .line 485
    invoke-static {v6}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v6

    sput v6, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_SIZE_POT:I

    shl-int v7, v2, v6

    add-int/2addr v7, v2

    .line 486
    sput v7, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_SIZE:I

    add-int/lit8 v8, v7, -0x1

    .line 487
    div-int/lit8 v8, v8, 0x2

    sput v8, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_MID_INDEX:I

    .line 488
    div-int/2addr v8, v2

    sput v8, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING:I

    sub-int/2addr v6, v2

    const/4 v8, 0x0

    sub-int/2addr v6, v8

    .line 489
    sput v6, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING_DIV_SHIFT:I

    double-to-int v0, v0

    add-int/2addr v0, v2

    double-to-int v1, v4

    sub-int/2addr v0, v1

    .line 490
    new-array v0, v0, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->expHiTab:[D

    .line 491
    new-array v0, v7, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->expLoPosTab:[D

    .line 492
    new-array v0, v7, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->expLoNegTab:[D

    .line 498
    invoke-static {v3}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v0

    sput v0, Lnet/jafama/AbstractFastMath;->LOG_BITS:I

    shl-int v0, v2, v0

    .line 499
    sput v0, Lnet/jafama/AbstractFastMath;->LOG_TAB_SIZE:I

    .line 500
    new-array v1, v0, [D

    sput-object v1, Lnet/jafama/AbstractFastMath;->logXLogTab:[D

    .line 501
    new-array v1, v0, [D

    sput-object v1, Lnet/jafama/AbstractFastMath;->logXTab:[D

    .line 502
    new-array v0, v0, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->logXInvTab:[D

    const/4 v0, 0x0

    .line 508
    sput-object v0, Lnet/jafama/AbstractFastMath;->twoPowTab:[D

    .line 514
    invoke-static {v3}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v0

    sput v0, Lnet/jafama/AbstractFastMath;->SQRT_LO_BITS:I

    shl-int v0, v2, v0

    .line 515
    sput v0, Lnet/jafama/AbstractFastMath;->SQRT_LO_TAB_SIZE:I

    const/16 v1, 0x832

    new-array v4, v1, [D

    .line 516
    sput-object v4, Lnet/jafama/AbstractFastMath;->sqrtXSqrtHiTab:[D

    .line 517
    new-array v4, v0, [D

    sput-object v4, Lnet/jafama/AbstractFastMath;->sqrtXSqrtLoTab:[D

    new-array v4, v1, [D

    .line 518
    sput-object v4, Lnet/jafama/AbstractFastMath;->sqrtSlopeHiTab:[D

    .line 519
    new-array v0, v0, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->sqrtSlopeLoTab:[D

    .line 525
    invoke-static {v3}, Lnet/jafama/AbstractFastMath;->getTabSizePower(I)I

    move-result v0

    sput v0, Lnet/jafama/AbstractFastMath;->CBRT_LO_BITS:I

    shl-int v0, v2, v0

    .line 526
    sput v0, Lnet/jafama/AbstractFastMath;->CBRT_LO_TAB_SIZE:I

    new-array v2, v1, [D

    .line 534
    sput-object v2, Lnet/jafama/AbstractFastMath;->cbrtXCbrtHiTab:[D

    .line 535
    new-array v2, v0, [D

    sput-object v2, Lnet/jafama/AbstractFastMath;->cbrtXCbrtLoTab:[D

    new-array v1, v1, [D

    .line 536
    sput-object v1, Lnet/jafama/AbstractFastMath;->cbrtSlopeHiTab:[D

    .line 537
    new-array v0, v0, [D

    sput-object v0, Lnet/jafama/AbstractFastMath;->cbrtSlopeLoTab:[D

    const/16 v0, 0x1ff

    .line 555
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->HYPOT_MAX_MAG:D

    const/16 v0, 0x2ee

    .line 564
    invoke-static {v0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    .line 1438
    invoke-static {}, Lnet/jafama/AbstractFastMath;->init()V

    return-void

    nop

    :array_44e
    .array-data 8
        0x41645f3060000000L    # 1.0680707E7
        0x415b939100000000L    # 7228996.0
        0x413529fc00000000L    # 1387004.0
        0x4143abe880000000L    # 2578385.0
        0x416ea69ba0000000L    # 1.6069853E7
        0x41681b6c40000000L    # 1.2639074E7
        0x4162b32780000000L    # 9804092.0
        0x4150e41040000000L    # 4427841.0
        0x416fca2c60000000L    # 1.6666979E7
        0x41657bd760000000L    # 1.1263675E7
        0x4168ac36e0000000L    # 1.2935607E7
        0x4142371d00000000L    # 2387514.0
        0x4150937480000000L    # 4345298.0
        0x416c00c920000000L    # 1.4681673E7
        0x4147750480000000L    # 3074569.0
        0x416a324380000000L    # 1.3734428E7
        0x416fc3bd60000000L    # 1.6653803E7
        0x413cb12900000000L    # 1880361.0
        0x4164e7dd00000000L    # 1.0960616E7
        0x416046bea0000000L    # 8533493.0
        0x41475da200000000L    # 3062596.0
        0x41609d3380000000L    # 8710556.0
        0x415c09ad00000000L    # 7349940.0
        0x4157df9040000000L    # 6258241.0
        0x414cc8eb00000000L    # 3772886.0
        0x414cc1a980000000L    # 3769171.0
        0x414cfa4e00000000L    # 3798172.0
        0x41608bf160000000L    # 8675211.0
        0x4167bf2500000000L    # 1.2450088E7
        0x414d8ffc00000000L    # 3874808.0
        0x4162fffbc0000000L    # 9961438.0
        0x4116603c00000000L    # 366607.0
        0x416de5e220000000L    # 1.5675153E7
        0x41616b4140000000L    # 9132554.0
        0x415b47db40000000L    # 7151469.0
        0x414b3f6780000000L    # 3571407.0
        0x4143e58480000000L    # 2607881.0
        0x4166e9e8c0000000L    # 1.2013382E7
        0x414fb34f00000000L    # 4155038.0
        0x4157fa8b40000000L    # 6285869.0
        0x415d49ee80000000L    # 7677882.0
        0x4168fd7ca0000000L    # 1.3102053E7
        0x416e2f67a0000000L    # 1.5825725E7
        0x411ce7dc00000000L    # 473591.0
        0x41614a5240000000L    # 9065106.0
        0x416d4d7f60000000L    # 1.5363067E7
        0x4157ec47c0000000L    # 6271263.0
        0x4161aba100000000L    # 9264392.0
        0x415580cc00000000L    # 5636912.0
        0x4151bf1ec0000000L    # 4652155.0
        0x415aeafc00000000L    # 7056368.0
        0x4169f78400000000L    # 1.3614112E7
        0x41635e86c0000000L    # 1.0155062E7
        0x413da9e300000000L    # 1944035.0
        0x41622c2bc0000000L    # 9527646.0
        0x416cc36100000000L    # 1.50802E7
        0x4159666140000000L    # 6658437.0
        0x4157c52800000000L    # 6231200.0
        0x415a102340000000L    # 6832269.0
        0x416ffb1000000000L    # 1.6767104E7
        0x41535cc9c0000000L    # 5075751.0
        0x4148830300000000L    # 3212806.0
        0x413556ca00000000L    # 1398474.0
        0x415cea3240000000L    # 7579849.0
        0x4158389ec0000000L    # 6349435.0
        0x4168118d60000000L    # 1.2618859E7
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static atan2_ninf_yyy(D)D
    .registers 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_c

    const-wide p0, 0x4002d97c7f3321d2L    # 2.356194490192345

    return-wide p0

    :cond_c
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_18

    const-wide p0, -0x3ffd268380ccde2eL    # -2.356194490192345

    return-wide p0

    :cond_18
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_24

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    return-wide p0

    :cond_24
    cmpg-double p0, p0, v0

    if-gez p0, :cond_2e

    const-wide p0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    return-wide p0

    :cond_2e
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method static atan2_pinf_yyy(D)D
    .registers 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_c

    const-wide p0, 0x3fe921fb54442d18L    # 0.7853981633974483

    return-wide p0

    :cond_c
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_18

    const-wide p0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    return-wide p0

    :cond_18
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1f

    return-wide v0

    :cond_1f
    cmpg-double p0, p0, v0

    if-gez p0, :cond_26

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_26
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method static atan2_yyy_zeroOrNaN(DD)D
    .registers 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_34

    cmpl-double v2, p0, v0

    if-nez v2, :cond_22

    .line 627
    invoke-static {p2, p3}, Lnet/jafama/AbstractFastMath;->signFromBit_antiCyclic(D)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gez p2, :cond_21

    .line 629
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->signFromBit_antiCyclic(D)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, p2

    :cond_21
    return-wide p0

    :cond_22
    if-lez v2, :cond_2a

    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    return-wide p0

    :cond_2a
    cmpg-double p0, p0, v0

    if-gez p0, :cond_34

    const-wide p0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    return-wide p0

    :cond_34
    return-wide v3
.end method

.method static decodeQuadrant(J)I
    .registers 3

    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static decodeRemainder(J)D
    .registers 4

    const-wide v0, -0x3000000000000001L    # -2.3158417847463237E77

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    or-long/2addr p0, v0

    .line 690
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static encodeRemainderAndQuadrant(DI)J
    .registers 5

    .line 685
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, -0x3000000000000001L    # -2.3158417847463237E77

    and-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 2

    .line 1220
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1222
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method private static getTabSizePower(I)I
    .registers 2

    .line 1234
    sget-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_JDK_MATH:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lnet/jafama/AbstractFastMath;->SFM_USE_JDK_MATH:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_d
    return p0
.end method

.method static strictfp heavyRemainderPi(D)D
    .registers 4

    const/4 v0, 0x0

    .line 807
    invoke-static {p0, p1, v0}, Lnet/jafama/AbstractFastMath;->heavyRemainderPiO2(DZ)J

    move-result-wide p0

    .line 808
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeRemainder(J)D

    move-result-wide v0

    .line 809
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeQuadrant(J)I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_24

    const-wide/16 p0, 0x0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_1e

    .line 813
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    add-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    add-double/2addr v0, p0

    return-wide v0

    .line 815
    :cond_1e
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    sub-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    sub-double/2addr v0, p0

    :cond_24
    return-wide v0
.end method

.method static strictfp heavyRemainderPiO2(DZ)J
    .registers 56

    .line 861
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    shr-long v3, v0, v2

    const-wide/16 v5, 0x7ff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x416

    sub-long/2addr v3, v5

    shl-long v5, v3, v2

    sub-long/2addr v0, v5

    .line 863
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v5, v2

    sub-double/2addr v0, v5

    .line 866
    sget-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_24:D

    mul-double/2addr v0, v7

    double-to-int v2, v0

    int-to-double v9, v2

    sub-double/2addr v0, v9

    mul-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    long-to-int v2, v3

    const-wide/16 v3, 0x0

    cmpl-double v11, v0, v3

    const/4 v14, 0x1

    if-nez v11, :cond_31

    cmpl-double v11, v9, v3

    if-nez v11, :cond_2f

    move v11, v14

    goto :goto_32

    :cond_2f
    const/4 v11, 0x2

    goto :goto_32

    :cond_31
    const/4 v11, 0x3

    :goto_32
    sub-int/2addr v11, v14

    add-int/lit8 v15, v2, -0x3

    .line 886
    div-int/lit8 v15, v15, 0x18

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v16, v15, 0x1

    mul-int/lit8 v16, v16, 0x18

    sub-int v2, v2, v16

    sub-int v12, v15, v11

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v13, -0x3

    const/4 v14, -0x4

    if-nez v11, :cond_93

    if-lt v12, v14, :cond_53

    .line 894
    sget-object v14, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v19, v12, 0x4

    aget-wide v19, v14, v19

    goto :goto_55

    :cond_53
    const-wide/16 v19, 0x0

    :goto_55
    if-lt v12, v13, :cond_5e

    .line 895
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v14, v12, 0x3

    aget-wide v13, v13, v14

    goto :goto_60

    :cond_5e
    const-wide/16 v13, 0x0

    :goto_60
    if-lt v12, v4, :cond_69

    .line 896
    sget-object v4, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v21, v12, 0x2

    aget-wide v21, v4, v21

    goto :goto_6b

    :cond_69
    const-wide/16 v21, 0x0

    :goto_6b
    if-lt v12, v3, :cond_74

    .line 897
    sget-object v3, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v4, v12, 0x1

    aget-wide v3, v3, v4

    goto :goto_76

    :cond_74
    const-wide/16 v3, 0x0

    :goto_76
    if-ltz v12, :cond_7d

    .line 898
    sget-object v23, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    aget-wide v23, v23, v12

    goto :goto_7f

    :cond_7d
    const-wide/16 v23, 0x0

    :goto_7f
    mul-double v23, v23, v5

    mul-double/2addr v3, v5

    mul-double v21, v21, v5

    mul-double/2addr v13, v5

    mul-double v19, v19, v5

    move-wide/from16 v26, v23

    move-wide/from16 v24, v13

    move/from16 v23, v15

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_199

    :cond_93
    const/4 v3, -0x5

    const/4 v4, 0x1

    if-ne v11, v4, :cond_10a

    if-lt v12, v3, :cond_a0

    .line 907
    sget-object v3, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v4, v12, 0x5

    aget-wide v3, v3, v4

    goto :goto_a2

    :cond_a0
    const-wide/16 v3, 0x0

    :goto_a2
    if-lt v12, v14, :cond_ab

    .line 908
    sget-object v14, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v21, v12, 0x4

    aget-wide v21, v14, v21

    goto :goto_ad

    :cond_ab
    const-wide/16 v21, 0x0

    :goto_ad
    if-lt v12, v13, :cond_b8

    .line 909
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v14, v12, 0x3

    aget-wide v13, v13, v14

    move/from16 v23, v15

    goto :goto_bc

    :cond_b8
    move/from16 v23, v15

    const-wide/16 v13, 0x0

    :goto_bc
    const/4 v15, -0x2

    if-lt v12, v15, :cond_c7

    .line 910
    sget-object v15, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v20, v12, 0x2

    aget-wide v24, v15, v20

    const/4 v15, -0x1

    goto :goto_ca

    :cond_c7
    const/4 v15, -0x1

    const-wide/16 v24, 0x0

    :goto_ca
    if-lt v12, v15, :cond_d3

    .line 911
    sget-object v15, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v15, v19

    goto :goto_d5

    :cond_d3
    const-wide/16 v19, 0x0

    :goto_d5
    if-ltz v12, :cond_dc

    .line 912
    sget-object v15, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    aget-wide v26, v15, v12

    goto :goto_de

    :cond_dc
    const-wide/16 v26, 0x0

    :goto_de
    mul-double v28, v5, v19

    mul-double v26, v26, v9

    add-double v26, v28, v26

    mul-double v28, v5, v24

    mul-double v19, v19, v9

    add-double v19, v28, v19

    mul-double v28, v5, v13

    mul-double v24, v24, v9

    add-double v24, v28, v24

    mul-double v28, v5, v21

    mul-double/2addr v13, v9

    add-double v13, v28, v13

    mul-double v28, v5, v3

    mul-double v21, v21, v9

    add-double v21, v28, v21

    move-wide/from16 v51, v13

    const-wide/16 v14, 0x0

    move-wide v12, v3

    move-wide/from16 v3, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v24

    move-wide/from16 v24, v51

    goto/16 :goto_199

    :cond_10a
    move/from16 v23, v15

    const/4 v4, -0x6

    if-lt v12, v4, :cond_116

    .line 920
    sget-object v4, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v15, v12, 0x6

    aget-wide v21, v4, v15

    goto :goto_118

    :cond_116
    const-wide/16 v21, 0x0

    :goto_118
    if-lt v12, v3, :cond_121

    .line 921
    sget-object v3, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v4, v12, 0x5

    aget-wide v3, v3, v4

    goto :goto_123

    :cond_121
    const-wide/16 v3, 0x0

    :goto_123
    if-lt v12, v14, :cond_12c

    .line 922
    sget-object v14, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v15, v12, 0x4

    aget-wide v14, v14, v15

    goto :goto_12e

    :cond_12c
    const-wide/16 v14, 0x0

    :goto_12e
    if-lt v12, v13, :cond_138

    .line 923
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v24, v12, 0x3

    aget-wide v24, v13, v24

    const/4 v13, -0x2

    goto :goto_13b

    :cond_138
    const/4 v13, -0x2

    const-wide/16 v24, 0x0

    :goto_13b
    if-lt v12, v13, :cond_145

    .line 924
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v20, v12, 0x2

    aget-wide v26, v13, v20

    const/4 v13, -0x1

    goto :goto_148

    :cond_145
    const/4 v13, -0x1

    const-wide/16 v26, 0x0

    :goto_148
    if-lt v12, v13, :cond_151

    .line 925
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v13, v19

    goto :goto_153

    :cond_151
    const-wide/16 v19, 0x0

    :goto_153
    if-ltz v12, :cond_15a

    .line 926
    sget-object v13, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    aget-wide v12, v13, v12

    goto :goto_15c

    :cond_15a
    const-wide/16 v12, 0x0

    :goto_15c
    mul-double v28, v5, v26

    mul-double v30, v9, v19

    add-double v28, v28, v30

    mul-double/2addr v12, v0

    add-double v12, v28, v12

    mul-double v28, v5, v24

    mul-double v30, v9, v26

    add-double v28, v28, v30

    mul-double v19, v19, v0

    add-double v19, v28, v19

    mul-double v28, v5, v14

    mul-double v30, v9, v24

    add-double v28, v28, v30

    mul-double v26, v26, v0

    add-double v26, v28, v26

    mul-double v28, v5, v3

    mul-double v30, v9, v14

    add-double v28, v28, v30

    mul-double v24, v24, v0

    add-double v24, v28, v24

    mul-double v28, v5, v21

    mul-double v30, v9, v3

    add-double v28, v28, v30

    mul-double/2addr v14, v0

    add-double v14, v28, v14

    move-wide/from16 v51, v21

    move-wide/from16 v21, v26

    move-wide/from16 v26, v12

    move-wide v12, v3

    move-wide/from16 v3, v19

    move-wide/from16 v19, v14

    move-wide/from16 v14, v51

    .line 935
    :goto_199
    invoke-static {v2}, Lnet/jafama/AbstractFastMath;->twoPowNormal(I)D

    move-result-wide v28

    .line 944
    sget-wide v30, Lnet/jafama/AbstractFastMath;->TWO_POW_N24:D

    move-wide/from16 v32, v0

    mul-double v0, v30, v19

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double v34, v7, v0

    move-wide/from16 v36, v14

    sub-double v14, v19, v34

    double-to-int v14, v14

    add-double v0, v24, v0

    move-wide/from16 v34, v9

    mul-double v9, v30, v0

    double-to-int v9, v9

    int-to-double v9, v9

    mul-double v38, v7, v9

    sub-double v0, v0, v38

    double-to-int v0, v0

    add-double v9, v21, v9

    move-wide/from16 v38, v12

    mul-double v12, v30, v9

    double-to-int v1, v12

    int-to-double v12, v1

    mul-double v40, v7, v12

    sub-double v9, v9, v40

    double-to-int v1, v9

    add-double/2addr v12, v3

    mul-double v9, v30, v12

    double-to-int v9, v9

    int-to-double v9, v9

    mul-double v40, v7, v9

    sub-double v12, v12, v40

    double-to-int v12, v12

    add-double v9, v26, v9

    mul-double v9, v9, v28

    const-wide/high16 v40, 0x4020000000000000L    # 8.0

    rem-double v9, v9, v40

    double-to-int v13, v9

    move-wide/from16 v42, v3

    int-to-double v3, v13

    sub-double/2addr v9, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_1ef

    rsub-int/lit8 v15, v2, 0x18

    shr-int v44, v12, v15

    add-int v13, v13, v44

    shl-int v15, v44, v15

    sub-int/2addr v12, v15

    rsub-int/lit8 v15, v2, 0x17

    shr-int v15, v12, v15

    goto :goto_1fb

    :cond_1ef
    if-nez v2, :cond_1f4

    shr-int/lit8 v15, v12, 0x17

    goto :goto_1fb

    :cond_1f4
    cmpl-double v15, v9, v3

    if-ltz v15, :cond_1fa

    const/4 v15, 0x2

    goto :goto_1fb

    :cond_1fa
    const/4 v15, 0x0

    :goto_1fb
    const v44, 0x3fffff

    const v45, 0x7fffff

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const/high16 v48, 0x1000000

    const v49, 0xffffff

    if-lez v15, :cond_242

    add-int/lit8 v13, v13, 0x1

    if-eqz v14, :cond_219

    sub-int v14, v48, v14

    sub-int v0, v49, v0

    :goto_212
    sub-int v1, v49, v1

    :goto_214
    sub-int v12, v49, v12

    :goto_216
    const/16 v50, 0x1

    goto :goto_22a

    :cond_219
    if-eqz v0, :cond_21e

    sub-int v0, v48, v0

    goto :goto_212

    :cond_21e
    if-eqz v1, :cond_223

    sub-int v1, v48, v1

    goto :goto_214

    :cond_223
    if-eqz v12, :cond_228

    sub-int v12, v48, v12

    goto :goto_216

    :cond_228
    const/16 v50, 0x0

    :goto_22a
    if-lez v2, :cond_232

    const/4 v3, 0x1

    if-ne v2, v3, :cond_234

    and-int v3, v12, v45

    move v12, v3

    :cond_232
    const/4 v3, 0x2

    goto :goto_23a

    :cond_234
    const/4 v3, 0x2

    if-ne v2, v3, :cond_23a

    and-int v4, v12, v44

    move v12, v4

    :cond_23a
    :goto_23a
    if-ne v15, v3, :cond_242

    sub-double v9, v46, v9

    if-eqz v50, :cond_242

    sub-double v9, v9, v28

    :cond_242
    const-wide/16 v3, 0x0

    cmpl-double v50, v9, v3

    const/4 v4, 0x5

    if-nez v50, :cond_341

    if-nez v12, :cond_250

    .line 1019
    invoke-static/range {p0 .. p2}, Lnet/jafama/AbstractFastMath;->jdkRemainderPiO2(DZ)J

    move-result-wide v0

    return-wide v0

    :cond_250
    if-nez v11, :cond_25a

    .line 1022
    sget-object v0, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v15, v23, 0x5

    aget-wide v0, v0, v15

    mul-double/2addr v5, v0

    goto :goto_275

    :cond_25a
    const/4 v0, 0x1

    if-ne v11, v0, :cond_268

    .line 1025
    sget-object v0, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v15, v23, 0x5

    aget-wide v0, v0, v15

    mul-double/2addr v5, v0

    mul-double v9, v34, v38

    add-double/2addr v5, v9

    goto :goto_275

    .line 1028
    :cond_268
    sget-object v0, Lnet/jafama/AbstractFastMath;->TWO_OVER_PI_TAB:[D

    add-int/lit8 v15, v23, 0x5

    aget-wide v0, v0, v15

    mul-double/2addr v5, v0

    mul-double v9, v34, v36

    add-double/2addr v5, v9

    mul-double v0, v32, v38

    add-double/2addr v5, v0

    :goto_275
    mul-double v0, v30, v5

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double v9, v7, v0

    sub-double/2addr v5, v9

    double-to-int v5, v5

    add-double v19, v19, v0

    mul-double v0, v30, v19

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double v9, v7, v0

    sub-double v9, v19, v9

    double-to-int v6, v9

    add-double v24, v24, v0

    mul-double v0, v30, v24

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double v9, v7, v0

    sub-double v9, v24, v9

    double-to-int v9, v9

    add-double v21, v21, v0

    mul-double v0, v30, v21

    double-to-int v0, v0

    int-to-double v0, v0

    mul-double v10, v7, v0

    sub-double v10, v21, v10

    double-to-int v10, v10

    add-double v0, v42, v0

    mul-double v11, v30, v0

    double-to-int v11, v11

    int-to-double v11, v11

    mul-double v13, v7, v11

    sub-double/2addr v0, v13

    double-to-int v0, v0

    add-double v26, v26, v11

    mul-double v26, v26, v28

    rem-double v11, v26, v40

    double-to-int v1, v11

    int-to-double v13, v1

    sub-double/2addr v11, v13

    if-lez v2, :cond_2c1

    rsub-int/lit8 v13, v2, 0x18

    shr-int v14, v0, v13

    add-int/2addr v1, v14

    shl-int v13, v14, v13

    sub-int/2addr v0, v13

    rsub-int/lit8 v13, v2, 0x17

    shr-int v13, v0, v13

    :goto_2bf
    move v15, v13

    goto :goto_2cf

    :cond_2c1
    if-nez v2, :cond_2c6

    shr-int/lit8 v13, v0, 0x17

    goto :goto_2bf

    :cond_2c6
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_2ce

    const/4 v15, 0x2

    goto :goto_2cf

    :cond_2ce
    const/4 v15, 0x0

    :goto_2cf
    if-lez v15, :cond_31f

    add-int/lit8 v1, v1, 0x1

    if-eqz v5, :cond_2e5

    sub-int v5, v48, v5

    sub-int v6, v49, v6

    :goto_2d9
    sub-int v9, v49, v9

    :goto_2db
    sub-int v10, v49, v10

    :goto_2dd
    sub-int v0, v49, v0

    :goto_2df
    move v13, v10

    move v10, v9

    move v9, v6

    move v6, v5

    const/4 v5, 0x1

    goto :goto_2fe

    :cond_2e5
    if-eqz v6, :cond_2ea

    sub-int v6, v48, v6

    goto :goto_2d9

    :cond_2ea
    if-eqz v9, :cond_2ef

    sub-int v9, v48, v9

    goto :goto_2db

    :cond_2ef
    if-eqz v10, :cond_2f4

    sub-int v10, v48, v10

    goto :goto_2dd

    :cond_2f4
    if-eqz v0, :cond_2f9

    sub-int v0, v48, v0

    goto :goto_2df

    :cond_2f9
    move v13, v10

    move v10, v9

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_2fe
    if-lez v2, :cond_305

    const/4 v14, 0x1

    if-ne v2, v14, :cond_307

    and-int v0, v0, v45

    :cond_305
    const/4 v14, 0x2

    goto :goto_30c

    :cond_307
    const/4 v14, 0x2

    if-ne v2, v14, :cond_30c

    and-int v0, v0, v44

    :cond_30c
    :goto_30c
    if-ne v15, v14, :cond_316

    sub-double v46, v46, v11

    if-eqz v5, :cond_314

    sub-double v46, v46, v28

    :cond_314
    move v14, v6

    goto :goto_319

    :cond_316
    move v14, v6

    move-wide/from16 v46, v11

    :goto_319
    move v12, v13

    const-wide/16 v5, 0x0

    move v13, v1

    move v1, v10

    goto :goto_328

    :cond_31f
    move v13, v1

    move v14, v5

    move v1, v9

    move-wide/from16 v46, v11

    move v9, v6

    move v12, v10

    const-wide/16 v5, 0x0

    :goto_328
    cmpl-double v2, v46, v5

    if-nez v2, :cond_338

    if-nez v0, :cond_333

    .line 1120
    invoke-static/range {p0 .. p2}, Lnet/jafama/AbstractFastMath;->jdkRemainderPiO2(DZ)J

    move-result-wide v0

    return-wide v0

    :cond_333
    mul-double v28, v28, v30

    const/4 v2, 0x1

    const/4 v10, 0x4

    goto :goto_33a

    :cond_338
    move v10, v4

    const/4 v2, 0x1

    :goto_33a
    move/from16 v51, v1

    move v1, v0

    move v0, v9

    move/from16 v9, v51

    goto :goto_349

    :cond_341
    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    move-wide/from16 v46, v9

    const/4 v10, 0x4

    move v9, v1

    const/4 v1, 0x0

    :goto_349
    cmpl-double v11, v46, v5

    if-eqz v11, :cond_373

    div-double v5, v46, v28

    cmpl-double v11, v5, v7

    if-ltz v11, :cond_36a

    mul-double v2, v30, v5

    double-to-int v1, v2

    int-to-double v1, v1

    const/4 v3, 0x4

    if-ne v10, v3, :cond_365

    mul-double v19, v7, v1

    sub-double v5, v5, v19

    double-to-int v3, v5

    add-int/lit8 v10, v10, 0x1

    mul-double v28, v28, v7

    double-to-int v1, v1

    goto :goto_375

    .line 1154
    :cond_365
    invoke-static/range {p0 .. p2}, Lnet/jafama/AbstractFastMath;->jdkRemainderPiO2(DZ)J

    move-result-wide v0

    return-wide v0

    :cond_36a
    const/4 v3, 0x4

    if-ne v10, v3, :cond_36f

    double-to-int v1, v5

    goto :goto_373

    :cond_36f
    double-to-int v2, v5

    move v3, v1

    move v1, v2

    goto :goto_375

    :cond_373
    :goto_373
    move v3, v1

    const/4 v1, 0x0

    :goto_375
    if-ne v10, v4, :cond_37d

    int-to-double v1, v1

    mul-double v1, v1, v28

    mul-double v28, v28, v30

    goto :goto_37f

    :cond_37d
    const-wide/16 v1, 0x0

    :goto_37f
    int-to-double v3, v3

    mul-double v3, v3, v28

    mul-double v28, v28, v30

    int-to-double v5, v12

    mul-double v5, v5, v28

    mul-double v28, v28, v30

    int-to-double v7, v9

    mul-double v7, v7, v28

    mul-double v28, v28, v30

    int-to-double v9, v0

    mul-double v9, v9, v28

    mul-double v28, v28, v30

    int-to-double v11, v14

    mul-double v28, v28, v11

    .line 1188
    sget-wide v11, Lnet/jafama/AbstractFastMath;->PIO2_TAB0:D

    mul-double v17, v11, v1

    mul-double v19, v11, v3

    .line 1189
    sget-wide v21, Lnet/jafama/AbstractFastMath;->PIO2_TAB1:D

    mul-double v23, v21, v1

    add-double v19, v19, v23

    add-double v17, v17, v19

    mul-double v19, v11, v5

    mul-double v23, v21, v3

    add-double v19, v19, v23

    .line 1190
    sget-wide v23, Lnet/jafama/AbstractFastMath;->PIO2_TAB2:D

    mul-double v25, v23, v1

    add-double v19, v19, v25

    add-double v17, v17, v19

    mul-double v19, v11, v7

    mul-double v25, v21, v5

    add-double v19, v19, v25

    mul-double v25, v23, v3

    add-double v19, v19, v25

    .line 1191
    sget-wide v25, Lnet/jafama/AbstractFastMath;->PIO2_TAB3:D

    mul-double v30, v25, v1

    add-double v19, v19, v30

    add-double v17, v17, v19

    mul-double v19, v11, v9

    mul-double v30, v21, v7

    add-double v19, v19, v30

    mul-double v30, v23, v5

    add-double v19, v19, v30

    mul-double v30, v25, v3

    add-double v19, v19, v30

    .line 1192
    sget-wide v30, Lnet/jafama/AbstractFastMath;->PIO2_TAB4:D

    mul-double v32, v30, v1

    add-double v19, v19, v32

    add-double v17, v17, v19

    mul-double v11, v11, v28

    mul-double v21, v21, v9

    add-double v11, v11, v21

    mul-double v23, v23, v7

    add-double v11, v11, v23

    mul-double v25, v25, v5

    add-double v11, v11, v25

    mul-double v30, v30, v3

    add-double v11, v11, v30

    .line 1193
    sget-wide v3, Lnet/jafama/AbstractFastMath;->PIO2_TAB5:D

    mul-double/2addr v3, v1

    add-double/2addr v11, v3

    add-double v0, v17, v11

    if-eqz v15, :cond_3f6

    const/4 v14, 0x1

    goto :goto_3f7

    :cond_3f6
    const/4 v14, 0x0

    :goto_3f7
    xor-int v2, v14, p2

    if-eqz v2, :cond_3fc

    neg-double v0, v0

    :cond_3fc
    const/4 v2, 0x3

    and-int/2addr v2, v13

    .line 1199
    invoke-static {v0, v1, v2}, Lnet/jafama/AbstractFastMath;->encodeRemainderAndQuadrant(DI)J

    move-result-wide v0

    return-wide v0
.end method

.method static strictfp heavyRemainderTwoPi(D)D
    .registers 4

    const/4 v0, 0x0

    .line 784
    invoke-static {p0, p1, v0}, Lnet/jafama/AbstractFastMath;->heavyRemainderPiO2(DZ)J

    move-result-wide p0

    .line 785
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeRemainder(J)D

    move-result-wide v0

    .line 786
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeQuadrant(J)I

    move-result p0

    if-nez p0, :cond_10

    return-wide v0

    :cond_10
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    .line 790
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    add-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    add-double/2addr v0, p0

    return-wide v0

    :cond_1a
    const/4 p1, 0x2

    if-ne p0, p1, :cond_31

    const-wide/16 p0, 0x0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2a

    .line 793
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PI_LO:D

    add-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PI_HI:D

    add-double/2addr v0, p0

    return-wide v0

    .line 795
    :cond_2a
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PI_LO:D

    sub-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PI_HI:D

    sub-double/2addr v0, p0

    return-wide v0

    .line 798
    :cond_31
    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    sub-double/2addr v0, p0

    sget-wide p0, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method static hypot_NaN(DD)D
    .registers 6

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_e

    cmpl-double p0, p2, v0

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_e
    :goto_e
    return-wide v0
.end method

.method static hypot_NaN(DDD)D
    .registers 8

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_12

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_12

    cmpl-double p0, p4, v0

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_12
    :goto_12
    return-wide v0
.end method

.method private static strictfp init()V
    .registers 28

    .line 1253
    sget v0, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v0, 0x2

    .line 1255
    div-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x3

    .line 1256
    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    move v6, v5

    .line 1257
    :goto_10
    sget v7, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    if-lt v6, v7, :cond_229

    move v0, v5

    .line 1284
    :goto_15
    sget v2, Lnet/jafama/AbstractFastMath;->TAN_TABS_SIZE:I

    const-wide v3, 0x3fa5555555555555L    # 0.041666666666666664

    const-wide v6, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-lt v0, v2, :cond_1df

    move v0, v5

    .line 1305
    :goto_2a
    sget v2, Lnet/jafama/AbstractFastMath;->ASIN_TABS_SIZE:I

    if-lt v0, v2, :cond_191

    move v0, v5

    .line 1342
    :goto_2f
    sget v2, Lnet/jafama/AbstractFastMath;->ATAN_TABS_SIZE:I

    if-lt v0, v2, :cond_146

    .line 1360
    sget-wide v2, Lnet/jafama/AbstractFastMath;->EXP_UNDERFLOW_LIMIT:D

    double-to-int v0, v2

    :goto_36
    sget-wide v2, Lnet/jafama/AbstractFastMath;->EXP_OVERFLOW_LIMIT:D

    double-to-int v2, v2

    if-le v0, v2, :cond_133

    move v0, v5

    .line 1363
    :goto_3c
    sget v2, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_SIZE:I

    if-lt v0, v2, :cond_114

    move v0, v5

    .line 1376
    :goto_41
    sget v2, Lnet/jafama/AbstractFastMath;->LOG_TAB_SIZE:I

    if-lt v0, v2, :cond_f7

    const/16 v3, -0x432

    move v0, v3

    :goto_48
    const/16 v2, 0x3ff

    if-le v0, v2, :cond_de

    .line 1403
    sget-object v0, Lnet/jafama/AbstractFastMath;->sqrtXSqrtLoTab:[D

    aput-wide v12, v0, v5

    .line 1404
    sget-object v0, Lnet/jafama/AbstractFastMath;->sqrtSlopeLoTab:[D

    aput-wide v12, v0, v5

    .line 1405
    sget v0, Lnet/jafama/AbstractFastMath;->SQRT_LO_BITS:I

    const-wide v6, 0xfffffffffffffL

    shr-long v14, v6, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    or-long v14, v14, v16

    move v0, v1

    .line 1406
    :goto_62
    sget v4, Lnet/jafama/AbstractFastMath;->SQRT_LO_TAB_SIZE:I

    if-lt v0, v4, :cond_bd

    :goto_66
    if-le v3, v2, :cond_9a

    .line 1422
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtXCbrtLoTab:[D

    aput-wide v12, v0, v5

    .line 1423
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtSlopeLoTab:[D

    aput-wide v12, v0, v5

    .line 1424
    sget v0, Lnet/jafama/AbstractFastMath;->CBRT_LO_BITS:I

    shr-long v2, v6, v0

    or-long v14, v2, v16

    .line 1425
    :goto_76
    sget v0, Lnet/jafama/AbstractFastMath;->CBRT_LO_TAB_SIZE:I

    if-lt v1, v0, :cond_7b

    return-void

    :cond_7b
    add-int/lit8 v0, v1, -0x1

    int-to-long v2, v0

    .line 1426
    sget v0, Lnet/jafama/AbstractFastMath;->CBRT_LO_BITS:I

    rsub-int/lit8 v0, v0, 0x34

    shl-long/2addr v2, v0

    or-long/2addr v2, v14

    .line 1427
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->cbrt(D)D

    move-result-wide v2

    .line 1428
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtXCbrtLoTab:[D

    aput-wide v2, v0, v1

    .line 1429
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtSlopeLoTab:[D

    mul-double/2addr v2, v2

    div-double v2, v12, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_9a
    int-to-double v14, v3

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v14, v14, v18

    .line 1418
    invoke-static {v10, v11, v14, v15}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v14

    .line 1419
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtXCbrtHiTab:[D

    add-int/lit16 v4, v3, 0x432

    mul-double v18, v14, v8

    aput-wide v18, v0, v4

    .line 1420
    sget-object v0, Lnet/jafama/AbstractFastMath;->cbrtSlopeHiTab:[D

    const-wide v18, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v14, v14

    div-double v18, v18, v14

    aput-wide v18, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_bd
    add-int/lit8 v4, v0, -0x1

    int-to-long v1, v4

    .line 1407
    sget v4, Lnet/jafama/AbstractFastMath;->SQRT_LO_BITS:I

    rsub-int/lit8 v4, v4, 0x34

    shl-long/2addr v1, v4

    or-long/2addr v1, v14

    .line 1408
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v1

    .line 1409
    sget-object v4, Lnet/jafama/AbstractFastMath;->sqrtXSqrtLoTab:[D

    aput-wide v1, v4, v0

    .line 1410
    sget-object v4, Lnet/jafama/AbstractFastMath;->sqrtSlopeLoTab:[D

    div-double v1, v12, v1

    aput-wide v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    const/16 v2, 0x3ff

    goto :goto_62

    :cond_de
    int-to-double v1, v0

    mul-double/2addr v1, v8

    .line 1399
    invoke-static {v10, v11, v1, v2}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v1

    .line 1400
    sget-object v4, Lnet/jafama/AbstractFastMath;->sqrtXSqrtHiTab:[D

    add-int/lit16 v6, v0, 0x432

    mul-double v14, v1, v8

    aput-wide v14, v4, v6

    .line 1401
    sget-object v4, Lnet/jafama/AbstractFastMath;->sqrtSlopeHiTab:[D

    div-double v1, v12, v1

    aput-wide v1, v4, v6

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_48

    :cond_f7
    int-to-double v3, v0

    int-to-double v1, v2

    div-double v1, v12, v1

    mul-double/2addr v3, v1

    add-double/2addr v3, v12

    .line 1379
    sget-object v1, Lnet/jafama/AbstractFastMath;->logXLogTab:[D

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 1380
    sget-object v1, Lnet/jafama/AbstractFastMath;->logXTab:[D

    aput-wide v3, v1, v0

    .line 1381
    sget-object v1, Lnet/jafama/AbstractFastMath;->logXInvTab:[D

    div-double v2, v12, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_41

    :cond_114
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    int-to-double v3, v0

    .line 1365
    sget v6, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING:I

    int-to-double v6, v6

    div-double/2addr v3, v6

    add-double/2addr v3, v1

    .line 1367
    sget-object v1, Lnet/jafama/AbstractFastMath;->expLoPosTab:[D

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->exp(D)D

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 1369
    sget-object v1, Lnet/jafama/AbstractFastMath;->expLoNegTab:[D

    neg-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->expm1(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_3c

    .line 1361
    :cond_133
    sget-object v1, Lnet/jafama/AbstractFastMath;->expHiTab:[D

    sget-wide v2, Lnet/jafama/AbstractFastMath;->EXP_UNDERFLOW_LIMIT:D

    double-to-int v2, v2

    sub-int v2, v0, v2

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->exp(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_36

    :cond_146
    int-to-double v1, v0

    .line 1344
    sget-wide v14, Lnet/jafama/AbstractFastMath;->ATAN_DELTA:D

    mul-double/2addr v1, v14

    mul-double v14, v1, v1

    add-double v16, v14, v12

    div-double v16, v12, v16

    mul-double v20, v16, v16

    mul-double v22, v20, v16

    mul-double v24, v20, v20

    .line 1349
    sget-object v18, Lnet/jafama/AbstractFastMath;->atanTab:[D

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v26

    aput-wide v26, v18, v0

    .line 1350
    sget-object v18, Lnet/jafama/AbstractFastMath;->atanDer1DivF1Tab:[D

    aput-wide v16, v18, v0

    .line 1351
    sget-object v16, Lnet/jafama/AbstractFastMath;->atanDer2DivF2Tab:[D

    const-wide/high16 v17, -0x4000000000000000L    # -2.0

    mul-double v26, v1, v17

    mul-double v26, v26, v20

    mul-double v26, v26, v8

    aput-wide v26, v16, v0

    .line 1352
    sget-object v16, Lnet/jafama/AbstractFastMath;->atanDer3DivF3Tab:[D

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    mul-double v20, v20, v1

    mul-double v20, v20, v1

    add-double v20, v20, v17

    mul-double v20, v20, v22

    mul-double v20, v20, v6

    aput-wide v20, v16, v0

    .line 1353
    sget-object v16, Lnet/jafama/AbstractFastMath;->atanDer4DivF4Tab:[D

    const-wide/high16 v17, 0x4038000000000000L    # 24.0

    mul-double v1, v1, v17

    sub-double v14, v12, v14

    mul-double/2addr v1, v14

    mul-double v1, v1, v24

    mul-double/2addr v1, v3

    aput-wide v1, v16, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_2f

    :cond_191
    int-to-double v1, v0

    .line 1307
    sget-wide v14, Lnet/jafama/AbstractFastMath;->ASIN_DELTA:D

    mul-double/2addr v1, v14

    mul-double v14, v1, v1

    sub-double v14, v12, v14

    div-double v14, v12, v14

    .line 1309
    invoke-static {v14, v15}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v16

    mul-double v20, v16, v14

    mul-double v22, v20, v14

    mul-double v14, v14, v22

    .line 1313
    sget-object v18, Lnet/jafama/AbstractFastMath;->asinTab:[D

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->asin(D)D

    move-result-wide v24

    aput-wide v24, v18, v0

    .line 1314
    sget-object v18, Lnet/jafama/AbstractFastMath;->asinDer1DivF1Tab:[D

    aput-wide v16, v18, v0

    .line 1315
    sget-object v16, Lnet/jafama/AbstractFastMath;->asinDer2DivF2Tab:[D

    mul-double v20, v20, v1

    mul-double v20, v20, v8

    aput-wide v20, v16, v0

    .line 1316
    sget-object v16, Lnet/jafama/AbstractFastMath;->asinDer3DivF3Tab:[D

    mul-double v17, v1, v10

    mul-double v20, v17, v1

    add-double v20, v20, v12

    mul-double v20, v20, v22

    mul-double v20, v20, v6

    aput-wide v20, v16, v0

    .line 1317
    sget-object v16, Lnet/jafama/AbstractFastMath;->asinDer4DivF4Tab:[D

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    sub-double v22, v20, v17

    mul-double v1, v1, v22

    add-double/2addr v1, v10

    mul-double v17, v17, v1

    add-double v17, v17, v20

    mul-double v17, v17, v14

    mul-double v17, v17, v3

    aput-wide v17, v16, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_2a

    :cond_1df
    int-to-double v1, v0

    .line 1286
    sget-wide v14, Lnet/jafama/AbstractFastMath;->TAN_DELTA_HI:D

    mul-double/2addr v14, v1

    sget-wide v16, Lnet/jafama/AbstractFastMath;->TAN_DELTA_LO:D

    mul-double v1, v1, v16

    add-double/2addr v14, v1

    .line 1287
    invoke-static {v14, v15}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v1

    .line 1288
    invoke-static {v14, v15}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide v14

    div-double v14, v12, v14

    mul-double v16, v14, v14

    mul-double v20, v16, v14

    mul-double v22, v16, v16

    mul-double v24, v20, v16

    .line 1294
    sget-object v18, Lnet/jafama/AbstractFastMath;->tanTab:[D

    mul-double/2addr v14, v1

    aput-wide v14, v18, v0

    .line 1295
    sget-object v14, Lnet/jafama/AbstractFastMath;->tanDer1DivF1Tab:[D

    aput-wide v16, v14, v0

    .line 1296
    sget-object v14, Lnet/jafama/AbstractFastMath;->tanDer2DivF2Tab:[D

    mul-double v15, v1, v10

    mul-double v20, v20, v15

    mul-double v20, v20, v8

    aput-wide v20, v14, v0

    .line 1297
    sget-object v8, Lnet/jafama/AbstractFastMath;->tanDer3DivF3Tab:[D

    mul-double/2addr v15, v1

    add-double/2addr v15, v12

    mul-double/2addr v15, v10

    mul-double v15, v15, v22

    mul-double/2addr v15, v6

    aput-wide v15, v8, v0

    .line 1298
    sget-object v6, Lnet/jafama/AbstractFastMath;->tanDer4DivF4Tab:[D

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double/2addr v7, v1

    mul-double/2addr v1, v1

    add-double/2addr v1, v10

    mul-double/2addr v7, v1

    mul-double v7, v7, v24

    mul-double/2addr v7, v3

    aput-wide v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto/16 :goto_15

    :cond_229
    int-to-double v7, v6

    .line 1259
    sget-wide v9, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_HI:D

    mul-double/2addr v9, v7

    sget-wide v11, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_LO:D

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    .line 1260
    invoke-static {v9, v10}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v7

    .line 1261
    invoke-static {v9, v10}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    if-ne v6, v0, :cond_23f

    :goto_23d
    move-wide v7, v11

    goto :goto_249

    :cond_23f
    if-ne v6, v2, :cond_242

    goto :goto_23d

    :cond_242
    if-ne v6, v3, :cond_246

    :goto_244
    move-wide v9, v11

    goto :goto_249

    :cond_246
    if-ne v6, v4, :cond_249

    goto :goto_244

    .line 1276
    :cond_249
    :goto_249
    sget-object v1, Lnet/jafama/AbstractFastMath;->sinTab:[D

    aput-wide v7, v1, v6

    .line 1277
    sget-object v1, Lnet/jafama/AbstractFastMath;->cosTab:[D

    aput-wide v9, v1, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto/16 :goto_10
.end method

.method static strictfp jdkRemainderPi(D)D
    .registers 4

    .line 721
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    .line 722
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide p0

    .line 727
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static strictfp jdkRemainderPiO2(DZ)J
    .registers 13

    .line 736
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    .line 737
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide p0

    .line 748
    sget-wide v2, Lnet/jafama/AbstractFastMath;->SQRT_2:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v2, v4

    cmpl-double v6, p0, v6

    if-ltz v6, :cond_14

    const/4 v2, 0x0

    goto :goto_2c

    :cond_14
    div-double/2addr v2, v4

    neg-double v2, v2

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_1e

    const/4 v2, 0x2

    neg-double v0, v0

    neg-double p0, p0

    goto :goto_2c

    :cond_1e
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_27

    const/4 v2, 0x1

    neg-double p0, p0

    goto :goto_29

    :cond_27
    const/4 v2, 0x3

    neg-double v0, v0

    :goto_29
    move-wide v8, p0

    move-wide p0, v0

    move-wide v0, v8

    .line 770
    :goto_2c
    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->atan2(DD)D

    move-result-wide p0

    if-eqz p2, :cond_33

    neg-double p0, p0

    .line 772
    :cond_33
    invoke-static {p0, p1, v2}, Lnet/jafama/AbstractFastMath;->encodeRemainderAndQuadrant(DI)J

    move-result-wide p0

    return-wide p0
.end method

.method static strictfp jdkRemainderTwoPi(D)D
    .registers 4

    .line 711
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    .line 712
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide p0

    .line 713
    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static signFromBit_antiCyclic(D)J
    .registers 4

    .line 1214
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x3e

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static twoPowNormal(I)D
    .registers 3

    add-int/lit16 p0, p0, 0x3ff

    int-to-long v0, p0

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    .line 577
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static twoPowNormalOrSubnormal(I)D
    .registers 3

    const/16 v0, -0x3ff

    if-gt p0, v0, :cond_f

    const-wide/high16 v0, 0x8000000000000L

    add-int/lit16 p0, p0, 0x3ff

    neg-int p0, p0

    shr-long/2addr v0, p0

    .line 589
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_f
    add-int/lit16 p0, p0, 0x3ff

    int-to-long v0, p0

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    .line 591
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
