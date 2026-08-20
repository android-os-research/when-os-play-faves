.class public final Lnet/jafama/FastMath;
.super Lnet/jafama/AbstractFastMath;
.source "FastMath.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static final USE_JDK_MATH:Z

.field private static final USE_POWTABS_FOR_ASIN:Z = false

.field private static final USE_REDEFINED_LOG:Z

.field private static final USE_REDEFINED_SQRT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    sget-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_JDK_MATH:Z

    sput-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    .line 96
    sget-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_REDEFINED_LOG:Z

    sput-boolean v0, Lnet/jafama/FastMath;->USE_REDEFINED_LOG:Z

    .line 98
    sget-boolean v0, Lnet/jafama/AbstractFastMath;->FM_USE_REDEFINED_SQRT:Z

    sput-boolean v0, Lnet/jafama/FastMath;->USE_REDEFINED_SQRT:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3089
    invoke-direct {p0}, Lnet/jafama/AbstractFastMath;-><init>()V

    return-void
.end method

.method public static IEEEremainder(DD)D
    .registers 4

    .line 3076
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static abs(D)D
    .registers 2

    .line 3049
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static abs(F)F
    .registers 1

    .line 3046
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static abs(I)I
    .registers 2

    .line 1946
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1947
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 1949
    :cond_9
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->abs(I)I

    move-result p0

    return p0
.end method

.method public static abs(J)J
    .registers 3

    .line 1957
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1958
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0

    .line 1960
    :cond_9
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static acos(D)D
    .registers 4

    .line 407
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 408
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 410
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->asin(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static acosInRange(D)D
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_c

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    return-wide p0

    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_15

    const-wide/16 p0, 0x0

    return-wide p0

    .line 426
    :cond_15
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static acosh(D)D
    .registers 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_f

    cmpg-double v2, p0, v0

    if-gez v2, :cond_d

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_e

    :cond_d
    sub-double/2addr p0, v0

    :goto_e
    return-wide p0

    :cond_f
    const-wide/high16 v2, 0x4170000000000000L    # 1.6777216E7

    cmpg-double v2, p0, v2

    if-gez v2, :cond_22

    mul-double v2, p0, p0

    sub-double/2addr v2, v0

    .line 957
    invoke-static {v2, v3}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide p0

    goto :goto_29

    .line 961
    :cond_22
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_2:D

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    :goto_29
    return-wide p0
.end method

.method public static acosh1p(D)D
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_d

    cmpg-double v0, p0, v0

    if-gez v0, :cond_c

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_c
    return-wide p0

    :cond_d
    const-wide v0, 0x416fffffe0000000L    # 1.6777215E7

    cmpg-double v0, p0, v0

    if-gez v0, :cond_24

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v0, p0

    mul-double/2addr v0, p0

    .line 994
    invoke-static {v0, v1}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->log1p(D)D

    move-result-wide p0

    goto :goto_2e

    .line 996
    :cond_24
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_2:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    :goto_2e
    return-wide p0
.end method

.method public static addBounded(II)I
    .registers 2

    .line 2334
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->plusBounded(II)I

    move-result p0

    return p0
.end method

.method public static addBounded(JJ)J
    .registers 4

    .line 2343
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->plusBounded(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addExact(II)I
    .registers 2

    .line 2315
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->plusExact(II)I

    move-result p0

    return p0
.end method

.method public static addExact(JJ)J
    .registers 4

    .line 2325
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->plusExact(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static asin(D)D
    .registers 20

    move-wide/from16 v0, p0

    .line 348
    sget-boolean v2, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v2, :cond_b

    .line 349
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_14

    neg-double v0, v0

    const/4 v2, 0x1

    .line 356
    :cond_14
    sget-wide v3, Lnet/jafama/AbstractFastMath;->ASIN_MAX_VALUE_FOR_TABS:D

    cmpg-double v3, v0, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-gtz v3, :cond_46

    .line 357
    sget-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_INDEXER:D

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    double-to-int v3, v6

    int-to-double v4, v3

    .line 358
    sget-wide v6, Lnet/jafama/AbstractFastMath;->ASIN_DELTA:D

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .line 359
    sget-object v4, Lnet/jafama/AbstractFastMath;->asinTab:[D

    aget-wide v4, v4, v3

    sget-object v6, Lnet/jafama/AbstractFastMath;->asinDer1DivF1Tab:[D

    aget-wide v6, v6, v3

    sget-object v8, Lnet/jafama/AbstractFastMath;->asinDer2DivF2Tab:[D

    aget-wide v8, v8, v3

    sget-object v10, Lnet/jafama/AbstractFastMath;->asinDer3DivF3Tab:[D

    aget-wide v10, v10, v3

    sget-object v12, Lnet/jafama/AbstractFastMath;->asinDer4DivF4Tab:[D

    aget-wide v12, v12, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    if-eqz v2, :cond_45

    neg-double v4, v4

    :cond_45
    return-wide v4

    :cond_46
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v6

    if-gez v3, :cond_8a

    sub-double v0, v6, v0

    mul-double/2addr v0, v4

    .line 370
    sget-wide v3, Lnet/jafama/AbstractFastMath;->ASIN_PS0:D

    sget-wide v8, Lnet/jafama/AbstractFastMath;->ASIN_PS1:D

    sget-wide v10, Lnet/jafama/AbstractFastMath;->ASIN_PS2:D

    sget-wide v12, Lnet/jafama/AbstractFastMath;->ASIN_PS3:D

    sget-wide v14, Lnet/jafama/AbstractFastMath;->ASIN_PS4:D

    sget-wide v16, Lnet/jafama/AbstractFastMath;->ASIN_PS5:D

    mul-double v16, v16, v0

    add-double v14, v14, v16

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v3, v8

    mul-double/2addr v3, v0

    .line 371
    sget-wide v8, Lnet/jafama/AbstractFastMath;->ASIN_QS1:D

    sget-wide v10, Lnet/jafama/AbstractFastMath;->ASIN_QS2:D

    sget-wide v12, Lnet/jafama/AbstractFastMath;->ASIN_QS3:D

    sget-wide v14, Lnet/jafama/AbstractFastMath;->ASIN_QS4:D

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v8, v6

    .line 372
    invoke-static {v0, v1}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v8

    mul-double/2addr v3, v0

    add-double/2addr v0, v3

    .line 374
    sget-wide v3, Lnet/jafama/AbstractFastMath;->ASIN_PIO2_HI:D

    add-double/2addr v0, v0

    sget-wide v5, Lnet/jafama/AbstractFastMath;->ASIN_PIO2_LO:D

    sub-double/2addr v0, v5

    sub-double/2addr v3, v0

    if-eqz v2, :cond_89

    neg-double v3, v3

    :cond_89
    return-wide v3

    :cond_8a
    cmpl-double v0, v0, v6

    if-nez v0, :cond_9c

    if-eqz v2, :cond_96

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_9b

    :cond_96
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_9b
    return-wide v0

    :cond_9c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static asinInRange(D)D
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_c

    const-wide p0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    return-wide p0

    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_18

    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    return-wide p0

    .line 398
    :cond_18
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->asin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static asinh(D)D
    .registers 20

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b

    neg-double v0, v0

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const-wide v3, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v3, :cond_3b

    mul-double v6, v0, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v0

    const-wide/high16 v10, -0x4030000000000000L    # -0.25

    mul-double/2addr v10, v6

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    mul-double/2addr v12, v6

    const-wide/high16 v14, -0x401c000000000000L    # -0.625

    mul-double/2addr v14, v6

    const-wide v16, -0x401999999999999aL    # -0.7

    mul-double v6, v6, v16

    add-double/2addr v6, v4

    mul-double/2addr v14, v6

    add-double/2addr v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v8, v4

    mul-double/2addr v0, v8

    .line 915
    invoke-static {v0, v1}, Lnet/jafama/FastMath;->log1p(D)D

    move-result-wide v0

    goto :goto_55

    :cond_3b
    const-wide/high16 v6, 0x4170000000000000L    # 1.6777216E7

    cmpg-double v3, v0, v6

    if-gez v3, :cond_4e

    mul-double v6, v0, v0

    add-double/2addr v6, v4

    .line 921
    invoke-static {v6, v7}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide v0

    goto :goto_55

    .line 925
    :cond_4e
    sget-wide v3, Lnet/jafama/AbstractFastMath;->LOG_2:D

    invoke-static {v0, v1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide v0

    add-double/2addr v0, v3

    :goto_55
    if-eqz v2, :cond_58

    neg-double v0, v0

    :cond_58
    return-wide v0
.end method

.method public static atan(D)D
    .registers 21

    move-wide/from16 v0, p0

    .line 435
    sget-boolean v2, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v2, :cond_b

    .line 436
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_14

    neg-double v0, v0

    const/4 v2, 0x1

    :cond_14
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v0, v3

    if-nez v3, :cond_28

    if-eqz v2, :cond_22

    const-wide v0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    goto :goto_27

    :cond_22
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    :goto_27
    return-wide v0

    .line 446
    :cond_28
    sget-wide v3, Lnet/jafama/AbstractFastMath;->ATAN_MAX_VALUE_FOR_TABS:D

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_5a

    .line 447
    sget-wide v3, Lnet/jafama/AbstractFastMath;->ATAN_INDEXER:D

    mul-double/2addr v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v3

    .line 448
    sget-wide v6, Lnet/jafama/AbstractFastMath;->ATAN_DELTA:D

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .line 449
    sget-object v4, Lnet/jafama/AbstractFastMath;->atanTab:[D

    aget-wide v4, v4, v3

    sget-object v6, Lnet/jafama/AbstractFastMath;->atanDer1DivF1Tab:[D

    aget-wide v6, v6, v3

    sget-object v8, Lnet/jafama/AbstractFastMath;->atanDer2DivF2Tab:[D

    aget-wide v8, v8, v3

    sget-object v10, Lnet/jafama/AbstractFastMath;->atanDer3DivF3Tab:[D

    aget-wide v10, v10, v3

    sget-object v12, Lnet/jafama/AbstractFastMath;->atanDer4DivF4Tab:[D

    aget-wide v12, v12, v3

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    if-eqz v2, :cond_59

    neg-double v4, v4

    :cond_59
    return-wide v4

    .line 453
    :cond_5a
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_66:D

    cmpg-double v3, v0, v3

    if-gez v3, :cond_a0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    div-double/2addr v3, v0

    mul-double v0, v3, v3

    mul-double v5, v0, v0

    .line 457
    sget-wide v7, Lnet/jafama/AbstractFastMath;->ATAN_AT0:D

    sget-wide v9, Lnet/jafama/AbstractFastMath;->ATAN_AT2:D

    sget-wide v11, Lnet/jafama/AbstractFastMath;->ATAN_AT4:D

    sget-wide v13, Lnet/jafama/AbstractFastMath;->ATAN_AT6:D

    sget-wide v15, Lnet/jafama/AbstractFastMath;->ATAN_AT8:D

    sget-wide v17, Lnet/jafama/AbstractFastMath;->ATAN_AT10:D

    mul-double v17, v17, v5

    add-double v15, v15, v17

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    mul-double/2addr v0, v7

    .line 458
    sget-wide v7, Lnet/jafama/AbstractFastMath;->ATAN_AT1:D

    sget-wide v9, Lnet/jafama/AbstractFastMath;->ATAN_AT3:D

    sget-wide v11, Lnet/jafama/AbstractFastMath;->ATAN_AT5:D

    sget-wide v13, Lnet/jafama/AbstractFastMath;->ATAN_AT7:D

    sget-wide v15, Lnet/jafama/AbstractFastMath;->ATAN_AT9:D

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    .line 459
    sget-wide v7, Lnet/jafama/AbstractFastMath;->ATAN_HI3:D

    add-double/2addr v0, v5

    mul-double/2addr v0, v3

    sget-wide v5, Lnet/jafama/AbstractFastMath;->ATAN_LO3:D

    sub-double/2addr v0, v5

    sub-double/2addr v0, v3

    sub-double/2addr v7, v0

    if-eqz v2, :cond_9f

    neg-double v7, v7

    :cond_9f
    return-wide v7

    :cond_a0
    cmpl-double v0, v0, v0

    if-eqz v0, :cond_a7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_a7
    if-eqz v2, :cond_af

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_b4

    :cond_af
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_b4
    return-wide v0
.end method

.method public static atan2(DD)D
    .registers 9

    .line 481
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 482
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_25

    cmpl-double v0, p0, v0

    if-nez v0, :cond_14

    return-wide p0

    :cond_14
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1f

    .line 494
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->atan2_pinf_yyy(D)D

    move-result-wide p0

    return-wide p0

    :cond_1f
    div-double/2addr p0, p2

    .line 496
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->atan(D)D

    move-result-wide p0

    return-wide p0

    :cond_25
    cmpg-double v2, p2, v0

    if-gez v2, :cond_64

    cmpl-double v2, p0, v0

    if-nez v2, :cond_39

    .line 500
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->signFromBit(D)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, p2

    return-wide p0

    :cond_39
    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v3, p2, v3

    if-nez v3, :cond_44

    .line 503
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->atan2_ninf_yyy(D)D

    move-result-wide p0

    return-wide p0

    :cond_44
    if-lez v2, :cond_52

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr p2, p0

    .line 505
    invoke-static {p2, p3}, Lnet/jafama/FastMath;->atan(D)D

    move-result-wide p0

    :goto_50
    sub-double/2addr v0, p0

    return-wide v0

    :cond_52
    cmpg-double v0, p0, v0

    if-gez v0, :cond_61

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    div-double/2addr p2, p0

    .line 507
    invoke-static {p2, p3}, Lnet/jafama/FastMath;->atan(D)D

    move-result-wide p0

    goto :goto_50

    :cond_61
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 512
    :cond_64
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/AbstractFastMath;->atan2_yyy_zeroOrNaN(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static atanh(D)D
    .registers 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_9

    neg-double p0, p0

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_1b

    cmpl-double v1, p0, v1

    if-lez v1, :cond_17

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_26

    :cond_17
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    add-double/2addr p0, v1

    goto :goto_26

    :cond_1b
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, p0, p0

    sub-double/2addr v1, p0

    div-double/2addr v5, v1

    .line 1035
    invoke-static {v5, v6}, Lnet/jafama/FastMath;->log1p(D)D

    move-result-wide p0

    mul-double/2addr p0, v3

    :goto_26
    if-eqz v0, :cond_29

    neg-double p0, p0

    :cond_29
    return-wide p0
.end method

.method public static cbrt(D)D
    .registers 11

    .line 1725
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1726
    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_2b

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    return-wide v0

    :cond_1a
    neg-double p0, p0

    .line 1735
    sget-wide v0, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_49

    .line 1736
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    mul-double/2addr v0, v5

    mul-double/2addr p0, v0

    .line 1738
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_N26:D

    mul-double/2addr v3, v0

    goto :goto_49

    :cond_2b
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_32

    return-wide p0

    .line 1747
    :cond_32
    sget-wide v2, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    cmpg-double v2, p0, v2

    if-gez v2, :cond_48

    cmpl-double v0, p0, v0

    if-nez v0, :cond_3d

    return-wide p0

    .line 1752
    :cond_3d
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    sget-wide v2, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    mul-double/2addr v0, v2

    mul-double/2addr p0, v0

    .line 1753
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_N26:D

    mul-double v3, v0, v5

    goto :goto_49

    :cond_48
    move-wide v3, v5

    .line 1769
    :cond_49
    :goto_49
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    shr-int/lit8 v1, v0, 0x14

    add-int/lit8 v1, v1, 0x33

    shl-int/lit8 v0, v0, 0xc

    .line 1772
    sget v5, Lnet/jafama/AbstractFastMath;->CBRT_LO_BITS:I

    sub-int/2addr v2, v5

    ushr-int/2addr v0, v2

    .line 1773
    sget-object v2, Lnet/jafama/AbstractFastMath;->cbrtXCbrtHiTab:[D

    aget-wide v5, v2, v1

    sget-object v2, Lnet/jafama/AbstractFastMath;->cbrtXCbrtLoTab:[D

    aget-wide v7, v2, v0

    mul-double/2addr v5, v7

    .line 1774
    sget-object v2, Lnet/jafama/AbstractFastMath;->cbrtSlopeHiTab:[D

    aget-wide v1, v2, v1

    sget-object v7, Lnet/jafama/AbstractFastMath;->cbrtSlopeLoTab:[D

    aget-wide v7, v7, v0

    mul-double/2addr v1, v7

    const-wide/high16 v7, 0x3fc0000000000000L    # 0.125

    mul-double/2addr p0, v7

    mul-double v7, v5, v5

    mul-double/2addr v7, v5

    sub-double v7, p0, v7

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    mul-double v7, v5, v5

    mul-double/2addr v7, v5

    sub-double v7, p0, v7

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    mul-double v7, v5, v5

    mul-double/2addr v7, v5

    sub-double/2addr p0, v7

    mul-double/2addr p0, v1

    add-double/2addr v5, p0

    mul-double/2addr v3, v5

    return-wide v3
.end method

.method public static ceil(D)D
    .registers 3

    .line 2094
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2095
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    neg-double p0, p0

    .line 2097
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->floor(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method public static ceil(F)F
    .registers 1

    neg-float p0, p0

    .line 2086
    invoke-static {p0}, Lnet/jafama/FastMath;->floor(F)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public static copySign(DD)D
    .registers 6

    .line 2758
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p2, v0

    .line 2759
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    .line 2757
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static copySign(FF)F
    .registers 3

    .line 2744
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    .line 2745
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    .line 2743
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static cos(D)D
    .registers 16

    .line 182
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0

    .line 185
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 186
    sget-wide v0, Lnet/jafama/AbstractFastMath;->SIN_COS_MAX_VALUE_FOR_INT_MODULO:D

    cmpl-double v0, p0, v0

    const/4 v1, 0x2

    if-lez v0, :cond_3c

    .line 194
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderPiO2(D)J

    move-result-wide p0

    .line 195
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeRemainder(J)D

    move-result-wide v2

    .line 197
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeQuadrant(J)I

    move-result p0

    if-nez p0, :cond_27

    .line 199
    invoke-static {v2, v3}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide p0

    goto :goto_3b

    :cond_27
    const/4 p1, 0x1

    if-ne p0, p1, :cond_30

    .line 201
    invoke-static {v2, v3}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide p0

    :goto_2e
    neg-double p0, p0

    goto :goto_3b

    :cond_30
    if-ne p0, v1, :cond_37

    .line 203
    invoke-static {v2, v3}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide p0

    goto :goto_2e

    .line 205
    :cond_37
    invoke-static {v2, v3}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide p0

    :goto_3b
    return-wide p0

    .line 211
    :cond_3c
    sget-wide v2, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v2, v0

    .line 212
    sget-wide v6, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_HI:D

    mul-double/2addr v6, v2

    sub-double/2addr p0, v6

    sget-wide v6, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_LO:D

    mul-double/2addr v2, v6

    sub-double/2addr p0, v2

    .line 216
    sget v2, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    .line 217
    sget-object v1, Lnet/jafama/AbstractFastMath;->cosTab:[D

    aget-wide v1, v1, v0

    .line 218
    sget-object v3, Lnet/jafama/AbstractFastMath;->sinTab:[D

    aget-wide v6, v3, v0

    neg-double v8, v6

    neg-double v10, v1

    mul-double/2addr v10, v4

    const-wide v3, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr v6, v3

    mul-double v3, p0, v1

    const-wide v12, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double/2addr v3, v12

    add-double/2addr v6, v3

    mul-double/2addr v6, p0

    add-double/2addr v10, v6

    mul-double/2addr v10, p0

    add-double/2addr v8, v10

    mul-double/2addr p0, v8

    add-double/2addr v1, p0

    return-wide v1
.end method

.method public static cosQuick(D)D
    .registers 5

    .line 231
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 232
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0

    .line 234
    :cond_9
    sget-object v0, Lnet/jafama/AbstractFastMath;->cosTab:[D

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sget-wide v1, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    mul-double/2addr p0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-int p0, p0

    sget p1, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    add-int/lit8 p1, p1, -0x2

    and-int/2addr p0, p1

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public static cosh(D)D
    .registers 7

    .line 691
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 692
    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    neg-double p0, p0

    .line 698
    :cond_10
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_TWO_POW_27:D

    cmpg-double v0, p0, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-gez v0, :cond_29

    .line 699
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_N27:D

    cmpg-double v0, p0, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_21

    return-wide v3

    .line 710
    :cond_21
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    div-double/2addr v3, p0

    add-double/2addr p0, v3

    :goto_27
    mul-double/2addr p0, v1

    return-wide p0

    .line 713
    :cond_29
    sget-wide v3, Lnet/jafama/AbstractFastMath;->LOG_DOUBLE_MAX_VALUE:D

    cmpg-double v0, p0, v3

    if-gez v0, :cond_34

    .line 714
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    goto :goto_27

    :cond_34
    mul-double/2addr p0, v1

    .line 716
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    mul-double/2addr v1, p0

    return-wide v1
.end method

.method public static coshm1(D)D
    .registers 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_7

    neg-double p0, p0

    .line 736
    :cond_7
    sget-wide v2, Lnet/jafama/AbstractFastMath;->LOG_TWO_POW_27:D

    cmpg-double v2, p0, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-gez v2, :cond_29

    .line 737
    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWO_POW_N27:D

    cmpg-double v2, p0, v5

    if-gez v2, :cond_1d

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1a

    return-wide p0

    :cond_1a
    :goto_1a
    mul-double/2addr v3, p0

    mul-double/2addr v3, p0

    return-wide v3

    .line 760
    :cond_1d
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide v0

    neg-double p0, p0

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    mul-double/2addr v0, v3

    return-wide v0

    .line 762
    :cond_29
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_DOUBLE_MAX_VALUE:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_38

    .line 763
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr p0, v3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    return-wide p0

    :cond_38
    mul-double/2addr p0, v3

    .line 766
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    goto :goto_1a
.end method

.method public static exp(D)D
    .registers 14

    .line 1049
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1050
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    .line 1067
    :cond_9
    sget-wide v0, Lnet/jafama/AbstractFastMath;->EXP_OVERFLOW_LIMIT:D

    cmpl-double v0, p0, v0

    if-lez v0, :cond_12

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    .line 1069
    :cond_12
    sget-wide v0, Lnet/jafama/AbstractFastMath;->EXP_UNDERFLOW_LIMIT:D

    cmpl-double v2, p0, v0

    if-gez v2, :cond_22

    cmpl-double p0, p0, p0

    if-eqz p0, :cond_1f

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_21

    :cond_1f
    const-wide/16 p0, 0x0

    :goto_21
    return-wide p0

    .line 1073
    :cond_22
    sget v2, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING:I

    int-to-double v3, v2

    mul-double/2addr v3, p0

    double-to-int v3, v3

    if-ltz v3, :cond_2e

    .line 1077
    sget v4, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING_DIV_SHIFT:I

    shr-int v4, v3, v4

    goto :goto_33

    :cond_2e
    neg-int v4, v3

    .line 1079
    sget v5, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING_DIV_SHIFT:I

    shr-int/2addr v4, v5

    neg-int v4, v4

    .line 1081
    :goto_33
    sget-object v5, Lnet/jafama/AbstractFastMath;->expHiTab:[D

    double-to-int v0, v0

    sub-int v0, v4, v0

    aget-wide v0, v5, v0

    .line 1083
    sget v5, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING_DIV_SHIFT:I

    shl-int v5, v4, v5

    sub-int/2addr v3, v5

    int-to-double v4, v4

    sub-double/2addr p0, v4

    int-to-double v4, v3

    int-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    sub-double/2addr p0, v4

    .line 1087
    sget-object v2, Lnet/jafama/AbstractFastMath;->expLoPosTab:[D

    sget v4, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_MID_INDEX:I

    add-int/2addr v3, v4

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide v10, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double/2addr v10, p0

    add-double/2addr v10, v6

    mul-double/2addr v10, p0

    add-double/2addr v10, v4

    mul-double/2addr v10, p0

    add-double/2addr v10, v8

    mul-double/2addr p0, v10

    add-double/2addr p0, v8

    mul-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static expQuick(D)D
    .registers 4

    .line 1103
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1104
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide v0, 0x41371547652bd3c3L    # 1512775.3952

    mul-double/2addr p0, v0

    const-wide v0, 0x41cff7a7dd19999aL    # 1.0726481222E9

    add-double/2addr p0, v0

    double-to-int p0, p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    .line 1117
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static expm1(D)D
    .registers 19

    .line 1128
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1129
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v0

    return-wide v0

    .line 1141
    :cond_9
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4a

    .line 1143
    sget v0, Lnet/jafama/AbstractFastMath;->EXP_LO_INDEXING:I

    int-to-double v4, v0

    mul-double v4, v4, p0

    double-to-int v1, v4

    int-to-double v4, v1

    int-to-double v6, v0

    div-double v6, v2, v6

    mul-double/2addr v4, v6

    sub-double v4, p0, v4

    .line 1145
    sget-object v0, Lnet/jafama/AbstractFastMath;->expLoPosTab:[D

    sget v6, Lnet/jafama/AbstractFastMath;->EXP_LO_TAB_MID_INDEX:I

    add-int v7, v1, v6

    aget-wide v7, v0, v7

    sget-object v0, Lnet/jafama/AbstractFastMath;->expLoNegTab:[D

    add-int/2addr v1, v6

    aget-wide v0, v0, v1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide v11, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide v13, 0x3fa5555555555555L    # 0.041666666666666664

    const-wide v15, 0x3f81111111111111L    # 0.008333333333333333

    mul-double/2addr v15, v4

    add-double/2addr v15, v13

    mul-double/2addr v15, v4

    add-double/2addr v15, v11

    mul-double/2addr v15, v4

    add-double/2addr v15, v9

    mul-double/2addr v15, v4

    add-double/2addr v15, v2

    mul-double/2addr v4, v15

    add-double/2addr v0, v4

    mul-double/2addr v7, v0

    return-wide v7

    .line 1147
    :cond_4a
    invoke-static/range {p0 .. p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static floor(D)D
    .registers 11

    .line 2018
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2019
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    .line 2022
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    if-gtz v2, :cond_2e

    cmpl-double v0, p0, v5

    if-lez v0, :cond_21

    double-to-int p0, p0

    int-to-double p0, p0

    return-wide p0

    :cond_21
    cmpg-double v0, p0, v5

    if-gez v0, :cond_2d

    double-to-int v0, p0

    int-to-double v0, v0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_2c

    sub-double/2addr v0, v3

    :cond_2c
    return-wide v0

    :cond_2d
    return-wide p0

    .line 2036
    :cond_2e
    sget-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    cmpg-double v0, v0, v7

    if-gez v0, :cond_50

    .line 2041
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_N26:D

    mul-double/2addr v0, p0

    double-to-int v0, v0

    int-to-double v0, v0

    sget-wide v7, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    mul-double/2addr v0, v7

    cmpl-double v2, p0, v5

    if-lez v2, :cond_45

    sub-double/2addr p0, v0

    double-to-int p0, p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0

    :cond_45
    sub-double v5, p0, v0

    double-to-int v2, v5

    int-to-double v5, v2

    add-double/2addr v0, v5

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_4f

    sub-double/2addr v0, v3

    :cond_4f
    return-wide v0

    :cond_50
    return-wide p0
.end method

.method public static floor(F)F
    .registers 5

    .line 1989
    invoke-static {p0}, Lnet/jafama/FastMath;->getExponent(F)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_10

    cmpg-float v0, p0, v1

    if-gez v0, :cond_e

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_e
    mul-float/2addr p0, v1

    return p0

    :cond_10
    const/16 v2, 0x17

    if-ge v0, v2, :cond_2f

    .line 2000
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    shr-int v0, v3, v0

    and-int/2addr v0, v2

    cmpg-float p0, p0, v1

    if-gez p0, :cond_2b

    if-eq v0, v2, :cond_2b

    .line 2003
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    return p0

    .line 2005
    :cond_2b
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :cond_2f
    return p0
.end method

.method public static floorDiv(II)I
    .registers 4

    .line 2441
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_b

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    return v0
.end method

.method public static floorDiv(JJ)J
    .registers 10

    .line 2464
    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_12

    mul-long/2addr p2, v0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_12

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    :cond_12
    return-wide v0
.end method

.method public static floorMod(II)I
    .registers 3

    .line 2485
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method public static floorMod(JJ)J
    .registers 6

    .line 2501
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/FastMath;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static getExponent(D)I
    .registers 3

    .line 2680
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x34

    shr-long/2addr p0, v0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0x7ff

    add-int/lit16 p0, p0, -0x3ff

    return p0
.end method

.method public static getExponent(F)I
    .registers 1

    .line 2672
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x17

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p0, p0, -0x7f

    return p0
.end method

.method public static hypot(DD)D
    .registers 13

    .line 1819
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1820
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0

    .line 1822
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1823
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    cmpg-double v0, p2, p0

    if-gez v0, :cond_16

    goto :goto_22

    :cond_16
    cmpl-double v0, p2, p0

    if-gez v0, :cond_1f

    .line 1830
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/AbstractFastMath;->hypot_NaN(DD)D

    move-result-wide p0

    return-wide p0

    :cond_1f
    move-wide v7, p0

    move-wide p0, p2

    move-wide p2, v7

    :goto_22
    sub-double v0, p0, p2

    cmpl-double v0, v0, p0

    if-nez v0, :cond_29

    return-wide p0

    .line 1838
    :cond_29
    sget-wide v0, Lnet/jafama/AbstractFastMath;->HYPOT_MAX_MAG:D

    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_3a

    .line 1840
    sget-wide v0, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    div-double v5, v3, v0

    mul-double/2addr p2, v5

    div-double/2addr v3, v0

    mul-double/2addr p0, v3

    move-wide v3, v0

    goto :goto_45

    :cond_3a
    div-double v0, v3, v0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_45

    .line 1845
    sget-wide v0, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    mul-double/2addr p2, v0

    mul-double/2addr p0, v0

    div-double/2addr v3, v0

    :cond_45
    :goto_45
    mul-double/2addr p2, p2

    mul-double/2addr p0, p0

    add-double/2addr p2, p0

    .line 1851
    invoke-static {p2, p3}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    return-wide v3
.end method

.method public static hypot(DDD)D
    .registers 15

    .line 1862
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1863
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    .line 1864
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    cmpl-double v0, p4, p2

    if-lez v0, :cond_14

    move-wide v7, p2

    move-wide p2, p4

    move-wide p4, v7

    goto :goto_1d

    :cond_14
    cmpg-double v0, p4, p2

    if-lez v0, :cond_1d

    .line 1876
    invoke-static/range {p0 .. p5}, Lnet/jafama/AbstractFastMath;->hypot_NaN(DDD)D

    move-result-wide p0

    return-wide p0

    :cond_1d
    :goto_1d
    cmpl-double v0, p4, p0

    if-lez v0, :cond_26

    move-wide v7, p2

    move-wide p2, p4

    move-wide p4, p0

    move-wide p0, v7

    goto :goto_37

    :cond_26
    cmpl-double v0, p2, p0

    if-lez v0, :cond_2e

    move-wide v7, p0

    move-wide p0, p2

    move-wide p2, v7

    goto :goto_37

    :cond_2e
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_37

    .line 1892
    invoke-static/range {p0 .. p5}, Lnet/jafama/AbstractFastMath;->hypot_NaN(DDD)D

    move-result-wide p0

    return-wide p0

    :cond_37
    :goto_37
    sub-double v0, p0, p2

    cmpl-double v0, v0, p0

    if-nez v0, :cond_3e

    return-wide p0

    :cond_3e
    sub-double v0, p2, p4

    cmpl-double v0, v0, p2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_69

    .line 1901
    sget-wide p4, Lnet/jafama/AbstractFastMath;->HYPOT_MAX_MAG:D

    cmpl-double v0, p0, p4

    if-lez v0, :cond_55

    .line 1903
    sget-wide p4, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    div-double v3, v1, p4

    mul-double/2addr p0, v3

    div-double/2addr v1, p4

    mul-double/2addr p2, v1

    move-wide v1, p4

    goto :goto_60

    :cond_55
    div-double p4, v1, p4

    cmpg-double p4, p2, p4

    if-gez p4, :cond_60

    .line 1908
    sget-wide p4, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    mul-double/2addr p0, p4

    mul-double/2addr p2, p4

    div-double/2addr v1, p4

    :cond_60
    :goto_60
    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    .line 1914
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide p0

    :goto_67
    mul-double/2addr v1, p0

    return-wide v1

    .line 1917
    :cond_69
    sget-wide v3, Lnet/jafama/AbstractFastMath;->HYPOT_MAX_MAG:D

    cmpl-double v0, p0, v3

    if-lez v0, :cond_7b

    .line 1919
    sget-wide v3, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    div-double v5, v1, v3

    mul-double/2addr p0, v5

    div-double v5, v1, v3

    mul-double/2addr p2, v5

    div-double/2addr v1, v3

    mul-double/2addr p4, v1

    move-wide v1, v3

    goto :goto_87

    :cond_7b
    div-double v3, v1, v3

    cmpg-double v0, p4, v3

    if-gez v0, :cond_87

    .line 1925
    sget-wide v3, Lnet/jafama/AbstractFastMath;->HYPOT_FACTOR:D

    mul-double/2addr p0, v3

    mul-double/2addr p2, v3

    mul-double/2addr p4, v3

    div-double/2addr v1, v3

    :cond_87
    :goto_87
    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    mul-double/2addr p4, p4

    add-double/2addr p2, p4

    add-double/2addr p0, p2

    .line 1933
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->sqrt(D)D

    move-result-wide p0

    goto :goto_67
.end method

.method public static invSqrtQuick(D)D
    .registers 5

    .line 1699
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1700
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_c
    const-wide v0, 0x5fe6eb50c7b537a9L    # 9.603007803048109E153

    .line 1716
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/4 v2, 0x1

    shr-long/2addr p0, v2

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static isInClockwiseDomain(DDD)Z
    .registers 11

    .line 600
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3cb1a62633145c07L    # 2.4492935982947064E-16

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_46

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v0, p2, v3

    if-gtz v0, :cond_40

    const-wide/16 v3, 0x0

    cmpg-double v0, p2, v3

    if-gez v0, :cond_1f

    return v2

    .line 608
    :cond_1f
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->normalizeMinusPiPi(D)D

    move-result-wide p0

    add-double/2addr p2, p0

    .line 609
    invoke-static {p2, p3}, Lnet/jafama/FastMath;->normalizeMinusPiPi(D)D

    move-result-wide p2

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_36

    cmpl-double p0, p4, p0

    if-ltz p0, :cond_35

    cmpg-double p0, p4, p2

    if-gtz p0, :cond_35

    return v1

    :cond_35
    return v2

    :cond_36
    cmpl-double p0, p4, p0

    if-gez p0, :cond_3f

    cmpg-double p0, p4, p2

    if-lez p0, :cond_3f

    return v2

    :cond_3f
    return v1

    :cond_40
    cmpl-double p0, p2, p2

    if-nez p0, :cond_45

    return v1

    :cond_45
    return v2

    :cond_46
    sub-double/2addr p4, p0

    .line 620
    invoke-static {p4, p5}, Lnet/jafama/FastMath;->normalizeZeroTwoPi(D)D

    move-result-wide p0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_50

    return v1

    :cond_50
    return v2
.end method

.method public static isNaNOrInfinite(D)Z
    .registers 2

    .line 2664
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->isNaNOrInfinite(D)Z

    move-result p0

    return p0
.end method

.method public static isNaNOrInfinite(F)Z
    .registers 1

    .line 2656
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isNaNOrInfinite(F)Z

    move-result p0

    return p0
.end method

.method public static log(D)D
    .registers 16

    .line 1160
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-nez v0, :cond_a5

    sget-boolean v0, Lnet/jafama/FastMath;->USE_REDEFINED_LOG:Z

    if-nez v0, :cond_a

    goto/16 :goto_a5

    :cond_a
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_9d

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p0, v2

    if-nez v4, :cond_17

    return-wide v2

    :cond_17
    const-wide v2, 0x3fee666666666666L    # 0.95

    cmpl-double v2, p0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_58

    const-wide v5, 0x3ff23d70a3d70a3dL    # 1.14

    cmpg-double v2, p0, v5

    if-gez v2, :cond_66

    sub-double v0, p0, v3

    add-double/2addr p0, v3

    div-double/2addr v0, p0

    mul-double p0, v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    const-wide v6, 0x3fd999999999999aL    # 0.4

    const-wide v8, 0x3fd2492492492492L    # 0.2857142857142857

    const-wide v10, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v12, 0x3fc745d1745d1746L    # 0.18181818181818182

    mul-double/2addr v12, p0

    add-double/2addr v12, v10

    mul-double/2addr v12, p0

    add-double/2addr v12, v8

    mul-double/2addr v12, p0

    add-double/2addr v12, v6

    mul-double/2addr v12, p0

    add-double/2addr v12, v4

    mul-double/2addr p0, v12

    add-double/2addr p0, v2

    mul-double/2addr v0, p0

    return-wide v0

    .line 1194
    :cond_58
    sget-wide v5, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    cmpg-double v2, p0, v5

    if-gez v2, :cond_66

    .line 1196
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    mul-double/2addr p0, v0

    const-wide/high16 v0, -0x3fb6000000000000L    # -52.0

    .line 1200
    sget-wide v5, Lnet/jafama/AbstractFastMath;->LOG_2:D

    mul-double/2addr v0, v5

    .line 1205
    :cond_66
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const/16 v2, 0x20

    shr-long/2addr v5, v2

    long-to-int v5, v5

    shr-int/lit8 v6, v5, 0x14

    add-int/lit16 v6, v6, -0x3ff

    shl-int/lit8 v5, v5, 0xc

    .line 1208
    sget v7, Lnet/jafama/AbstractFastMath;->LOG_BITS:I

    sub-int/2addr v2, v7

    ushr-int v2, v5, v2

    neg-int v5, v6

    .line 1211
    invoke-static {v5}, Lnet/jafama/AbstractFastMath;->twoPowNormalOrSubnormal(I)D

    move-result-wide v7

    mul-double/2addr p0, v7

    sget-object v5, Lnet/jafama/AbstractFastMath;->logXInvTab:[D

    aget-wide v7, v5, v2

    mul-double/2addr p0, v7

    sub-double/2addr p0, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide v9, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v9, p0

    sub-double/2addr v7, v9

    mul-double/2addr v7, p0

    sub-double/2addr v3, v7

    mul-double/2addr p0, v3

    int-to-double v3, v6

    .line 1215
    sget-wide v5, Lnet/jafama/AbstractFastMath;->LOG_2:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    sget-object v3, Lnet/jafama/AbstractFastMath;->logXLogTab:[D

    aget-wide v2, v3, v2

    add-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0

    :cond_9d
    if-nez v2, :cond_a2

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_a2
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 1161
    :cond_a5
    :goto_a5
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static log10(D)D
    .registers 4

    .line 1271
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lnet/jafama/FastMath;->USE_REDEFINED_LOG:Z

    if-nez v0, :cond_9

    goto :goto_11

    .line 1278
    :cond_9
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide p0

    sget-wide v0, Lnet/jafama/AbstractFastMath;->INV_LOG_10:D

    mul-double/2addr p0, v0

    return-wide p0

    .line 1272
    :cond_11
    :goto_11
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static log1p(D)D
    .registers 16

    .line 1289
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1290
    invoke-static {p0, p1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_97

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_16

    return-wide v0

    :cond_16
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p0, v0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_1f

    return-wide p0

    .line 1324
    :cond_1f
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fc3333333333333L    # 0.15

    cmpg-double v4, v4, v6

    if-gez v4, :cond_58

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double v2, p0, v0

    div-double/2addr p0, v2

    mul-double v2, p0, p0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    const-wide v6, 0x3fd999999999999aL    # 0.4

    const-wide v8, 0x3fd2492492492492L    # 0.2857142857142857

    const-wide v10, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v12, 0x3fc745d1745d1746L    # 0.18181818181818182

    mul-double/2addr v12, v2

    add-double/2addr v12, v10

    mul-double/2addr v12, v2

    add-double/2addr v12, v8

    mul-double/2addr v12, v2

    add-double/2addr v12, v6

    mul-double/2addr v12, v2

    add-double/2addr v12, v4

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    mul-double/2addr p0, v2

    return-wide p0

    .line 1330
    :cond_58
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    shr-int/lit8 v5, v4, 0x14

    add-int/lit16 v5, v5, -0x3ff

    shl-int/lit8 v4, v4, 0xc

    .line 1333
    sget v7, Lnet/jafama/AbstractFastMath;->LOG_BITS:I

    sub-int/2addr v6, v7

    ushr-int/2addr v4, v6

    neg-int v6, v5

    .line 1336
    invoke-static {v6}, Lnet/jafama/AbstractFastMath;->twoPowNormalOrSubnormal(I)D

    move-result-wide v6

    mul-double/2addr v6, v2

    sget-object v8, Lnet/jafama/AbstractFastMath;->logXInvTab:[D

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    sub-double/2addr v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v8, v6

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    int-to-double v8, v5

    .line 1345
    sget-wide v10, Lnet/jafama/AbstractFastMath;->LOG_2:D

    mul-double/2addr v8, v10

    sget-object v5, Lnet/jafama/AbstractFastMath;->logXLogTab:[D

    aget-wide v4, v5, v4

    add-double/2addr v8, v4

    sub-double v0, v2, v0

    sub-double/2addr p0, v0

    div-double/2addr p0, v2

    add-double/2addr v6, p0

    add-double/2addr v8, v6

    return-wide v8

    :cond_97
    if-nez v0, :cond_9c

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_9c
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static log2(I)I
    .registers 1

    .line 1360
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->log2(I)I

    move-result p0

    return p0
.end method

.method public static log2(J)I
    .registers 2

    .line 1370
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->log2(J)I

    move-result p0

    return p0
.end method

.method public static logQuick(D)D
    .registers 9

    .line 1233
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1234
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide v0, 0x3febd70a3d70a3d7L    # 0.87

    cmpl-double v0, p0, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_27

    const-wide v3, 0x3ff28f5c28f5c28fL    # 1.16

    cmpg-double v0, p0, v3

    if-gez v0, :cond_36

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, p0, v2

    mul-double/2addr v4, v0

    add-double/2addr p0, v2

    div-double/2addr v4, p0

    return-wide v4

    .line 1252
    :cond_27
    sget-wide v3, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    cmpg-double v0, p0, v3

    if-gez v0, :cond_36

    .line 1253
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    mul-double/2addr p0, v0

    const-wide/high16 v0, -0x3fb6000000000000L    # -52.0

    .line 1254
    sget-wide v2, Lnet/jafama/AbstractFastMath;->LOG_2:D

    mul-double v1, v2, v0

    .line 1259
    :cond_36
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    shr-int/lit8 p1, p0, 0x14

    add-int/lit16 p1, p1, -0x3ff

    shl-int/lit8 p0, p0, 0xc

    .line 1261
    sget v3, Lnet/jafama/AbstractFastMath;->LOG_BITS:I

    sub-int/2addr v0, v3

    ushr-int/2addr p0, v0

    int-to-double v3, p1

    .line 1263
    sget-wide v5, Lnet/jafama/AbstractFastMath;->LOG_2:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    sget-object p1, Lnet/jafama/AbstractFastMath;->logXLogTab:[D

    aget-wide p0, p1, p0

    add-double/2addr v1, p0

    return-wide v1
.end method

.method public static max(DD)D
    .registers 4

    .line 3073
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static max(FF)F
    .registers 2

    .line 3070
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static max(II)I
    .registers 2

    .line 3064
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static max(JJ)J
    .registers 4

    .line 3067
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static min(DD)D
    .registers 4

    .line 3061
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static min(FF)F
    .registers 2

    .line 3058
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static min(II)I
    .registers 2

    .line 3052
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static min(JJ)J
    .registers 4

    .line 3055
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static multiplyBounded(II)I
    .registers 2

    .line 2410
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->timesBounded(II)I

    move-result p0

    return p0
.end method

.method public static multiplyBounded(JJ)J
    .registers 4

    .line 2419
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->timesBounded(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static multiplyExact(II)I
    .registers 2

    .line 2391
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->timesExact(II)I

    move-result p0

    return p0
.end method

.method public static multiplyExact(JJ)J
    .registers 4

    .line 2401
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->timesExact(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static nextAfter(DD)D
    .registers 11

    cmpl-double v0, p2, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_1c

    add-double/2addr p0, v5

    .line 2884
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p2, p0, v3

    if-ltz p2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    int-to-long p2, v1

    add-long/2addr p0, p2

    .line 2885
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_1c
    cmpg-double v0, p2, p0

    if-gez v0, :cond_3a

    cmpl-double p2, p0, v5

    if-nez p2, :cond_2a

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    .line 2892
    :cond_2a
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p2, p0, v3

    if-lez p2, :cond_33

    move v1, v2

    :cond_33
    int-to-long p2, v1

    add-long/2addr p0, p2

    .line 2893
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_3a
    cmpl-double v0, p0, p2

    if-nez v0, :cond_3f

    return-wide p2

    :cond_3f
    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static nextAfter(FD)F
    .registers 9

    float-to-double v0, p0

    cmpl-double v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-lez v2, :cond_17

    add-float/2addr p0, v5

    .line 2849
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-ltz p0, :cond_10

    goto :goto_11

    :cond_10
    move v3, v4

    :goto_11
    add-int/2addr p0, v3

    .line 2850
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_17
    cmpg-double v2, p1, v0

    if-gez v2, :cond_30

    cmpl-float p1, p0, v5

    if-nez p1, :cond_23

    const p0, -0x7fffffff

    return p0

    .line 2857
    :cond_23
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-lez p0, :cond_2a

    move v3, v4

    :cond_2a
    add-int/2addr p0, v3

    .line 2858
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_30
    cmpl-double v0, v0, p1

    if-nez v0, :cond_36

    double-to-float p0, p1

    return p0

    :cond_36
    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static nextDown(D)D
    .registers 5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-lez v2, :cond_26

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_12

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    .line 2930
    :cond_12
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1e

    const/4 v0, -0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 2931
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_26
    if-nez v2, :cond_29

    return-wide v0

    :cond_29
    return-wide p0
.end method

.method public static nextDown(F)F
    .registers 3

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1e

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_f

    const p0, -0x7fffffff

    return p0

    .line 2911
    :cond_f
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-lez p0, :cond_17

    const/4 v0, -0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x1

    :goto_18
    add-int/2addr p0, v0

    .line 2912
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_1e
    if-nez v1, :cond_21

    return v0

    :cond_21
    return p0
.end method

.method public static nextUp(D)D
    .registers 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1d

    const-wide/16 v0, 0x0

    add-double/2addr p0, v0

    .line 2962
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    :goto_16
    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 2963
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_1d
    cmpl-double v2, p0, v0

    if-nez v2, :cond_22

    return-wide v0

    :cond_22
    return-wide p0
.end method

.method public static nextUp(F)F
    .registers 3

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v1, p0, v0

    if-gez v1, :cond_17

    const/4 v0, 0x0

    add-float/2addr p0, v0

    .line 2946
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-ltz p0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    add-int/2addr p0, v0

    .line 2947
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_17
    cmpl-float v1, p0, v0

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    return p0
.end method

.method public static normalizeMinusHalfPiHalfPi(D)D
    .registers 4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_13

    return-wide p0

    .line 2630
    :cond_13
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderPi(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeMinusHalfPiHalfPiFast(D)D
    .registers 4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_13

    return-wide p0

    .line 2644
    :cond_13
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderPiFast(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeMinusPiPi(D)D
    .registers 4

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_13

    return-wide p0

    .line 2566
    :cond_13
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderTwoPi(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeMinusPiPiFast(D)D
    .registers 4

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_13

    return-wide p0

    .line 2580
    :cond_13
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderTwoPiFast(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeZeroTwoPi(D)D
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_10

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_10

    return-wide p0

    .line 2592
    :cond_10
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderTwoPi(D)D

    move-result-wide p0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1e

    .line 2595
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    add-double/2addr p0, v0

    :cond_1e
    return-wide p0
.end method

.method public static normalizeZeroTwoPiFast(D)D
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_10

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_10

    return-wide p0

    .line 2612
    :cond_10
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderTwoPiFast(D)D

    move-result-wide p0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1e

    .line 2615
    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    add-double/2addr p0, v0

    :cond_1e
    return-wide p0
.end method

.method public static pow(DD)D
    .registers 21

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 1385
    sget-boolean v4, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v4, :cond_d

    .line 1386
    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-nez v6, :cond_16

    return-wide v7

    :cond_16
    cmpl-double v6, v2, v7

    if-nez v6, :cond_1b

    return-wide v0

    :cond_1b
    cmpg-double v6, v0, v4

    if-gtz v6, :cond_9e

    .line 1396
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    cmpl-double v6, v9, v11

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    const/4 v12, 0x1

    if-ltz v6, :cond_31

    :goto_2f
    move v11, v12

    goto :goto_63

    .line 1403
    :cond_31
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v6, v13, v15

    const/4 v13, -0x1

    if-gtz v6, :cond_4d

    double-to-int v6, v2

    int-to-double v14, v6

    cmpl-double v14, v2, v14

    if-nez v14, :cond_4b

    and-int/2addr v6, v12

    if-nez v6, :cond_49

    goto :goto_2f

    :cond_49
    move v11, v13

    goto :goto_63

    :cond_4b
    const/4 v11, 0x0

    goto :goto_63

    :cond_4d
    double-to-long v14, v2

    long-to-double v11, v14

    cmpl-double v11, v2, v11

    if-nez v11, :cond_5e

    const-wide/16 v11, 0x1

    and-long/2addr v11, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v11, v14

    if-nez v6, :cond_49

    const/4 v11, 0x1

    goto :goto_63

    :cond_5e
    cmpl-double v11, v2, v2

    if-eqz v11, :cond_4b

    return-wide v9

    :goto_63
    cmpl-double v6, v0, v4

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-nez v6, :cond_77

    cmpg-double v2, v2, v4

    if-gez v2, :cond_72

    if-gez v11, :cond_71

    div-double v12, v7, v0

    :cond_71
    return-wide v12

    :cond_72
    if-gez v11, :cond_75

    goto :goto_76

    :cond_75
    move-wide v0, v4

    :goto_76
    return-wide v0

    :cond_77
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v8, v0, v6

    if-nez v8, :cond_8d

    if-gez v11, :cond_86

    cmpg-double v0, v2, v4

    if-gez v0, :cond_85

    const-wide/high16 v6, -0x8000000000000000L

    :cond_85
    return-wide v6

    :cond_86
    cmpg-double v0, v2, v4

    if-gez v0, :cond_8b

    goto :goto_8c

    :cond_8b
    move-wide v4, v12

    :goto_8c
    return-wide v4

    :cond_8d
    if-nez v11, :cond_90

    goto :goto_9d

    :cond_90
    int-to-double v4, v11

    neg-double v0, v0

    .line 1437
    invoke-static {v0, v1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide v0

    mul-double v9, v4, v0

    :goto_9d
    return-wide v9

    .line 1441
    :cond_9e
    invoke-static/range {p0 .. p1}, Lnet/jafama/FastMath;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pow2(D)D
    .registers 2

    mul-double/2addr p0, p0

    return-wide p0
.end method

.method public static pow2(F)F
    .registers 1

    mul-float/2addr p0, p0

    return p0
.end method

.method public static pow2(I)I
    .registers 1

    mul-int/2addr p0, p0

    return p0
.end method

.method public static pow2(J)J
    .registers 2

    mul-long/2addr p0, p0

    return-wide p0
.end method

.method public static pow3(D)D
    .registers 4

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static pow3(F)F
    .registers 2

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static pow3(I)I
    .registers 2

    mul-int v0, p0, p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static pow3(J)J
    .registers 4

    mul-long v0, p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static powFast(DI)D
    .registers 9

    .line 1472
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_a

    int-to-double v0, p2

    .line 1473
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :cond_a
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-le p2, v1, :cond_2c

    :cond_11
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_16

    mul-double/2addr v3, p0

    :cond_16
    mul-double/2addr p0, p0

    shr-int/lit8 p2, p2, 0x1

    if-gt p2, v1, :cond_11

    if-ne p2, v2, :cond_21

    mul-double/2addr v3, p0

    mul-double/2addr v3, p0

    mul-double/2addr v3, p0

    return-wide v3

    :cond_21
    mul-double v1, p0, p0

    if-ne p2, v0, :cond_28

    mul-double/2addr v3, v1

    mul-double/2addr v3, v1

    return-wide v3

    :cond_28
    mul-double/2addr v3, v1

    mul-double/2addr v3, v1

    mul-double/2addr v3, p0

    return-wide v3

    :cond_2c
    if-ltz p2, :cond_48

    if-ge p2, v2, :cond_39

    const/4 v0, 0x2

    if-ne p2, v0, :cond_35

    mul-double/2addr p0, p0

    return-wide p0

    :cond_35
    if-eqz p2, :cond_38

    return-wide p0

    :cond_38
    return-wide v3

    :cond_39
    if-ne p2, v2, :cond_3f

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0

    :cond_3f
    mul-double v1, p0, p0

    if-ne p2, v0, :cond_45

    mul-double/2addr v1, v1

    return-wide v1

    :cond_45
    mul-double/2addr v1, v1

    mul-double/2addr v1, p0

    return-wide v1

    :cond_48
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_56

    const p2, 0x7fffffff

    .line 1521
    invoke-static {p0, p1, p2}, Lnet/jafama/FastMath;->powFast(DI)D

    move-result-wide v0

    mul-double/2addr v0, p0

    div-double/2addr v3, v0

    return-wide v3

    :cond_56
    neg-int p2, p2

    .line 1523
    invoke-static {p0, p1, p2}, Lnet/jafama/FastMath;->powFast(DI)D

    move-result-wide p0

    div-double/2addr v3, p0

    return-wide v3
.end method

.method public static powQuick(DD)D
    .registers 5

    .line 1456
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1457
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    .line 1459
    :cond_9
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->logQuick(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static random()D
    .registers 2

    .line 3079
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static remainder(DD)D
    .registers 8

    .line 2542
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2543
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_e

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_e
    return-wide p0

    :cond_f
    rem-double/2addr p0, p2

    add-double v0, p0, p0

    .line 2550
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    .line 2551
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    if-lez v0, :cond_29

    neg-double p2, p2

    :cond_29
    add-double/2addr p0, p2

    :cond_2a
    return-wide p0
.end method

.method private static remainderPi(D)D
    .registers 9

    .line 3133
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 3134
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->jdkRemainderPi(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_12

    neg-double p0, p0

    const/4 v0, 0x1

    :cond_12
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 3141
    sget-wide v3, Lnet/jafama/AbstractFastMath;->NORMALIZE_ANGLE_MAX_MEDIUM_DOUBLE_PIO2:D

    mul-double/2addr v3, v1

    cmpg-double v1, p0, v3

    if-gtz v1, :cond_47

    .line 3142
    sget-wide v1, Lnet/jafama/AbstractFastMath;->PI_INV:D

    mul-double/2addr v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v1, v1

    .line 3143
    sget-wide v3, Lnet/jafama/AbstractFastMath;->PI_HI:D

    mul-double v5, v1, v3

    sub-double/2addr p0, v5

    sget-wide v5, Lnet/jafama/AbstractFastMath;->PI_LO:D

    mul-double/2addr v1, v5

    sub-double/2addr p0, v1

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v1, p0, v1

    if-gez v1, :cond_38

    add-double/2addr p0, v3

    add-double/2addr p0, v5

    goto :goto_43

    :cond_38
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v1, p0, v1

    if-lez v1, :cond_43

    sub-double/2addr p0, v3

    sub-double/2addr p0, v5

    :cond_43
    :goto_43
    if-eqz v0, :cond_46

    neg-double p0, p0

    :cond_46
    return-wide p0

    :cond_47
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v1, p0, v1

    if-gez v1, :cond_55

    .line 3153
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->heavyRemainderPi(D)D

    move-result-wide p0

    if-eqz v0, :cond_54

    neg-double p0, p0

    :cond_54
    return-wide p0

    :cond_55
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method private static remainderPiFast(D)D
    .registers 14

    .line 3260
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 3261
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->jdkRemainderPi(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_12

    neg-double p0, p0

    const/4 v0, 0x1

    .line 3273
    :cond_12
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v3, v5

    cmpg-double v7, p0, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-lez v7, :cond_4b

    .line 3275
    sget-wide v10, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    mul-double/2addr v10, v5

    cmpg-double v5, p0, v10

    if-gtz v5, :cond_41

    .line 3277
    sget-wide v5, Lnet/jafama/AbstractFastMath;->PI_INV:D

    div-double/2addr v5, v3

    mul-double/2addr v5, p0

    add-double/2addr v5, v8

    double-to-int v5, v5

    int-to-double v5, v5

    .line 3278
    sget-wide v10, Lnet/jafama/AbstractFastMath;->PI_HI:D

    mul-double/2addr v10, v3

    mul-double/2addr v10, v5

    sub-double/2addr p0, v10

    sget-wide v10, Lnet/jafama/AbstractFastMath;->PI_LO:D

    mul-double/2addr v10, v3

    mul-double/2addr v5, v10

    sub-double/2addr p0, v5

    cmpg-double v1, p0, v1

    if-gez v1, :cond_4b

    neg-double p0, p0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_41
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double p0, p0, v3

    if-gez p0, :cond_48

    return-wide v1

    :cond_48
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 3291
    :cond_4b
    :goto_4b
    sget-wide v1, Lnet/jafama/AbstractFastMath;->PI_INV:D

    mul-double/2addr v1, p0

    add-double/2addr v1, v8

    double-to-int v1, v1

    int-to-double v1, v1

    .line 3292
    sget-wide v3, Lnet/jafama/AbstractFastMath;->PI_HI:D

    mul-double v5, v1, v3

    sub-double/2addr p0, v5

    sget-wide v5, Lnet/jafama/AbstractFastMath;->PI_LO:D

    mul-double/2addr v1, v5

    sub-double/2addr p0, v1

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v1, p0, v1

    if-gez v1, :cond_66

    add-double/2addr p0, v3

    add-double/2addr p0, v5

    goto :goto_71

    :cond_66
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v1, p0, v1

    if-lez v1, :cond_71

    sub-double/2addr p0, v3

    sub-double/2addr p0, v5

    :cond_71
    :goto_71
    if-eqz v0, :cond_74

    neg-double p0, p0

    :cond_74
    return-wide p0
.end method

.method private static remainderPiO2(D)J
    .registers 10

    .line 3166
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3167
    invoke-static {p0, p1, v1}, Lnet/jafama/AbstractFastMath;->jdkRemainderPiO2(DZ)J

    move-result-wide p0

    return-wide p0

    :cond_a
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_13

    neg-double p0, p0

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v1

    .line 3174
    :goto_14
    sget-wide v2, Lnet/jafama/AbstractFastMath;->NORMALIZE_ANGLE_MAX_MEDIUM_DOUBLE_PIO2:D

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_50

    .line 3175
    sget-wide v1, Lnet/jafama/AbstractFastMath;->PIO2_INV:D

    mul-double/2addr v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v2, v1

    .line 3177
    sget-wide v4, Lnet/jafama/AbstractFastMath;->PIO2_HI:D

    mul-double v6, v2, v4

    sub-double/2addr p0, v6

    sget-wide v6, Lnet/jafama/AbstractFastMath;->PIO2_LO:D

    mul-double/2addr v2, v6

    sub-double/2addr p0, v2

    const-wide v2, -0x4016de04abbbd2e8L    # -0.7853981633974483

    cmpg-double v2, p0, v2

    if-gez v2, :cond_39

    add-double/2addr p0, v4

    add-double/2addr p0, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    :cond_39
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpl-double v2, p0, v2

    if-lez v2, :cond_46

    sub-double/2addr p0, v4

    sub-double/2addr p0, v6

    add-int/lit8 v1, v1, 0x1

    :cond_46
    :goto_46
    if-eqz v0, :cond_49

    neg-double p0, p0

    :cond_49
    and-int/lit8 v0, v1, 0x3

    .line 3190
    invoke-static {p0, p1, v0}, Lnet/jafama/AbstractFastMath;->encodeRemainderAndQuadrant(DI)J

    move-result-wide p0

    return-wide p0

    :cond_50
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v2, p0, v2

    if-gez v2, :cond_5b

    .line 3192
    invoke-static {p0, p1, v0}, Lnet/jafama/AbstractFastMath;->heavyRemainderPiO2(DZ)J

    move-result-wide p0

    return-wide p0

    :cond_5b
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 3194
    invoke-static {p0, p1, v1}, Lnet/jafama/AbstractFastMath;->encodeRemainderAndQuadrant(DI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static remainderTwoPi(D)D
    .registers 9

    .line 3101
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 3102
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->jdkRemainderTwoPi(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_12

    neg-double p0, p0

    const/4 v0, 0x1

    :cond_12
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 3109
    sget-wide v3, Lnet/jafama/AbstractFastMath;->NORMALIZE_ANGLE_MAX_MEDIUM_DOUBLE_PIO2:D

    mul-double/2addr v3, v1

    cmpg-double v1, p0, v3

    if-gtz v1, :cond_47

    .line 3110
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWOPI_INV:D

    mul-double/2addr v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v1, v1

    .line 3111
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    mul-double v5, v1, v3

    sub-double/2addr p0, v5

    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    mul-double/2addr v1, v5

    sub-double/2addr p0, v1

    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v1, p0, v1

    if-gez v1, :cond_38

    add-double/2addr p0, v3

    add-double/2addr p0, v5

    goto :goto_43

    :cond_38
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, p0, v1

    if-lez v1, :cond_43

    sub-double/2addr p0, v3

    sub-double/2addr p0, v5

    :cond_43
    :goto_43
    if-eqz v0, :cond_46

    neg-double p0, p0

    :cond_46
    return-wide p0

    :cond_47
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v1, p0, v1

    if-gez v1, :cond_55

    .line 3121
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->heavyRemainderTwoPi(D)D

    move-result-wide p0

    if-eqz v0, :cond_54

    neg-double p0, p0

    :cond_54
    return-wide p0

    :cond_55
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method private static remainderTwoPiFast(D)D
    .registers 14

    .line 3209
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 3210
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->jdkRemainderTwoPi(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_12

    neg-double p0, p0

    const/4 v0, 0x1

    .line 3222
    :cond_12
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_26:D

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v7, v3, v5

    cmpg-double v7, p0, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-lez v7, :cond_4b

    .line 3224
    sget-wide v10, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    mul-double/2addr v10, v5

    cmpg-double v5, p0, v10

    if-gtz v5, :cond_41

    .line 3226
    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWOPI_INV:D

    div-double/2addr v5, v3

    mul-double/2addr v5, p0

    add-double/2addr v5, v8

    double-to-int v5, v5

    int-to-double v5, v5

    .line 3227
    sget-wide v10, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    mul-double/2addr v10, v3

    mul-double/2addr v10, v5

    sub-double/2addr p0, v10

    sget-wide v10, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    mul-double/2addr v10, v3

    mul-double/2addr v5, v10

    sub-double/2addr p0, v5

    cmpg-double v1, p0, v1

    if-gez v1, :cond_4b

    neg-double p0, p0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_41
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double p0, p0, v3

    if-gez p0, :cond_48

    return-wide v1

    :cond_48
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 3240
    :cond_4b
    :goto_4b
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWOPI_INV:D

    mul-double/2addr v1, p0

    add-double/2addr v1, v8

    double-to-int v1, v1

    int-to-double v1, v1

    .line 3241
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWOPI_HI:D

    mul-double v5, v1, v3

    sub-double/2addr p0, v5

    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWOPI_LO:D

    mul-double/2addr v1, v5

    sub-double/2addr p0, v1

    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v1, p0, v1

    if-gez v1, :cond_66

    add-double/2addr p0, v3

    add-double/2addr p0, v5

    goto :goto_71

    :cond_66
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, p0, v1

    if-lez v1, :cond_71

    sub-double/2addr p0, v3

    sub-double/2addr p0, v5

    :cond_71
    :goto_71
    if-eqz v0, :cond_74

    neg-double p0, p0

    :cond_74
    return-wide p0
.end method

.method public static rint(D)D
    .registers 6

    .line 2247
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2248
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    return-wide p0

    .line 2250
    :cond_9
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->signFromBit(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2251
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2252
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1a

    add-double/2addr p0, v1

    sub-double/2addr p0, v1

    :cond_1a
    int-to-double v0, v0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static rint(F)F
    .registers 4

    .line 2230
    invoke-static {p0}, Lnet/jafama/FastMath;->signFromBit(F)I

    move-result v0

    .line 2231
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 2232
    sget v1, Lnet/jafama/AbstractFastMath;->TWO_POW_23_F:F

    cmpg-float v2, p0, v1

    if-gez v2, :cond_10

    add-float/2addr p0, v1

    sub-float/2addr p0, v1

    :cond_10
    int-to-float v0, v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static round(F)I
    .registers 4

    .line 2111
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    shr-int/lit8 v1, v0, 0x17

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0x95

    and-int/lit8 v2, v1, -0x20

    if-nez v2, :cond_1e

    const/high16 p0, 0x800000

    const v2, 0x7fffff

    and-int/2addr v2, v0

    or-int/2addr p0, v2

    if-gez v0, :cond_18

    neg-int p0, p0

    :cond_18
    shr-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    return p0

    :cond_1e
    float-to-int p0, p0

    return p0
.end method

.method public static round(D)J
    .registers 7

    .line 2148
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x7ff

    rsub-int v2, v2, 0x432

    and-int/lit8 v3, v2, -0x40

    if-nez v3, :cond_28

    const-wide/high16 p0, 0x10000000000000L

    const-wide v3, 0xfffffffffffffL

    and-long/2addr v3, v0

    or-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_21

    neg-long p0, p0

    :cond_21
    shr-long/2addr p0, v2

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0

    .line 2166
    :cond_28
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_41

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_3b

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_40

    :cond_3b
    const-wide p0, 0x7fffffffffffffffL

    :goto_40
    return-wide p0

    :cond_41
    double-to-long p0, p0

    return-wide p0
.end method

.method public static roundEven(F)I
    .registers 4

    .line 2182
    invoke-static {p0}, Lnet/jafama/FastMath;->signFromBit(F)I

    move-result v0

    .line 2183
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 2185
    sget v1, Lnet/jafama/AbstractFastMath;->TWO_POW_23_F:F

    cmpg-float v2, p0, v1

    if-gez v2, :cond_13

    add-float/2addr p0, v1

    sub-float/2addr p0, v1

    :goto_10
    float-to-int p0, p0

    mul-int/2addr v0, p0

    return v0

    :cond_13
    const/high16 v1, 0x4f000000

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1a

    goto :goto_10

    :cond_1a
    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static roundEven(D)J
    .registers 6

    .line 2208
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->signFromBit(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2209
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2210
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    cmpg-double v3, p0, v1

    if-gez v3, :cond_11

    add-double/2addr p0, v1

    sub-double/2addr p0, v1

    :cond_11
    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v1, p0, v1

    if-gtz v1, :cond_1e

    double-to-int p0, p0

    mul-int/2addr v0, p0

    int-to-long p0, v0

    return-wide p0

    :cond_1e
    int-to-double v0, v0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public static scalb(DI)D
    .registers 10

    const/16 v0, -0x3ff

    if-le p2, v0, :cond_e

    const/16 v0, 0x3ff

    if-gt p2, v0, :cond_e

    .line 3002
    invoke-static {p2}, Lnet/jafama/AbstractFastMath;->twoPowNormal(I)D

    move-result-wide v0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_e
    if-gez p2, :cond_1b

    const/16 v0, -0x833

    .line 3014
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, -0x200

    .line 3016
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWO_POW_N512:D

    goto :goto_25

    :cond_1b
    const/16 v0, 0x833

    .line 3018
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, 0x200

    .line 3020
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TWO_POW_512:D

    :goto_25
    shr-int/lit8 v3, p2, 0x8

    ushr-int/lit8 v3, v3, 0x17

    add-int v4, p2, v3

    and-int/lit16 v4, v4, 0x1ff

    sub-int/2addr v4, v3

    .line 3028
    invoke-static {v4}, Lnet/jafama/AbstractFastMath;->twoPowNormal(I)D

    move-result-wide v5

    mul-double/2addr p0, v5

    sub-int/2addr p2, v4

    :goto_34
    if-nez p2, :cond_37

    return-wide p0

    :cond_37
    mul-double/2addr p0, v1

    sub-int/2addr p2, v0

    goto :goto_34
.end method

.method public static scalb(FI)F
    .registers 4

    const/16 v0, 0x116

    .line 2986
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, -0x116

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    float-to-double v0, p0

    .line 2988
    invoke-static {p1}, Lnet/jafama/AbstractFastMath;->twoPowNormal(I)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static signFromBit(F)I
    .registers 1

    .line 2722
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1e

    or-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static signFromBit(D)J
    .registers 4

    .line 2731
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x3e

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static signum(D)D
    .registers 4

    .line 2704
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2705
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1a

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_14

    goto :goto_1a

    .line 2711
    :cond_14
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->signFromBit(D)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-double p0, p0

    :cond_1a
    :goto_1a
    return-wide p0
.end method

.method public static signum(F)F
    .registers 2

    .line 2689
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2690
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    return p0

    :cond_9
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_18

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_13

    goto :goto_18

    .line 2695
    :cond_13
    invoke-static {p0}, Lnet/jafama/FastMath;->signFromBit(F)I

    move-result p0

    int-to-float p0, p0

    :cond_18
    :goto_18
    return p0
.end method

.method public static sin(D)D
    .registers 16

    .line 115
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 116
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_13

    neg-double p0, p0

    move v0, v2

    .line 123
    :cond_13
    sget-wide v3, Lnet/jafama/AbstractFastMath;->SIN_COS_MAX_VALUE_FOR_INT_MODULO:D

    cmpl-double v1, p0, v3

    const/4 v3, 0x2

    if-lez v1, :cond_44

    .line 132
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderPiO2(D)J

    move-result-wide p0

    .line 133
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeRemainder(J)D

    move-result-wide v4

    .line 135
    invoke-static {p0, p1}, Lnet/jafama/AbstractFastMath;->decodeQuadrant(J)I

    move-result p0

    if-nez p0, :cond_2d

    .line 137
    invoke-static {v4, v5}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide p0

    goto :goto_40

    :cond_2d
    if-ne p0, v2, :cond_34

    .line 139
    invoke-static {v4, v5}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide p0

    goto :goto_40

    :cond_34
    if-ne p0, v3, :cond_3b

    .line 141
    invoke-static {v4, v5}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide p0

    goto :goto_3f

    .line 143
    :cond_3b
    invoke-static {v4, v5}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide p0

    :goto_3f
    neg-double p0, p0

    :goto_40
    if-eqz v0, :cond_43

    neg-double p0, p0

    :cond_43
    return-wide p0

    .line 149
    :cond_44
    sget-wide v1, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    mul-double/2addr v1, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v4

    double-to-int v1, v1

    int-to-double v6, v1

    .line 150
    sget-wide v8, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_HI:D

    mul-double/2addr v8, v6

    sub-double/2addr p0, v8

    sget-wide v8, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_LO:D

    mul-double/2addr v6, v8

    sub-double/2addr p0, v6

    .line 154
    sget v2, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    .line 155
    sget-object v2, Lnet/jafama/AbstractFastMath;->sinTab:[D

    aget-wide v2, v2, v1

    .line 156
    sget-object v6, Lnet/jafama/AbstractFastMath;->cosTab:[D

    aget-wide v6, v6, v1

    neg-double v8, v2

    mul-double/2addr v8, v4

    neg-double v4, v6

    const-wide v10, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr v4, v10

    mul-double v10, p0, v2

    const-wide v12, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    mul-double/2addr v4, p0

    add-double/2addr v8, v4

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr p0, v6

    add-double/2addr v2, p0

    if-eqz v0, :cond_7b

    neg-double v2, v2

    :cond_7b
    return-wide v2
.end method

.method public static sinAndCos(DLnet/jafama/DoubleWrapper;)D
    .registers 28

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    .line 245
    sget-boolean v3, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v3, :cond_13

    .line 246
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iput-wide v3, v2, Lnet/jafama/DoubleWrapper;->value:D

    .line 247
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0

    :cond_13
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    const/4 v5, 0x1

    if-gez v4, :cond_1d

    neg-double v0, v0

    move v3, v5

    .line 256
    :cond_1d
    sget-wide v6, Lnet/jafama/AbstractFastMath;->SIN_COS_MAX_VALUE_FOR_INT_MODULO:D

    cmpl-double v4, v0, v6

    const/4 v6, 0x2

    if-lez v4, :cond_69

    .line 265
    invoke-static {v0, v1}, Lnet/jafama/FastMath;->remainderPiO2(D)J

    move-result-wide v0

    .line 266
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->decodeRemainder(J)D

    move-result-wide v7

    .line 268
    invoke-static {v0, v1}, Lnet/jafama/AbstractFastMath;->decodeQuadrant(J)I

    move-result v0

    if-nez v0, :cond_3d

    .line 270
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide v0

    .line 271
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide v4

    iput-wide v4, v2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_65

    :cond_3d
    if-ne v0, v5, :cond_4b

    .line 273
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide v0

    .line 274
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    iput-wide v4, v2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_65

    :cond_4b
    if-ne v0, v6, :cond_5a

    .line 276
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 277
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    iput-wide v4, v2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_65

    .line 279
    :cond_5a
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 280
    invoke-static {v7, v8}, Lnet/jafama/FastMath;->sin(D)D

    move-result-wide v4

    iput-wide v4, v2, Lnet/jafama/DoubleWrapper;->value:D

    :goto_65
    if-eqz v3, :cond_68

    neg-double v0, v0

    :cond_68
    return-wide v0

    .line 285
    :cond_69
    sget-wide v4, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    mul-double/2addr v4, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v7

    double-to-int v4, v4

    int-to-double v9, v4

    .line 286
    sget-wide v11, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_HI:D

    mul-double/2addr v11, v9

    sub-double/2addr v0, v11

    sget-wide v11, Lnet/jafama/AbstractFastMath;->SIN_COS_DELTA_LO:D

    mul-double/2addr v9, v11

    sub-double/2addr v0, v9

    .line 287
    sget v5, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    sub-int/2addr v5, v6

    and-int/2addr v4, v5

    .line 288
    sget-object v5, Lnet/jafama/AbstractFastMath;->sinTab:[D

    aget-wide v5, v5, v4

    .line 289
    sget-object v9, Lnet/jafama/AbstractFastMath;->cosTab:[D

    aget-wide v9, v9, v4

    neg-double v11, v5

    neg-double v13, v9

    mul-double v15, v13, v7

    const-wide v17, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v19, v5, v17

    mul-double v21, v0, v9

    const-wide v23, 0x3fa5555555555555L    # 0.041666666666666664

    mul-double v21, v21, v23

    add-double v19, v19, v21

    mul-double v19, v19, v0

    add-double v15, v15, v19

    mul-double/2addr v15, v0

    add-double/2addr v15, v11

    mul-double/2addr v15, v0

    move/from16 p0, v3

    add-double v3, v9, v15

    .line 291
    iput-wide v3, v2, Lnet/jafama/DoubleWrapper;->value:D

    mul-double/2addr v11, v7

    mul-double v13, v13, v17

    mul-double v2, v0, v5

    mul-double v2, v2, v23

    add-double/2addr v13, v2

    mul-double/2addr v13, v0

    add-double/2addr v11, v13

    mul-double/2addr v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v0, v9

    add-double/2addr v5, v0

    if-eqz p0, :cond_b9

    neg-double v5, v5

    :cond_b9
    return-wide v5
.end method

.method public static sinQuick(D)D
    .registers 5

    .line 171
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 172
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0

    .line 174
    :cond_9
    sget-object v0, Lnet/jafama/AbstractFastMath;->cosTab:[D

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sget-wide v1, Lnet/jafama/AbstractFastMath;->SIN_COS_INDEXER:D

    mul-double/2addr p0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-int p0, p0

    sget p1, Lnet/jafama/AbstractFastMath;->SIN_COS_TABS_SIZE:I

    add-int/lit8 p1, p1, -0x2

    and-int/2addr p0, p1

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public static sinh(D)D
    .registers 11

    .line 643
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 644
    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-gez v2, :cond_15

    neg-double p0, p0

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto :goto_16

    :cond_15
    move-wide v5, v3

    :goto_16
    const-wide/high16 v7, 0x4036000000000000L    # 22.0

    cmpg-double v2, p0, v7

    if-gez v2, :cond_34

    .line 655
    sget-wide v2, Lnet/jafama/AbstractFastMath;->TWO_POW_N28:D

    cmpg-double v2, p0, v2

    if-gez v2, :cond_28

    cmpg-double v0, v5, v0

    if-gez v0, :cond_27

    neg-double p0, p0

    :cond_27
    return-wide p0

    .line 664
    :cond_28
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    div-double v0, p0, v0

    add-double/2addr p0, v0

    :goto_32
    mul-double/2addr v5, p0

    return-wide v5

    .line 668
    :cond_34
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_DOUBLE_MAX_VALUE:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3f

    .line 669
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    goto :goto_32

    :cond_3f
    mul-double/2addr p0, v3

    .line 671
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v5, p0

    goto :goto_32
.end method

.method public static sinhAndCosh(DLnet/jafama/DoubleWrapper;)D
    .registers 14

    .line 779
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_f

    .line 780
    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    iput-wide v0, p2, Lnet/jafama/DoubleWrapper;->value:D

    .line 781
    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    return-wide p0

    :cond_f
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-gez v2, :cond_1b

    neg-double p0, p0

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto :goto_1c

    :cond_1b
    move-wide v5, v3

    .line 794
    :goto_1c
    sget-wide v7, Lnet/jafama/AbstractFastMath;->LOG_TWO_POW_27:D

    cmpg-double v2, p0, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_4f

    .line 796
    sget-wide v9, Lnet/jafama/AbstractFastMath;->TWO_POW_N28:D

    cmpg-double v2, p0, v9

    if-gez v2, :cond_32

    cmpg-double v0, v5, v0

    if-gez v0, :cond_30

    neg-double v0, p0

    goto :goto_3c

    :cond_30
    move-wide v0, p0

    goto :goto_3c

    .line 799
    :cond_32
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide v0

    add-double v9, v0, v7

    div-double v9, v0, v9

    add-double/2addr v0, v9

    mul-double/2addr v0, v5

    .line 803
    :goto_3c
    sget-wide v5, Lnet/jafama/AbstractFastMath;->TWO_POW_N27:D

    cmpg-double v2, p0, v5

    if-gez v2, :cond_45

    .line 804
    iput-wide v7, p2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_7c

    .line 806
    :cond_45
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    div-double/2addr v7, p0

    add-double/2addr p0, v7

    mul-double/2addr p0, v3

    .line 807
    iput-wide p0, p2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_7c

    :cond_4f
    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_63

    .line 811
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide p0

    add-double/2addr v7, p0

    div-double v0, p0, v7

    add-double/2addr p0, v0

    mul-double v0, v5, p0

    mul-double/2addr v7, v3

    .line 813
    iput-wide v7, p2, Lnet/jafama/DoubleWrapper;->value:D

    goto :goto_7c

    .line 815
    :cond_63
    sget-wide v0, Lnet/jafama/AbstractFastMath;->LOG_DOUBLE_MAX_VALUE:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6e

    .line 816
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    goto :goto_74

    :cond_6e
    mul-double/2addr p0, v3

    .line 818
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v5, p0

    :goto_74
    mul-double/2addr v5, p0

    move-wide v0, v5

    .line 821
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    iput-wide p0, p2, Lnet/jafama/DoubleWrapper;->value:D

    :goto_7c
    return-wide v0
.end method

.method public static sqrt(D)D
    .registers 11

    .line 1623
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-nez v0, :cond_66

    sget-boolean v0, Lnet/jafama/FastMath;->USE_REDEFINED_SQRT:Z

    if-nez v0, :cond_9

    goto :goto_66

    :cond_9
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_16

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_15
    return-wide p0

    :cond_16
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1d

    return-wide v0

    .line 1639
    :cond_1d
    sget-wide v0, Lnet/jafama/AbstractFastMath;->DOUBLE_MIN_NORMAL:D

    cmpg-double v0, p0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_2b

    .line 1640
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_52:D

    mul-double/2addr p0, v3

    .line 1641
    sget-wide v3, Lnet/jafama/AbstractFastMath;->TWO_POW_N26:D

    mul-double/2addr v1, v3

    .line 1646
    :cond_2b
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    const/16 v0, 0x20

    shr-long/2addr v3, v0

    long-to-int v3, v3

    shr-int/lit8 v4, v3, 0x14

    add-int/lit8 v4, v4, 0x33

    shl-int/lit8 v3, v3, 0xc

    .line 1648
    sget v5, Lnet/jafama/AbstractFastMath;->SQRT_LO_BITS:I

    sub-int/2addr v0, v5

    ushr-int v0, v3, v0

    .line 1650
    sget-object v3, Lnet/jafama/AbstractFastMath;->sqrtXSqrtHiTab:[D

    aget-wide v5, v3, v4

    sget-object v3, Lnet/jafama/AbstractFastMath;->sqrtXSqrtLoTab:[D

    aget-wide v7, v3, v0

    mul-double/2addr v5, v7

    .line 1651
    sget-object v3, Lnet/jafama/AbstractFastMath;->sqrtSlopeHiTab:[D

    aget-wide v3, v3, v4

    sget-object v7, Lnet/jafama/AbstractFastMath;->sqrtSlopeLoTab:[D

    aget-wide v7, v7, v0

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p0, v7

    mul-double v7, v5, v5

    sub-double v7, p0, v7

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    mul-double v7, v5, v5

    sub-double v7, p0, v7

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    mul-double v7, v5, v5

    sub-double/2addr p0, v7

    mul-double/2addr p0, v3

    add-double/2addr v5, p0

    mul-double/2addr v1, v5

    return-wide v1

    .line 1624
    :cond_66
    :goto_66
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sqrtQuick(D)D
    .registers 4

    .line 1668
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 1669
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 1671
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0x3feed9eba1b2fd00L

    add-long/2addr p0, v0

    const/4 v0, 0x1

    ushr-long/2addr p0, v0

    .line 1676
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static subtractBounded(II)I
    .registers 2

    .line 2372
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->minusBounded(II)I

    move-result p0

    return p0
.end method

.method public static subtractBounded(JJ)J
    .registers 4

    .line 2381
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->minusBounded(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static subtractExact(II)I
    .registers 2

    .line 2353
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->minusExact(II)I

    move-result p0

    return p0
.end method

.method public static subtractExact(JJ)J
    .registers 4

    .line 2363
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->minusExact(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static tan(D)D
    .registers 15

    .line 305
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 306
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    const/4 v4, 0x1

    if-gez v3, :cond_13

    neg-double p0, p0

    move v0, v4

    .line 313
    :cond_13
    sget-wide v5, Lnet/jafama/AbstractFastMath;->TAN_MAX_VALUE_FOR_INT_MODULO:D

    cmpl-double v3, p0, v5

    if-lez v3, :cond_24

    .line 314
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->remainderPi(D)D

    move-result-wide p0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_24

    neg-double p0, p0

    xor-int/lit8 v0, v0, 0x1

    .line 321
    :cond_24
    sget-wide v1, Lnet/jafama/AbstractFastMath;->TAN_INDEXER:D

    mul-double/2addr v1, p0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v5

    double-to-int v1, v1

    int-to-double v2, v1

    .line 322
    sget-wide v5, Lnet/jafama/AbstractFastMath;->TAN_DELTA_HI:D

    mul-double/2addr v5, v2

    sub-double/2addr p0, v5

    sget-wide v5, Lnet/jafama/AbstractFastMath;->TAN_DELTA_LO:D

    mul-double/2addr v2, v5

    sub-double/2addr p0, v2

    .line 325
    sget v2, Lnet/jafama/AbstractFastMath;->TAN_VIRTUAL_TABS_SIZE:I

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    and-int/2addr v1, v3

    add-int/lit8 v3, v2, -0x1

    if-le v1, v3, :cond_49

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v3, v1

    neg-double p0, p0

    xor-int/lit8 v0, v0, 0x1

    .line 333
    :cond_49
    sget v3, Lnet/jafama/AbstractFastMath;->TAN_TABS_SIZE:I

    if-ge v1, v3, :cond_6a

    .line 334
    sget-object v2, Lnet/jafama/AbstractFastMath;->tanTab:[D

    aget-wide v2, v2, v1

    sget-object v4, Lnet/jafama/AbstractFastMath;->tanDer1DivF1Tab:[D

    aget-wide v4, v4, v1

    sget-object v6, Lnet/jafama/AbstractFastMath;->tanDer2DivF2Tab:[D

    aget-wide v6, v6, v1

    sget-object v8, Lnet/jafama/AbstractFastMath;->tanDer3DivF3Tab:[D

    aget-wide v8, v8, v1

    sget-object v10, Lnet/jafama/AbstractFastMath;->tanDer4DivF4Tab:[D

    aget-wide v10, v10, v1

    mul-double/2addr v10, p0

    add-double/2addr v8, v10

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr v6, p0

    add-double/2addr v4, v6

    mul-double/2addr p0, v4

    add-double/2addr v2, p0

    goto :goto_8c

    :cond_6a
    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 338
    sget-object v1, Lnet/jafama/AbstractFastMath;->tanTab:[D

    aget-wide v5, v1, v2

    sget-object v1, Lnet/jafama/AbstractFastMath;->tanDer1DivF1Tab:[D

    aget-wide v7, v1, v2

    sget-object v1, Lnet/jafama/AbstractFastMath;->tanDer2DivF2Tab:[D

    aget-wide v9, v1, v2

    sget-object v1, Lnet/jafama/AbstractFastMath;->tanDer3DivF3Tab:[D

    aget-wide v11, v1, v2

    sget-object v1, Lnet/jafama/AbstractFastMath;->tanDer4DivF4Tab:[D

    aget-wide v1, v1, v2

    mul-double/2addr v1, p0

    sub-double/2addr v11, v1

    mul-double/2addr v11, p0

    sub-double/2addr v9, v11

    mul-double/2addr v9, p0

    sub-double/2addr v7, v9

    mul-double/2addr p0, v7

    sub-double/2addr v5, p0

    div-double v2, v3, v5

    :goto_8c
    if-eqz v0, :cond_8f

    neg-double v2, v2

    :cond_8f
    return-wide v2
.end method

.method public static tanh(D)D
    .registers 8

    .line 839
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 840
    invoke-static {p0, p1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_12

    neg-double p0, p0

    const/4 v0, 0x1

    :cond_12
    const-wide v1, 0x40330fc1931f09caL    # 19.061547465398498

    cmpg-double v1, p0, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_47

    .line 852
    sget-wide v4, Lnet/jafama/AbstractFastMath;->TWO_POW_N55:D

    cmpg-double v1, p0, v4

    if-gez v1, :cond_2d

    if-eqz v0, :cond_29

    neg-double v0, p0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    goto :goto_2c

    :cond_29
    add-double/2addr v2, p0

    mul-double v0, p0, v2

    :goto_2c
    return-wide v0

    :cond_2d
    cmpl-double v1, p0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-ltz v1, :cond_3c

    add-double/2addr p0, p0

    .line 855
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide p0

    add-double/2addr p0, v4

    div-double/2addr v4, p0

    sub-double/2addr v2, v4

    goto :goto_4d

    :cond_3c
    add-double/2addr p0, p0

    neg-double p0, p0

    .line 857
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->expm1(D)D

    move-result-wide p0

    neg-double v1, p0

    add-double/2addr p0, v4

    div-double v2, v1, p0

    goto :goto_4d

    :cond_47
    cmpl-double p0, p0, p0

    if-eqz p0, :cond_4d

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    :cond_4d
    :goto_4d
    if-eqz v0, :cond_50

    neg-double v2, v2

    :cond_50
    return-wide v2
.end method

.method public static toDMS(DLnet/jafama/IntWrapper;Lnet/jafama/IntWrapper;Lnet/jafama/DoubleWrapper;)Z
    .registers 9

    .line 576
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->normalizeMinusPiPi(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->toDegrees(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    if-gez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    neg-double p0, p0

    :cond_15
    double-to-int v2, p0

    .line 581
    iput v2, p2, Lnet/jafama/IntWrapper;->value:I

    int-to-double v2, v2

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v2

    double-to-int p2, p0

    .line 583
    iput p2, p3, Lnet/jafama/IntWrapper;->value:I

    int-to-double p2, p2

    sub-double/2addr p0, p2

    mul-double/2addr p0, v2

    .line 584
    sget-wide p2, Lnet/jafama/AbstractFastMath;->DOUBLE_BEFORE_60:D

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    iput-wide p0, p4, Lnet/jafama/DoubleWrapper;->value:D

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static toDegrees(D)D
    .registers 4

    .line 538
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 539
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static toDegrees(ZIID)D
    .registers 11

    if-eqz p0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_7
    int-to-double p0, p1

    int-to-double v2, p2

    const-wide v4, 0x3f91111111111111L    # 0.016666666666666666

    mul-double/2addr p3, v4

    add-double/2addr v2, p3

    mul-double/2addr v2, v4

    add-double/2addr p0, v2

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static toInt(J)I
    .registers 2

    .line 1981
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->toInt(J)I

    move-result p0

    return p0
.end method

.method public static toIntExact(J)I
    .registers 2

    .line 1973
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->asInt(J)I

    move-result p0

    return p0
.end method

.method public static toRadians(D)D
    .registers 4

    .line 524
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 525
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static toRadians(ZIID)D
    .registers 5

    .line 552
    invoke-static {p0, p1, p2, p3, p4}, Lnet/jafama/FastMath;->toDegrees(ZIID)D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/jafama/FastMath;->toRadians(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toRange(DDD)D
    .registers 6

    .line 2301
    invoke-static/range {p0 .. p5}, Lnet/jafama/NumbersUtils;->toRange(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toRange(FFF)F
    .registers 3

    .line 2291
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->toRange(FFF)F

    move-result p0

    return p0
.end method

.method public static toRange(III)I
    .registers 3

    .line 2271
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->toRange(III)I

    move-result p0

    return p0
.end method

.method public static toRange(JJJ)J
    .registers 6

    .line 2281
    invoke-static/range {p0 .. p5}, Lnet/jafama/NumbersUtils;->toRange(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static twoPow(I)D
    .registers 3

    .line 1546
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->twoPow(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 4

    .line 2807
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2808
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    return-wide p0

    .line 2814
    :cond_9
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3ca

    if-lt v0, v1, :cond_26

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1a

    .line 2818
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    :cond_1a
    int-to-long p0, v0

    const-wide/16 v0, 0x3cb

    add-long/2addr p0, v0

    const/16 v0, 0x34

    shl-long/2addr p0, v0

    .line 2821
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_26
    const/16 p0, -0x3ff

    if-ne v0, p0, :cond_2d

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_2d
    const-wide/16 p0, 0x1

    add-int/lit16 v0, v0, 0x3fe

    shl-long/2addr p0, v0

    .line 2828
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static ulp(F)F
    .registers 3

    .line 2772
    sget-boolean v0, Lnet/jafama/FastMath;->USE_JDK_MATH:Z

    if-eqz v0, :cond_9

    .line 2773
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result p0

    return p0

    .line 2779
    :cond_9
    invoke-static {p0}, Lnet/jafama/FastMath;->getExponent(F)I

    move-result v0

    const/16 v1, -0x67

    if-lt v0, v1, :cond_23

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1a

    .line 2783
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_1a
    add-int/lit8 v0, v0, 0x68

    shl-int/lit8 p0, v0, 0x17

    .line 2786
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_23
    const/16 p0, -0x7f

    if-ne v0, p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x1

    add-int/lit8 v0, v0, 0x7e

    shl-int/2addr p0, v0

    .line 2793
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
