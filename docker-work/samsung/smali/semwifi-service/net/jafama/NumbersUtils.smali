.class public final Lnet/jafama/NumbersUtils;
.super Ljava/lang/Object;
.source "NumbersUtils.java"


# static fields
.field private static final CHAR_BY_DIGIT:[C

.field private static final DIV_SHIFT_BY_RADIX:[I

.field public static final DOUBLE_MIN_NORMAL:D

.field public static final FLOAT_MIN_NORMAL:F

.field private static final MAX_DOUBLE_EXPONENT:I = 0x3ff

.field private static final MAX_NBR_OF_NEG_INT_DIGITS_BY_RADIX:[I

.field private static final MAX_NBR_OF_NEG_LONG_DIGITS_BY_RADIX:[I

.field private static final MIN_DOUBLE_EXPONENT:I = -0x432

.field static final NO_CSN_MAX_BOUND_EXCL:D = 1.0E7

.field static final NO_CSN_MIN_BOUND_INCL:D = 0.001

.field private static final PIO2_HI:D

.field private static final PIO2_LO:D

.field private static final PI_HI:D

.field private static final PI_LO:D

.field private static final TWOPI_HI:D

.field private static final TWOPI_LO:D


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/high16 v0, 0x10000000000000L

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/NumbersUtils;->DOUBLE_MIN_NORMAL:D

    const/high16 v0, 0x800000

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lnet/jafama/NumbersUtils;->FLOAT_MIN_NORMAL:F

    const/16 v0, 0x24

    new-array v1, v0, [C

    .line 64
    sput-object v1, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    const/4 v1, 0x0

    const/16 v2, 0x30

    :goto_19
    const/16 v3, 0x39

    if-le v2, v3, :cond_9b

    const/16 v2, 0x41

    :goto_1f
    const/16 v3, 0x5a

    if-le v2, v3, :cond_90

    const/16 v1, 0x21

    new-array v1, v1, [I

    .line 79
    sput-object v1, Lnet/jafama/NumbersUtils;->DIV_SHIFT_BY_RADIX:[I

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v1, v3

    move v2, v4

    :goto_2d
    const/16 v5, 0x20

    if-le v1, v5, :cond_86

    const/16 v1, 0x25

    new-array v2, v1, [I

    .line 86
    sput-object v2, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_INT_DIGITS_BY_RADIX:[I

    new-array v1, v1, [I

    .line 87
    sput-object v1, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_LONG_DIGITS_BY_RADIX:[I

    :goto_3b
    if-le v3, v0, :cond_65

    const-wide v0, 0x3ff921fb54400000L    # 1.5707963267341256

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    const-wide v2, 0x3dd0b4611a626331L    # 6.077100506506192E-11

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    sput-wide v2, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v0, v4

    .line 104
    sput-wide v6, Lnet/jafama/NumbersUtils;->PI_HI:D

    mul-double/2addr v4, v2

    .line 105
    sput-wide v4, Lnet/jafama/NumbersUtils;->PI_LO:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v4

    .line 106
    sput-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    mul-double/2addr v2, v4

    .line 107
    sput-wide v2, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    return-void

    .line 94
    :cond_65
    sget-object v1, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_INT_DIGITS_BY_RADIX:[I

    const/high16 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, v1, v3

    .line 95
    sget-object v1, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_LONG_DIGITS_BY_RADIX:[I

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 82
    :cond_86
    sget-object v5, Lnet/jafama/NumbersUtils;->DIV_SHIFT_BY_RADIX:[I

    add-int/lit8 v6, v2, 0x1

    aput v2, v5, v1

    mul-int/lit8 v1, v1, 0x2

    move v2, v6

    goto :goto_2d

    .line 70
    :cond_90
    sget-object v3, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v1, v4

    goto :goto_1f

    .line 67
    :cond_9b
    sget-object v3, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v1, v4

    goto/16 :goto_19
.end method

.method private constructor <init>()V
    .registers 1

    .line 2430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static abs(J)J
    .registers 4

    const/16 v0, 0x3f

    shr-long v0, p0, v0

    xor-long/2addr p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static absNeg(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static absNeg(J)J
    .registers 4

    const/16 v0, 0x3f

    shr-long v0, p0, v0

    xor-long/2addr p0, v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static asByte(I)B
    .registers 4

    int-to-byte v0, p0

    if-ne p0, v0, :cond_4

    return v0

    .line 1236
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInt(J)I
    .registers 5

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_7

    return v0

    .line 1248
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitSizeForSignedValue(I)I
    .registers 2

    if-lez p0, :cond_9

    .line 774
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    :goto_6
    rsub-int/lit8 p0, p0, 0x21

    return p0

    :cond_9
    const/4 v0, 0x1

    if-nez p0, :cond_d

    return v0

    :cond_d
    neg-int p0, p0

    sub-int/2addr p0, v0

    .line 779
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    goto :goto_6
.end method

.method public static bitSizeForSignedValue(J)I
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    .line 789
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    :goto_a
    rsub-int/lit8 p0, p0, 0x41

    return p0

    :cond_d
    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    neg-long p0, p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 794
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_a
.end method

.method public static bitSizeForUnsignedValue(I)I
    .registers 4

    if-lez p0, :cond_9

    .line 806
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :cond_9
    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    .line 811
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsigned value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitSizeForUnsignedValue(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    .line 824
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    return p0

    :cond_d
    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    .line 829
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsigned value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] must be >= 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteAsUnsigned(B)S
    .registers 1

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static ceilingPowerOfTwo(I)I
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1002
    invoke-static {v0, v1, p0}, Lnet/jafama/NumbersUtils;->checkIsInRange(III)Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p0, v1, :cond_10

    sub-int/2addr p0, v0

    shl-int/2addr p0, v0

    .line 1003
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :cond_10
    return v0
.end method

.method public static ceilingPowerOfTwo(J)J
    .registers 8

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-wide v4, p0

    .line 1011
    invoke-static/range {v0 .. v5}, Lnet/jafama/NumbersUtils;->checkIsInRange(JJJ)Z

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 1014
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    shl-long p0, v0, p0

    return-wide p0
.end method

.method private static checkBitPositions(III)Z
    .registers 6

    if-ltz p0, :cond_8

    if-gt p0, p1, :cond_8

    if-gt p1, p2, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2519
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bit positions (first="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",lastExcl="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") must verify 0 <= first <= lastExcl <= "

    .line 2521
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2519
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkBitPositionsByte(II)Z
    .registers 3

    const/16 v0, 0x8

    .line 2007
    invoke-static {p0, p1, v0}, Lnet/jafama/NumbersUtils;->checkBitPositions(III)Z

    move-result p0

    return p0
.end method

.method public static checkBitPositionsInt(II)Z
    .registers 3

    const/16 v0, 0x20

    .line 2027
    invoke-static {p0, p1, v0}, Lnet/jafama/NumbersUtils;->checkBitPositions(III)Z

    move-result p0

    return p0
.end method

.method public static checkBitPositionsLong(II)Z
    .registers 3

    const/16 v0, 0x40

    .line 2037
    invoke-static {p0, p1, v0}, Lnet/jafama/NumbersUtils;->checkBitPositions(III)Z

    move-result p0

    return p0
.end method

.method public static checkBitPositionsShort(II)Z
    .registers 3

    const/16 v0, 0x10

    .line 2017
    invoke-static {p0, p1, v0}, Lnet/jafama/NumbersUtils;->checkBitPositions(III)Z

    move-result p0

    return p0
.end method

.method public static checkBitSizeForSignedInt(I)Z
    .registers 4

    .line 656
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isValidBitSizeForSignedInt(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 657
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bit size ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be in [1,32] for signed int values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkBitSizeForSignedLong(I)Z
    .registers 4

    .line 668
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isValidBitSizeForSignedLong(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 669
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bit size ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be in [1,64] for signed long values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkBitSizeForUnsignedInt(I)Z
    .registers 4

    .line 680
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isValidBitSizeForUnsignedInt(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 681
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bit size ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be in [1,31] for unsigned int values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkBitSizeForUnsignedLong(I)Z
    .registers 4

    .line 692
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isValidBitSizeForUnsignedLong(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 693
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bit size ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be in [1,63] for unsigned long values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRange(DDD)Z
    .registers 8

    .line 323
    invoke-static/range {p0 .. p5}, Lnet/jafama/NumbersUtils;->isInRange(DDD)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 324
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " not in ["

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRange(FFF)Z
    .registers 5

    .line 311
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->isInRange(FFF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 312
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " not in ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRange(III)Z
    .registers 5

    .line 288
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->isInRange(III)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 289
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " not in ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRange(JJJ)Z
    .registers 8

    .line 299
    invoke-static/range {p0 .. p5}, Lnet/jafama/NumbersUtils;->isInRange(JJJ)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 300
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " not in ["

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRangeSigned(II)Z
    .registers 4

    .line 454
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->isInRangeSigned(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " does not fit as a signed value over "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRangeSigned(JI)Z
    .registers 5

    .line 467
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->isInRangeSigned(JI)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 468
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " does not fit as a signed value over "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRangeUnsigned(II)Z
    .registers 4

    .line 480
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->isInRangeUnsigned(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 481
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " does not fit as an unsigned value over "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIsInRangeUnsigned(JI)Z
    .registers 5

    .line 493
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->isInRangeUnsigned(JI)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 494
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " does not fit as an unsigned value over "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkRadix(I)Z
    .registers 6

    const/4 v0, 0x2

    const/16 v1, 0x24

    .line 1740
    invoke-static {v0, v1, p0}, Lnet/jafama/NumbersUtils;->isInRange(III)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 p0, 0x1

    return p0

    .line 1741
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "radix ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be in ["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static computeNbrOfChars(II)I
    .registers 2

    if-gez p0, :cond_9

    .line 1754
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_9
    neg-int p0, p0

    .line 1756
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfChars(III)I
    .registers 3

    if-gez p0, :cond_d

    .line 1783
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_d
    neg-int p0, p0

    .line 1785
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfChars(JI)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_d

    .line 1768
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_d
    neg-long p0, p0

    .line 1770
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfChars(JII)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_11

    .line 1798
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_11
    neg-long p0, p0

    .line 1800
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfDigits(II)I
    .registers 2

    .line 1809
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->abs(I)I

    move-result p0

    neg-int p0, p0

    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfDigits(III)I
    .registers 3

    .line 1827
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfDigits(JI)I
    .registers 3

    .line 1817
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide p0

    neg-long p0, p0

    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result p0

    return p0
.end method

.method public static computeNbrOfDigits(JII)I
    .registers 4

    .line 1837
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits(JI)I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static computeNbrOfDigits_negValue(II)I
    .registers 6

    .line 2485
    invoke-static {p1}, Lnet/jafama/NumbersUtils;->checkRadix(I)Z

    .line 2486
    sget-object v0, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_INT_DIGITS_BY_RADIX:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    move v2, p1

    :goto_9
    if-lt v1, v0, :cond_c

    return v0

    :cond_c
    neg-int v3, v2

    if-le p0, v3, :cond_10

    return v1

    :cond_10
    mul-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static computeNbrOfDigits_negValue(JI)I
    .registers 10

    .line 2501
    invoke-static {p2}, Lnet/jafama/NumbersUtils;->checkRadix(I)Z

    .line 2502
    sget-object v0, Lnet/jafama/NumbersUtils;->MAX_NBR_OF_NEG_LONG_DIGITS_BY_RADIX:[I

    aget v0, v0, p2

    int-to-long v1, p2

    const/4 p2, 0x1

    move-wide v3, v1

    :goto_a
    if-lt p2, v0, :cond_d

    return v0

    :cond_d
    neg-long v5, v3

    cmp-long v5, p0, v5

    if-lez v5, :cond_13

    return p2

    :cond_13
    mul-long/2addr v3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_a
.end method

.method private static dontUseMe_isInNonEmptyRange_(III)Z
    .registers 4

    sub-int/2addr p2, p0

    const/high16 v0, -0x80000000

    add-int/2addr p2, v0

    sub-int/2addr p1, p0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static equal(DD)Z
    .registers 6

    cmpl-double v0, p0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    cmpl-double p0, p0, p0

    if-eqz p0, :cond_f

    cmpl-double p0, p2, p2

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static equal(FF)Z
    .registers 4

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    cmpl-float p0, p0, p0

    if-eqz p0, :cond_f

    cmpl-float p0, p1, p1

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static floorPowerOfTwo(I)I
    .registers 4

    if-lez p0, :cond_7

    .line 981
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0

    .line 979
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be > 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static floorPowerOfTwo(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_11

    const-wide/16 v0, 0x1

    .line 994
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    shl-long p0, v0, p0

    return-wide p0

    .line 990
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] must be > 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static haveSameEvenness(II)Z
    .registers 2

    xor-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_6

    return p1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static haveSameEvenness(JJ)Z
    .registers 4

    long-to-int p0, p0

    long-to-int p1, p2

    .line 894
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->haveSameEvenness(II)Z

    move-result p0

    return p0
.end method

.method public static haveSameSign(II)Z
    .registers 2

    xor-int/2addr p0, p1

    if-ltz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static haveSameSign(JJ)Z
    .registers 4

    xor-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static intAsUnsigned(I)J
    .registers 5

    int-to-long v0, p0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static intHash(J)I
    .registers 5

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    long-to-int v1, p0

    add-int/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    return v0
.end method

.method public static intMaskLSBits0(I)I
    .registers 1

    rsub-int/lit8 p0, p0, 0x20

    .line 530
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->intMaskMSBits0(I)I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public static intMaskLSBits1(I)I
    .registers 1

    rsub-int/lit8 p0, p0, 0x20

    .line 539
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->intMaskMSBits0(I)I

    move-result p0

    return p0
.end method

.method public static intMaskMSBits0(I)I
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 509
    invoke-static {v0, v1, p0}, Lnet/jafama/NumbersUtils;->checkIsInRange(III)Z

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, -0x1

    ushr-int/2addr v1, v0

    sub-int/2addr p0, v0

    ushr-int p0, v1, p0

    return p0
.end method

.method public static intMaskMSBits1(I)I
    .registers 1

    .line 521
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->intMaskMSBits0(I)I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public static isEquidistant(D)Z
    .registers 8

    .line 215
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4330000000000000L    # 4.503599627370496E15

    cmpg-double v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_c

    return v3

    :cond_c
    add-double/2addr v0, v0

    double-to-long v4, v0

    long-to-double v4, v4

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1b

    double-to-long v0, p0

    long-to-double v0, v0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v3
.end method

.method public static isEquidistant(F)Z
    .registers 4

    .line 182
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4b000000    # 8388608.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_c

    return v2

    :cond_c
    add-float/2addr v0, v0

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v2
.end method

.method public static isEven(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isEven(J)Z
    .registers 2

    long-to-int p0, p0

    .line 864
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isEven(I)Z

    move-result p0

    return p0
.end method

.method public static isInRange(DDD)Z
    .registers 6

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_a

    cmpg-double p0, p4, p2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRange(FFF)Z
    .registers 3

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_a

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRange(III)Z
    .registers 3

    if-gt p0, p2, :cond_6

    if-gt p2, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRange(JJJ)Z
    .registers 6

    cmp-long p0, p0, p4

    if-gtz p0, :cond_a

    cmp-long p0, p4, p2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRangeSigned(II)Z
    .registers 3

    .line 408
    invoke-static {p1}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedInt(I)Z

    .line 409
    invoke-static {p1}, Lnet/jafama/NumbersUtils;->minSignedIntForBitSize_noCheck(I)I

    move-result v0

    if-gt v0, p0, :cond_11

    invoke-static {p1}, Lnet/jafama/NumbersUtils;->maxSignedIntForBitSize_noCheck(I)I

    move-result p1

    if-gt p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRangeSigned(JI)Z
    .registers 5

    .line 419
    invoke-static {p2}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedLong(I)Z

    .line 420
    invoke-static {p2}, Lnet/jafama/NumbersUtils;->minSignedLongForBitSize_noCheck(I)J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_15

    invoke-static {p2}, Lnet/jafama/NumbersUtils;->maxSignedLongForBitSize_noCheck(I)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRangeUnsigned(II)Z
    .registers 3

    .line 430
    invoke-static {p1}, Lnet/jafama/NumbersUtils;->maxUnsignedIntForBitSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lnet/jafama/NumbersUtils;->isInRange(III)Z

    move-result p0

    return p0
.end method

.method public static isInRangeUnsigned(JI)Z
    .registers 9

    .line 440
    invoke-static {p2}, Lnet/jafama/NumbersUtils;->maxUnsignedLongForBitSize(I)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lnet/jafama/NumbersUtils;->isInRange(JJJ)Z

    move-result p0

    return p0
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4

    .line 153
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_10

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_18

    :cond_10
    double-to-long v0, p0

    long-to-double v0, v0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static isMathematicalInteger(F)Z
    .registers 2

    .line 138
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x4b000000    # 8388608.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_10

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_18

    :cond_10
    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static isNaNOrInfinite(D)Z
    .registers 4

    sub-double/2addr p0, p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static isNaNOrInfinite(F)Z
    .registers 2

    sub-float/2addr p0, p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static isOdd(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isOdd(J)Z
    .registers 2

    long-to-int p0, p0

    .line 879
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->isOdd(I)Z

    move-result p0

    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 3

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p0, -0x1

    and-int/2addr p0, v1

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    return v0
.end method

.method public static isPowerOfTwo(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_8

    return v3

    :cond_8
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr p0, v4

    cmp-long p0, p0, v0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v3
.end method

.method public static isSignedPowerOfTwo(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_b

    add-int/lit8 v2, p0, -0x1

    and-int/2addr p0, v2

    if-nez p0, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    neg-int v2, p0

    if-ne p0, v2, :cond_12

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    add-int/lit8 p0, v2, -0x1

    and-int/2addr p0, v2

    if-nez p0, :cond_18

    return v1

    :cond_18
    return v0
.end method

.method public static isSignedPowerOfTwo(J)Z
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_13

    sub-long v2, p0, v3

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_12

    return v5

    :cond_12
    return v6

    :cond_13
    neg-long v7, p0

    cmp-long p0, p0, v7

    if-nez p0, :cond_1c

    if-eqz v2, :cond_1b

    return v5

    :cond_1b
    return v6

    :cond_1c
    sub-long p0, v7, v3

    and-long/2addr p0, v7

    cmp-long p0, p0, v0

    if-nez p0, :cond_24

    return v5

    :cond_24
    return v6
.end method

.method public static isValidBitSizeForSignedInt(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/16 v0, 0x20

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidBitSizeForSignedLong(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/16 v0, 0x40

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidBitSizeForUnsignedInt(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/16 v0, 0x20

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidBitSizeForUnsignedLong(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/16 v0, 0x40

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static log2(I)I
    .registers 4

    if-lez p0, :cond_9

    .line 1137
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    .line 1135
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be > 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static log2(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    .line 1150
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    return p0

    .line 1148
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] must be > 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longMaskLSBits0(I)J
    .registers 3

    rsub-int/lit8 p0, p0, 0x40

    .line 573
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->longMaskMSBits0(I)J

    move-result-wide v0

    not-long v0, v0

    return-wide v0
.end method

.method public static longMaskLSBits1(I)J
    .registers 3

    rsub-int/lit8 p0, p0, 0x40

    .line 582
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->longMaskMSBits0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static longMaskMSBits0(I)J
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    .line 552
    invoke-static {v0, v1, p0}, Lnet/jafama/NumbersUtils;->checkIsInRange(III)Z

    shr-int/lit8 v0, p0, 0x1

    const-wide/16 v1, -0x1

    ushr-long/2addr v1, v0

    sub-int/2addr p0, v0

    ushr-long v0, v1, p0

    return-wide v0
.end method

.method public static longMaskMSBits1(I)J
    .registers 3

    .line 564
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->longMaskMSBits0(I)J

    move-result-wide v0

    not-long v0, v0

    return-wide v0
.end method

.method public static maxSignedIntForBitSize(I)I
    .registers 1

    .line 728
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedInt(I)Z

    .line 729
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->maxSignedIntForBitSize_noCheck(I)I

    move-result p0

    return p0
.end method

.method private static maxSignedIntForBitSize_noCheck(I)I
    .registers 2

    rsub-int/lit8 p0, p0, 0x20

    const v0, 0x7fffffff

    shr-int p0, v0, p0

    return p0
.end method

.method public static maxSignedLongForBitSize(I)J
    .registers 3

    .line 738
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedLong(I)Z

    .line 739
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->maxSignedLongForBitSize_noCheck(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static maxSignedLongForBitSize_noCheck(I)J
    .registers 3

    rsub-int/lit8 p0, p0, 0x40

    const-wide v0, 0x7fffffffffffffffL

    shr-long/2addr v0, p0

    return-wide v0
.end method

.method public static maxUnsignedIntForBitSize(I)I
    .registers 2

    .line 748
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForUnsignedInt(I)Z

    rsub-int/lit8 p0, p0, 0x1f

    const v0, 0x7fffffff

    shr-int p0, v0, p0

    return p0
.end method

.method public static maxUnsignedLongForBitSize(I)J
    .registers 3

    .line 759
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForUnsignedLong(I)Z

    rsub-int/lit8 p0, p0, 0x3f

    const-wide v0, 0x7fffffffffffffffL

    shr-long/2addr v0, p0

    return-wide v0
.end method

.method public static meanLow(II)I
    .registers 3

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static meanLow(JJ)J
    .registers 6

    and-long v0, p0, p2

    xor-long/2addr p0, p2

    const/4 p2, 0x1

    shr-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static meanSml(II)I
    .registers 4

    .line 1035
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->meanLow(II)I

    move-result v0

    .line 1036
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->haveSameEvenness(II)Z

    move-result v1

    if-nez v1, :cond_17

    and-int v1, p0, p1

    if-ltz v1, :cond_15

    or-int v1, p0, p1

    if-gez v1, :cond_17

    add-int/2addr p0, p1

    if-gez p0, :cond_17

    :cond_15
    add-int/lit8 v0, v0, 0x1

    :cond_17
    return v0
.end method

.method public static meanSml(JJ)J
    .registers 10

    .line 1050
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->meanLow(JJ)J

    move-result-wide v0

    .line 1051
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->haveSameEvenness(JJ)Z

    move-result v2

    if-nez v2, :cond_20

    and-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    or-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    add-long/2addr p0, p2

    cmp-long p0, p0, v4

    if-gez p0, :cond_20

    :cond_1d
    const-wide/16 p0, 0x1

    add-long/2addr v0, p0

    :cond_20
    return-wide v0
.end method

.method public static minSignedIntForBitSize(I)I
    .registers 1

    .line 708
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedInt(I)Z

    .line 709
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->minSignedIntForBitSize_noCheck(I)I

    move-result p0

    return p0
.end method

.method private static minSignedIntForBitSize_noCheck(I)I
    .registers 2

    rsub-int/lit8 p0, p0, 0x20

    const/high16 v0, -0x80000000

    shr-int p0, v0, p0

    return p0
.end method

.method public static minSignedLongForBitSize(I)J
    .registers 3

    .line 718
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->checkBitSizeForSignedLong(I)Z

    .line 719
    invoke-static {p0}, Lnet/jafama/NumbersUtils;->minSignedLongForBitSize_noCheck(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static minSignedLongForBitSize_noCheck(I)J
    .registers 3

    rsub-int/lit8 p0, p0, 0x40

    const-wide/high16 v0, -0x8000000000000000L

    shr-long/2addr v0, p0

    return-wide v0
.end method

.method public static minus2PI(D)D
    .registers 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1587
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1590
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    goto :goto_e
.end method

.method public static strictfp minus2PI_strict(D)D
    .registers 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1603
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1606
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    goto :goto_e
.end method

.method public static minusBounded(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 1356
    invoke-static {v0, v1}, Lnet/jafama/NumbersUtils;->toInt(J)I

    move-result p0

    return p0
.end method

.method public static minusBounded(JJ)J
    .registers 6

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    xor-long/2addr p0, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-gez p0, :cond_18

    cmp-long p0, v0, p2

    if-ltz p0, :cond_12

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_17

    :cond_12
    const-wide p0, 0x7fffffffffffffffL

    :goto_17
    return-wide p0

    :cond_18
    return-wide v0
.end method

.method public static minusExact(II)I
    .registers 3

    sub-int v0, p0, p1

    xor-int/2addr p1, p0

    xor-int/2addr p0, v0

    and-int/2addr p0, p1

    if-ltz p0, :cond_8

    return v0

    .line 1329
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minusExact(JJ)J
    .registers 6

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    xor-long/2addr p0, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_c

    return-wide v0

    .line 1345
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static minusPI(D)D
    .registers 4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1647
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1650
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    goto :goto_e
.end method

.method public static minusPIO2(D)D
    .registers 4

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1707
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1710
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    goto :goto_e
.end method

.method public static strictfp minusPIO2_strict(D)D
    .registers 4

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1723
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1726
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    goto :goto_e
.end method

.method public static strictfp minusPI_strict(D)D
    .registers 4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    .line 1663
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    :goto_e
    sub-double/2addr p0, v0

    return-wide p0

    .line 1666
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    sub-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    goto :goto_e
.end method

.method public static moduloSignedPowerOfTwo(II)I
    .registers 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_9

    if-eq p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0

    :cond_9
    shr-int/lit8 v0, p0, 0x1f

    add-int/2addr p0, v0

    xor-int/2addr p0, v0

    .line 1106
    invoke-static {p1}, Lnet/jafama/NumbersUtils;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    add-int/2addr p0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static moduloSignedPowerOfTwo(JJ)J
    .registers 8

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_e

    cmp-long p2, p0, v0

    if-eqz p2, :cond_b

    goto :goto_d

    :cond_b
    const-wide/16 p0, 0x0

    :goto_d
    return-wide p0

    :cond_e
    const/16 v0, 0x3f

    shr-long v0, p0, v0

    add-long/2addr p0, v0

    xor-long/2addr p0, v0

    .line 1123
    invoke-static {p2, p3}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide p2

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    and-long/2addr p0, p2

    add-long/2addr p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static negHalfWidth(II)I
    .registers 5

    if-gt p0, p1, :cond_d

    .line 1073
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->meanLow(II)I

    move-result v0

    sub-int v0, p0, v0

    xor-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    return v0

    .line 1071
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "min ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] must be <= max ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static negHalfWidth(JJ)J
    .registers 7

    cmp-long v0, p0, p2

    if-gtz v0, :cond_10

    .line 1089
    invoke-static {p0, p1, p2, p3}, Lnet/jafama/NumbersUtils;->meanLow(JJ)J

    move-result-wide v0

    sub-long v0, p0, v0

    xor-long/2addr p0, p2

    const-wide/16 p2, 0x1

    and-long/2addr p0, p2

    sub-long/2addr v0, p0

    return-wide v0

    .line 1087
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "min ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] must be <= max ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static plus2PI(D)D
    .registers 4

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1557
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1560
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    goto :goto_e
.end method

.method public static strictfp plus2PI_strict(D)D
    .registers 4

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1573
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1576
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->TWOPI_LO:D

    goto :goto_e
.end method

.method public static plusBounded(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    .line 1302
    invoke-static {v0, v1}, Lnet/jafama/NumbersUtils;->toInt(J)I

    move-result p0

    return p0
.end method

.method public static plusBounded(JJ)J
    .registers 6

    add-long v0, p0, p2

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-gez p0, :cond_18

    cmp-long p0, v0, p2

    if-ltz p0, :cond_12

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_17

    :cond_12
    const-wide p0, 0x7fffffffffffffffL

    :goto_17
    return-wide p0

    :cond_18
    return-wide v0
.end method

.method public static plusExact(II)I
    .registers 5

    add-int v0, p0, p1

    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    return v0

    .line 1275
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static plusExact(JJ)J
    .registers 10

    add-long v0, p0, p2

    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    return-wide v0

    .line 1291
    :cond_e
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static plusPI(D)D
    .registers 4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1617
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1620
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    goto :goto_e
.end method

.method public static plusPIO2(D)D
    .registers 4

    const-wide v0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1677
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1680
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    goto :goto_e
.end method

.method public static strictfp plusPIO2_strict(D)D
    .registers 4

    const-wide v0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1693
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1696
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PIO2_LO:D

    goto :goto_e
.end method

.method public static strictfp plusPI_strict(D)D
    .registers 4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p0, v0

    if-lez v0, :cond_10

    .line 1633
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    :goto_e
    add-double/2addr p0, v0

    return-wide p0

    .line 1636
    :cond_10
    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_HI:D

    add-double/2addr p0, v0

    sget-wide v0, Lnet/jafama/NumbersUtils;->PI_LO:D

    goto :goto_e
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

.method public static strictfp pow2_strict(D)D
    .registers 2

    mul-double/2addr p0, p0

    return-wide p0
.end method

.method public static strictfp pow2_strict(F)F
    .registers 1

    mul-float/2addr p0, p0

    return p0
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

.method public static strictfp pow3_strict(D)D
    .registers 4

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static strictfp pow3_strict(F)F
    .registers 2

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static shortAsUnsigned(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static signum(I)I
    .registers 1

    if-gez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_9

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static signum(J)I
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_d

    :cond_8
    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static timesBounded(II)I
    .registers 4

    int-to-double v0, p0

    int-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method public static timesBounded(JJ)J
    .registers 12

    mul-long v0, p0, p2

    .line 1424
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide v2

    .line 1425
    invoke-static {p2, p3}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide v4

    or-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    cmp-long v2, p2, v4

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v2, :cond_20

    .line 1430
    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_2a

    :cond_20
    cmp-long v2, p0, v6

    if-nez v2, :cond_35

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_35

    :cond_2a
    xor-long/2addr p0, p2

    cmp-long p0, p0, v4

    if-ltz p0, :cond_34

    const-wide v6, 0x7fffffffffffffffL

    :cond_34
    return-wide v6

    :cond_35
    return-wide v0
.end method

.method public static timesExact(II)I
    .registers 7

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    return v2

    .line 1381
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timesExact(JJ)J
    .registers 10

    mul-long v0, p0, p2

    .line 1394
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide v2

    .line 1395
    invoke-static {p2, p3}, Lnet/jafama/NumbersUtils;->abs(J)J

    move-result-wide v4

    or-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    cmp-long v2, p2, v4

    if-eqz v2, :cond_1e

    .line 1400
    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_2b

    :cond_1e
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_47

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2b

    goto :goto_47

    .line 1402
    :cond_2b
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    :goto_47
    return-wide v0
.end method

.method public static toInt(J)I
    .registers 5

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_13

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_f

    const/high16 p0, -0x80000000

    goto :goto_12

    :cond_f
    const p0, 0x7fffffff

    :goto_12
    return p0

    :cond_13
    return v0
.end method

.method public static toRange(DDD)D
    .registers 7

    cmpg-double v0, p4, p0

    if-gtz v0, :cond_5

    return-wide p0

    :cond_5
    cmpl-double p0, p4, p2

    if-ltz p0, :cond_a

    return-wide p2

    :cond_a
    return-wide p4
.end method

.method public static toRange(FFF)F
    .registers 4

    cmpg-float v0, p2, p0

    if-gtz v0, :cond_5

    return p0

    :cond_5
    cmpl-float p0, p2, p1

    if-ltz p0, :cond_a

    return p1

    :cond_a
    return p2
.end method

.method public static toRange(III)I
    .registers 3

    if-gt p2, p0, :cond_3

    return p0

    :cond_3
    if-lt p2, p1, :cond_6

    return p1

    :cond_6
    return p2
.end method

.method public static toRange(JJJ)J
    .registers 7

    cmp-long v0, p4, p0

    if-gtz v0, :cond_5

    return-wide p0

    :cond_5
    cmp-long p0, p4, p2

    if-ltz p0, :cond_a

    return-wide p2

    :cond_a
    return-wide p4
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 1

    .line 1847
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1866
    invoke-static {p0, p1, v0}, Lnet/jafama/NumbersUtils;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(III)Ljava/lang/String;
    .registers 11

    add-int v0, p1, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    if-nez p2, :cond_d

    .line 1888
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p0, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eqz v2, :cond_18

    move v3, v0

    goto :goto_1a

    :cond_18
    neg-int p0, p0

    move v3, v1

    .line 1904
    :goto_1a
    invoke-static {p0, p1}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(II)I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, v3

    .line 1906
    new-array v4, p2, [C

    add-int/lit8 v5, p1, -0x1

    and-int v6, p1, v5

    if-nez v6, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    if-eqz v0, :cond_49

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_49

    .line 1914
    sget-object v0, Lnet/jafama/NumbersUtils;->DIV_SHIFT_BY_RADIX:[I

    aget v0, v0, p1

    :goto_37
    neg-int v6, p1

    if-le p0, v6, :cond_3b

    goto :goto_4c

    :cond_3b
    add-int/lit8 p2, p2, -0x1

    .line 1916
    sget-object v6, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    neg-int p0, p0

    and-int v7, p0, v5

    aget-char v6, v6, v7

    aput-char v6, v4, p2

    shr-int/2addr p0, v0

    neg-int p0, p0

    goto :goto_37

    :cond_49
    :goto_49
    neg-int v0, p1

    if-le p0, v0, :cond_6a

    :goto_4c
    add-int/lit8 p2, p2, -0x1

    .line 1925
    sget-object p1, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    neg-int p0, p0

    aget-char p0, p1, p0

    aput-char p0, v4, p2

    :goto_55
    if-gt p2, v3, :cond_63

    if-eqz v2, :cond_5d

    const/16 p0, 0x2d

    .line 1932
    aput-char p0, v4, v1

    .line 1935
    :cond_5d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_63
    add-int/lit8 p2, p2, -0x1

    const/16 p0, 0x30

    .line 1928
    aput-char p0, v4, p2

    goto :goto_55

    :cond_6a
    add-int/lit8 p2, p2, -0x1

    .line 1921
    sget-object v0, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    rem-int v5, p0, p1

    neg-int v5, v5

    aget-char v0, v0, v5

    aput-char v0, v4, p2

    .line 1922
    div-int/2addr p0, p1

    goto :goto_49
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 2

    .line 1857
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1875
    invoke-static {p0, p1, p2, v0}, Lnet/jafama/NumbersUtils;->toString(JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(JII)Ljava/lang/String;
    .registers 13

    add-int v0, p2, p3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    if-nez p3, :cond_d

    .line 1948
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_1c

    move v3, v1

    goto :goto_1e

    :cond_1c
    neg-long p0, p0

    move v3, v2

    .line 1962
    :goto_1e
    invoke-static {p0, p1, p2}, Lnet/jafama/NumbersUtils;->computeNbrOfDigits_negValue(JI)I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, v3

    .line 1964
    new-array v4, p3, [C

    add-int/lit8 v5, p2, -0x1

    and-int v6, p2, v5

    if-nez v6, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    if-eqz v1, :cond_53

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, p0, v6

    if-eqz v1, :cond_53

    .line 1972
    sget-object v1, Lnet/jafama/NumbersUtils;->DIV_SHIFT_BY_RADIX:[I

    aget v1, v1, p2

    :goto_3d
    neg-int v6, p2

    int-to-long v6, v6

    cmp-long v6, p0, v6

    if-lez v6, :cond_44

    goto :goto_59

    :cond_44
    add-int/lit8 p3, p3, -0x1

    .line 1974
    sget-object v6, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    neg-long p0, p0

    int-to-long v7, v5

    and-long/2addr v7, p0

    long-to-int v7, v7

    aget-char v6, v6, v7

    aput-char v6, v4, p3

    shr-long/2addr p0, v1

    neg-long p0, p0

    goto :goto_3d

    :cond_53
    :goto_53
    neg-int v1, p2

    int-to-long v5, v1

    cmp-long v1, p0, v5

    if-lez v1, :cond_78

    :goto_59
    add-int/lit8 p3, p3, -0x1

    .line 1983
    sget-object p2, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    neg-long p0, p0

    long-to-int p0, p0

    aget-char p0, p2, p0

    aput-char p0, v4, p3

    :goto_63
    if-gt p3, v3, :cond_71

    if-eqz v0, :cond_6b

    const/16 p0, 0x2d

    .line 1990
    aput-char p0, v4, v2

    .line 1993
    :cond_6b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_71
    add-int/lit8 p3, p3, -0x1

    const/16 p0, 0x30

    .line 1986
    aput-char p0, v4, p3

    goto :goto_63

    :cond_78
    add-int/lit8 p3, p3, -0x1

    .line 1979
    sget-object v1, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    int-to-long v5, p2

    rem-long v7, p0, v5

    neg-long v7, v7

    long-to-int v7, v7

    aget-char v1, v1, v7

    aput-char v1, v4, p3

    .line 1980
    div-long/2addr p0, v5

    goto :goto_53
.end method

.method public static toStringBits(B)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [C

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_e

    .line 2049
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_e
    rsub-int/lit8 v2, v0, 0x7

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 2047
    aput-char v3, v1, v2

    goto :goto_4
.end method

.method public static toStringBits(BIIZZ)Ljava/lang/String;
    .registers 11

    .line 2103
    invoke-static {p1, p2}, Lnet/jafama/NumbersUtils;->checkBitPositionsByte(II)Z

    const/16 v0, 0x8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2104
    invoke-static/range {v0 .. v5}, Lnet/jafama/NumbersUtils;->toStringBits_0_32_bitPosAlreadyChecked(IIIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringBits(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x20

    new-array v1, v0, [C

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_e

    .line 2073
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_e
    rsub-int/lit8 v2, v0, 0x1f

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 2071
    aput-char v3, v1, v2

    goto :goto_4
.end method

.method public static toStringBits(IIIZZ)Ljava/lang/String;
    .registers 11

    .line 2141
    invoke-static {p1, p2}, Lnet/jafama/NumbersUtils;->checkBitPositionsInt(II)Z

    const/16 v0, 0x20

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2142
    invoke-static/range {v0 .. v5}, Lnet/jafama/NumbersUtils;->toStringBits_0_32_bitPosAlreadyChecked(IIIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringBits(J)Ljava/lang/String;
    .registers 11

    const/16 v0, 0x40

    new-array v1, v0, [C

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_e

    .line 2085
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_e
    rsub-int/lit8 v2, v0, 0x3f

    const-wide/16 v3, 0x30

    shr-long v5, p0, v0

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    add-long/2addr v5, v3

    long-to-int v3, v5

    int-to-char v3, v3

    .line 2083
    aput-char v3, v1, v2

    goto :goto_4
.end method

.method public static toStringBits(JIIZZ)Ljava/lang/String;
    .registers 15

    .line 2160
    invoke-static {p2, p3}, Lnet/jafama/NumbersUtils;->checkBitPositionsLong(II)Z

    add-int/lit8 v0, p3, -0x1

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x30

    const/16 v5, 0x3f

    if-eqz p5, :cond_5c

    const/16 p3, 0x40

    new-array p5, p3, [C

    const/16 v6, 0x5f

    if-eqz p4, :cond_3b

    rsub-int/lit8 p3, v0, 0x3f

    rsub-int/lit8 p4, p2, 0x3f

    :goto_19
    if-gt v5, p4, :cond_34

    :goto_1b
    if-ge v5, p3, :cond_27

    :goto_1d
    if-gez v5, :cond_20

    goto :goto_41

    :cond_20
    rsub-int/lit8 p0, v5, 0x3f

    .line 2180
    aput-char v6, p5, p0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_27
    rsub-int/lit8 p2, v5, 0x3f

    shr-long v7, p0, v5

    and-long/2addr v7, v1

    add-long/2addr v7, v3

    long-to-int p4, v7

    int-to-char p4, p4

    .line 2176
    aput-char p4, p5, p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    :cond_34
    rsub-int/lit8 p2, v5, 0x3f

    .line 2172
    aput-char v6, p5, p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    :cond_3b
    :goto_3b
    if-gt v5, v0, :cond_57

    :goto_3d
    if-ge v5, p2, :cond_4c

    :goto_3f
    if-gez v5, :cond_47

    .line 2197
    :goto_41
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p5}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 2193
    :cond_47
    aput-char v6, p5, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    :cond_4c
    shr-long p3, p0, v5

    and-long/2addr p3, v1

    add-long/2addr p3, v3

    long-to-int p3, p3

    int-to-char p3, p3

    .line 2189
    aput-char p3, p5, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 2185
    :cond_57
    aput-char v6, p5, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    :cond_5c
    sub-int/2addr p3, p2

    .line 2200
    new-array p3, p3, [C

    if-eqz p4, :cond_75

    rsub-int/lit8 p4, v0, 0x3f

    sub-int/2addr v5, p2

    move p2, v5

    :goto_65
    if-ge p2, p4, :cond_68

    goto :goto_77

    :cond_68
    sub-int p5, v5, p2

    shr-long v6, p0, p2

    and-long/2addr v6, v1

    add-long/2addr v6, v3

    long-to-int v0, v6

    int-to-char v0, v0

    .line 2206
    aput-char v0, p3, p5

    add-int/lit8 p2, p2, -0x1

    goto :goto_65

    :cond_75
    :goto_75
    if-ge v0, p2, :cond_7d

    .line 2216
    :goto_77
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_7d
    sub-int p4, v0, p2

    shr-long v5, p0, v0

    and-long/2addr v5, v1

    add-long/2addr v5, v3

    long-to-int p5, v5

    int-to-char p5, p5

    .line 2212
    aput-char p5, p3, p4

    add-int/lit8 v0, v0, -0x1

    goto :goto_75
.end method

.method public static toStringBits(S)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x10

    new-array v1, v0, [C

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_e

    .line 2061
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_e
    rsub-int/lit8 v2, v0, 0xf

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 2059
    aput-char v3, v1, v2

    goto :goto_4
.end method

.method public static toStringBits(SIIZZ)Ljava/lang/String;
    .registers 11

    .line 2122
    invoke-static {p1, p2}, Lnet/jafama/NumbersUtils;->checkBitPositionsShort(II)Z

    const/16 v0, 0x10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2123
    invoke-static/range {v0 .. v5}, Lnet/jafama/NumbersUtils;->toStringBits_0_32_bitPosAlreadyChecked(IIIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringBits_0_32_bitPosAlreadyChecked(IIIIZZ)Ljava/lang/String;
    .registers 8

    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v1, p3, -0x1

    if-eqz p5, :cond_56

    .line 2544
    new-array p0, p0, [C

    const/16 p5, 0x5f

    if-eqz p4, :cond_34

    sub-int p3, v0, v1

    sub-int p4, v0, p2

    move p2, v0

    :goto_11
    if-gt p2, p4, :cond_2d

    :goto_13
    if-ge p2, p3, :cond_1f

    :goto_15
    if-gez p2, :cond_18

    goto :goto_3a

    :cond_18
    sub-int p1, v0, p2

    .line 2558
    aput-char p5, p0, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    :cond_1f
    sub-int p4, v0, p2

    shr-int v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 2554
    aput-char v1, p0, p4

    add-int/lit8 p2, p2, -0x1

    goto :goto_13

    :cond_2d
    sub-int v1, v0, p2

    .line 2550
    aput-char p5, p0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_34
    :goto_34
    if-gt v0, v1, :cond_51

    :goto_36
    if-ge v0, p2, :cond_45

    :goto_38
    if-gez v0, :cond_40

    .line 2575
    :goto_3a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 2571
    :cond_40
    aput-char p5, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_45
    shr-int p3, p1, v0

    and-int/lit8 p3, p3, 0x1

    add-int/lit8 p3, p3, 0x30

    int-to-char p3, p3

    .line 2567
    aput-char p3, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 2563
    :cond_51
    aput-char p5, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_56
    sub-int/2addr p3, p2

    .line 2578
    new-array p0, p3, [C

    if-eqz p4, :cond_70

    sub-int p3, v0, v1

    sub-int/2addr v0, p2

    move p2, v0

    :goto_5f
    if-ge p2, p3, :cond_62

    goto :goto_72

    :cond_62
    sub-int p4, v0, p2

    shr-int p5, p1, p2

    and-int/lit8 p5, p5, 0x1

    add-int/lit8 p5, p5, 0x30

    int-to-char p5, p5

    .line 2584
    aput-char p5, p0, p4

    add-int/lit8 p2, p2, -0x1

    goto :goto_5f

    :cond_70
    :goto_70
    if-ge v1, p2, :cond_78

    .line 2594
    :goto_72
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_78
    sub-int p3, v1, p2

    shr-int p4, p1, v1

    and-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x30

    int-to-char p4, p4

    .line 2590
    aput-char p4, p0, p3

    add-int/lit8 v1, v1, -0x1

    goto :goto_70
.end method

.method public static toStringCSN(D)Ljava/lang/String;
    .registers 13

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_16

    .line 2242
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_13

    const-string p0, "-0.0E0"

    return-object p0

    :cond_13
    const-string p0, "0.0E0"

    return-object p0

    .line 2249
    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_cb

    const-wide v4, 0x416312d000000000L    # 1.0E7

    cmpg-double v4, v2, v4

    if-gez v4, :cond_cb

    cmpg-double v0, p0, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_34

    move v0, v4

    goto :goto_35

    :cond_34
    move v0, v1

    .line 2253
    :goto_35
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    const/16 v7, 0x2d

    const/16 v8, 0x2e

    if-ltz v6, :cond_85

    .line 2260
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    .line 2262
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_53

    .line 2264
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2267
    :cond_53
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2268
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2269
    invoke-virtual {v10, v5, v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    double-to-int v0, p0

    int-to-double v0, v0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_6c

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    cmpg-double p0, v2, p0

    if-gez p0, :cond_74

    :cond_6c
    add-int/2addr v6, v4

    .line 2273
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v10, v5, v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_74
    const/16 p0, 0x45

    .line 2275
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2276
    sget-object p0, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    aget-char p0, p0, v9

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_85
    move p0, v4

    :cond_86
    add-int/2addr p0, v4

    .line 2285
    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x30

    if-eq p1, v1, :cond_86

    rsub-int/lit8 p1, p0, 0x1

    .line 2289
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p0, 0x1

    sub-int/2addr v2, v3

    .line 2290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_a2

    .line 2292
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2294
    :cond_a2
    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2295
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v2, :cond_b6

    .line 2299
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4, v5, v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 2301
    :cond_b6
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b9
    const-string p0, "E-"

    .line 2303
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    sget-object p0, Lnet/jafama/NumbersUtils;->CHAR_BY_DIGIT:[C

    neg-int p1, p1

    aget-char p0, p0, p1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2308
    :cond_cb
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringNoCSN(D)Ljava/lang/String;
    .registers 13

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v1, p0, v1

    const-string v2, ".0"

    const-wide/16 v3, 0x0

    if-nez v1, :cond_33

    cmpl-double v1, p0, v3

    if-nez v1, :cond_1e

    .line 2328
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_1b

    const-string p0, "-0.0"

    return-object p0

    :cond_1b
    const-string p0, "0.0"

    return-object p0

    .line 2334
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2338
    :cond_33
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 2339
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x416312d000000000L    # 1.0E7

    cmpl-double v1, v5, v7

    const/16 v7, 0x45

    const/16 v8, 0x2e

    const/16 v9, 0x30

    const/4 v10, 0x0

    if-ltz v1, :cond_96

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, v5, p0

    if-nez p0, :cond_52

    return-object v0

    .line 2352
    :cond_52
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 2354
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    .line 2355
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v3, p1, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v1, v3

    .line 2362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2363
    invoke-virtual {v4, v0, v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_85

    add-int/lit8 p0, p0, 0x1

    .line 2366
    invoke-virtual {v4, v0, p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_79
    if-lt v10, v3, :cond_7f

    .line 2370
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 2368
    :cond_7f
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_79

    :cond_85
    add-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    .line 2373
    invoke-virtual {v4, v0, p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2375
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v4, v0, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2380
    :goto_91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_96
    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v5, v1

    if-gez v1, :cond_eb

    .line 2389
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2391
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    .line 2393
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v7, v5, -0x1

    .line 2396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    cmpg-double p0, p0, v3

    if-gez p0, :cond_c3

    const-string p0, "-0."

    .line 2398
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    :cond_c3
    const-string p0, "0."

    .line 2400
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c8
    if-lt v10, v7, :cond_e5

    add-int/lit8 p0, v1, -0x1

    .line 2406
    invoke-virtual {v8, v0, p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v1, 0x2

    if-ne v2, p0, :cond_db

    add-int/lit8 p0, v1, 0x1

    .line 2407
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v9, :cond_e0

    :cond_db
    add-int/lit8 v1, v1, 0x1

    .line 2411
    invoke-virtual {v8, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2413
    :cond_e0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2403
    :cond_e5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_c8

    :cond_eb
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v5, p0

    if-gez p0, :cond_108

    .line 2416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v9, :cond_108

    .line 2419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v10, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_108
    return-object v0
.end method

.method public static twoPow(I)D
    .registers 4

    const/16 v0, 0x3ff

    const/16 v1, -0x3ff

    if-gt p0, v1, :cond_18

    const/16 v1, -0x432

    if-lt p0, v1, :cond_15

    const-wide/high16 v1, 0x8000000000000L

    add-int/2addr p0, v0

    neg-int p0, p0

    shr-long v0, v1, p0

    .line 1195
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_18
    if-le p0, v0, :cond_1d

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_1d
    add-int/2addr p0, v0

    int-to-long v0, p0

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    .line 1202
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
