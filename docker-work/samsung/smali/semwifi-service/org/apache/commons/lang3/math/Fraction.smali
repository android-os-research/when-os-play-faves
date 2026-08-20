.class public final Lorg/apache/commons/lang3/math/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/math/Fraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ZERO:Lorg/apache/commons/lang3/math/Fraction;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 48
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    .line 52
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    .line 56
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

    .line 60
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

    .line 64
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 76
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 80
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 88
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 92
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    .line 126
    iput p1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    .line 127
    iput p2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return-void
.end method

.method private static addAndCheck(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_13

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_13

    long-to-int p0, v0

    return p0

    .line 672
    :cond_13
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;
    .registers 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The fraction must not be null"

    .line 733
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_14

    if-eqz p2, :cond_f

    goto :goto_13

    .line 736
    :cond_f
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    :goto_13
    return-object p1

    .line 738
    :cond_14
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_19

    return-object p0

    .line 743
    :cond_19
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    .line 746
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v0

    .line 747
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v1

    .line 748
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    if-eqz p2, :cond_3d

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->addAndCheck(II)I

    move-result p2

    goto :goto_41

    :cond_3d
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->subAndCheck(II)I

    move-result p2

    :goto_41
    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p0

    invoke-direct {v2, p2, p0}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2

    .line 754
    :cond_4d
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 755
    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz p2, :cond_7a

    .line 756
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_7e

    :cond_7a
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :goto_7e
    int-to-long v1, v0

    .line 759
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-nez v1, :cond_8f

    move v1, v0

    goto :goto_93

    .line 760
    :cond_8f
    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    :goto_93
    int-to-long v2, v1

    .line 763
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 764
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_b8

    .line 767
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p0, v0

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p1, v1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p0

    invoke-direct {v2, p2, p0}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2

    .line 765
    :cond_b8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: numerator too large after multiply"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(D)Lorg/apache/commons/lang3/math/Fraction;
    .registers 22

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    .line 250
    :goto_9
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_81

    .line 251
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_81

    double-to-int v4, v2

    int-to-double v5, v4

    sub-double/2addr v2, v5

    double-to-int v5, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v5

    sub-double v8, v2, v8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    move-wide/from16 p0, v2

    move v13, v12

    move v14, v13

    const/4 v12, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_33
    div-double v1, v6, v8

    double-to-int v1, v1

    int-to-double v2, v1

    mul-double/2addr v2, v8

    sub-double/2addr v6, v2

    mul-int v2, v5, v12

    add-int/2addr v2, v13

    mul-int/2addr v5, v14

    add-int v3, v5, v15

    move-wide/from16 v17, v6

    int-to-double v5, v2

    move v7, v1

    move v13, v2

    int-to-double v1, v3

    div-double/2addr v5, v1

    move-wide/from16 v1, p0

    sub-double v5, v1, v5

    .line 280
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const/4 v15, 0x1

    add-int/lit8 v1, v16, 0x1

    cmpl-double v2, v10, v5

    const/16 v10, 0x19

    if-lez v2, :cond_6f

    const/16 v2, 0x2710

    if-gt v3, v2, :cond_6f

    if-lez v3, :cond_6f

    if-lt v1, v10, :cond_60

    goto :goto_6f

    :cond_60
    move/from16 v16, v1

    move-wide v10, v5

    move v5, v7

    move-wide v6, v8

    move v15, v14

    move-wide/from16 v8, v17

    move v14, v3

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    goto :goto_33

    :cond_6f
    :goto_6f
    if-eq v1, v10, :cond_79

    mul-int/2addr v4, v14

    add-int/2addr v12, v4

    mul-int/2addr v12, v0

    .line 293
    invoke-static {v12, v14}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0

    .line 291
    :cond_79
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to convert double to fraction"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_81
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    if-eqz p1, :cond_1b

    if-gez p1, :cond_15

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_d

    if-eq p1, v0, :cond_d

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_15

    .line 148
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_15
    :goto_15
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 144
    :cond_1b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(III)Lorg/apache/commons/lang3/math/Fraction;
    .registers 7

    if-eqz p2, :cond_40

    if-ltz p2, :cond_38

    if-ltz p1, :cond_30

    if-gez p0, :cond_e

    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long p0, p1

    sub-long/2addr v0, p0

    goto :goto_13

    :cond_e
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long p0, p1

    add-long/2addr v0, p0

    :goto_13
    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_28

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_28

    .line 191
    new-instance p0, Lorg/apache/commons/lang3/math/Fraction;

    long-to-int p1, v0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object p0

    .line 189
    :cond_28
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Numerator too large to represent as an Integer."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_30
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The numerator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_38
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_40
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(Ljava/lang/String;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The string must not be null"

    .line 315
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e

    .line 317
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_19

    .line 319
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(D)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 v1, 0x20

    .line 323
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-lez v1, :cond_55

    .line 325
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v3

    .line 326
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4d

    .line 331
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v3

    .line 332
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 333
    invoke-static {v4, v0, p0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(III)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 329
    :cond_4d
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_55
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_64

    .line 340
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 342
    :cond_64
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v3

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 344
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    if-eqz p1, :cond_30

    if-nez p0, :cond_7

    .line 213
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    return-object p0

    :cond_7
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_13

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_13

    .line 217
    div-int/lit8 p0, p0, 0x2

    .line 218
    div-int/lit8 p1, p1, 0x2

    :cond_13
    if-gez p1, :cond_24

    if-eq p0, v0, :cond_1c

    if-eq p1, v0, :cond_1c

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_24

    .line 222
    :cond_1c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_24
    :goto_24
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 229
    div-int/2addr p0, v0

    .line 230
    div-int/2addr p1, v0

    .line 231
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 210
    :cond_30
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greatestCommonDivisor(II)I
    .registers 8

    const-string v0, "overflow: gcd is 2^31"

    if-eqz p0, :cond_56

    if-nez p1, :cond_7

    goto :goto_56

    .line 574
    :cond_7
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_15

    goto :goto_55

    :cond_15
    if-lez p0, :cond_18

    neg-int p0, p0

    :cond_18
    if-lez p1, :cond_1b

    neg-int p1, p1

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    and-int/lit8 v3, p0, 0x1

    const/16 v4, 0x1f

    if-nez v3, :cond_2f

    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_2f

    if-ge v1, v4, :cond_2f

    .line 590
    div-int/lit8 p0, p0, 0x2

    .line 591
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2f
    if-eq v1, v4, :cond_4f

    if-ne v3, v2, :cond_35

    move v0, p1

    goto :goto_38

    .line 599
    :cond_35
    div-int/lit8 v0, p0, 0x2

    neg-int v0, v0

    :cond_38
    :goto_38
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3f

    .line 606
    div-int/lit8 v0, v0, 0x2

    goto :goto_38

    :cond_3f
    if-lez v0, :cond_43

    neg-int p0, v0

    goto :goto_44

    :cond_43
    move p1, v0

    :goto_44
    sub-int v0, p1, p0

    .line 615
    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_38

    neg-int p0, p0

    shl-int p1, v2, v1

    mul-int/2addr p0, p1

    return p0

    .line 595
    :cond_4f
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    return v2

    :cond_56
    :goto_56
    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_66

    if-eq p1, v1, :cond_66

    .line 571
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 569
    :cond_66
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mulAndCheck(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_13

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_13

    long-to-int p0, v0

    return p0

    .line 637
    :cond_13
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mul"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mulPosAndCheck(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_c

    long-to-int p0, v0

    return p0

    .line 655
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mulPos"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static subAndCheck(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_13

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_13

    long-to-int p0, v0

    return p0

    .line 689
    :cond_13
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/lang3/math/Fraction;
    .registers 2

    .line 518
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ltz v0, :cond_5

    return-object p0

    .line 521
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public add(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    const/4 v0, 0x1

    .line 705
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 36
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->compareTo(Lorg/apache/commons/lang3/math/Fraction;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/lang3/math/Fraction;)I
    .registers 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 865
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ne v1, v2, :cond_11

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v4, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v3, v4, :cond_11

    return v0

    :cond_11
    int-to-long v0, v1

    .line 870
    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v3, p1

    mul-long/2addr v0, v3

    int-to-long v2, v2

    .line 871
    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long p0, p0

    mul-long/2addr v2, p0

    .line 872
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public divideBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The fraction must not be null"

    .line 804
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_15

    .line 808
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 806
    :cond_15
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The fraction to divide by must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doubleValue()D
    .registers 5

    .line 445
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 827
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 830
    :cond_a
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 831
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v3

    if-ne v1, v3, :cond_21

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result p1

    if-ne p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public floatValue()F
    .registers 2

    .line 434
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getDenominator()I
    .registers 1

    .line 368
    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return p0
.end method

.method public getNumerator()I
    .registers 1

    .line 359
    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    return p0
.end method

.method public getProperNumerator()I
    .registers 2

    .line 383
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    rem-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getProperWhole()I
    .registers 2

    .line 398
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 841
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    if-nez v0, :cond_13

    .line 843
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    .line 845
    :cond_13
    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    return p0
.end method

.method public intValue()I
    .registers 2

    .line 412
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, p0

    return v0
.end method

.method public invert()Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    .line 481
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_24

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1c

    if-gez v0, :cond_14

    .line 488
    new-instance v1, Lorg/apache/commons/lang3/math/Fraction;

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int p0, p0

    neg-int v0, v0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v1

    .line 490
    :cond_14
    new-instance v1, Lorg/apache/commons/lang3/math/Fraction;

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v1

    .line 485
    :cond_1c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "overflow: can\'t negate numerator"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :cond_24
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Unable to invert zero."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longValue()J
    .registers 5

    .line 423
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The fraction must not be null"

    .line 781
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_38

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v1, :cond_11

    goto :goto_38

    .line 787
    :cond_11
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 788
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    .line 789
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p0, v1

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p1, v0

    .line 790
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p0

    .line 789
    invoke-static {v2, p0}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 783
    :cond_38
    :goto_38
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    return-object p0
.end method

.method public negate()Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    .line 502
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_f

    .line 505
    new-instance v1, Lorg/apache/commons/lang3/math/Fraction;

    neg-int v0, v0

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v1

    .line 503
    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "overflow: too large to negate"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pow(I)Lorg/apache/commons/lang3/math/Fraction;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-nez p1, :cond_9

    .line 540
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    return-object p0

    :cond_9
    const/4 v0, 0x2

    if-gez p1, :cond_29

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1f

    .line 543
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    div-int/2addr p1, v0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 545
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 547
    :cond_29
    invoke-virtual {p0, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v1

    .line 548
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_37

    .line 549
    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 551
    :cond_37
    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    .line 461
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_f

    .line 462
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    :cond_d
    move-object p0, v0

    :goto_e
    return-object p0

    .line 464
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    return-object p0

    .line 468
    :cond_1d
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget p0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p0, v0

    invoke-static {v1, p0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .registers 3

    const/4 v0, 0x0

    .line 719
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public toProperString()Ljava/lang/String;
    .registers 5

    .line 900
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_79

    .line 901
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_d

    const-string v0, "0"

    .line 902
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_79

    .line 903
    :cond_d
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_16

    const-string v0, "1"

    .line 904
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_79

    :cond_16
    mul-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1f

    const-string v0, "-1"

    .line 906
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_79

    :cond_1f
    if-lez v0, :cond_22

    neg-int v0, v0

    :cond_22
    neg-int v1, v1

    const-string v2, "/"

    if-ge v0, v1, :cond_5d

    .line 912
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperNumerator()I

    move-result v0

    if-nez v0, :cond_38

    .line 914
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_79

    .line 916
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_79

    .line 919
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    .line 922
    :cond_79
    :goto_79
    iget-object p0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 884
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    .line 887
    :cond_22
    iget-object p0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    return-object p0
.end method
