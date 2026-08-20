.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .registers 2

    sub-int/2addr p0, p1

    return p0
.end method

.method public static compare(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static compare(JJ)I
    .registers 4

    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-gez p0, :cond_a

    const/4 p0, -0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static compare(SS)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 987
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 990
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 988
    :cond_10
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0xa

    const-string v1, "-"

    .line 954
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0x"

    .line 958
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v3, 0x10

    if-nez v2, :cond_43

    const-string v2, "0X"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_43

    :cond_1f
    const-string v2, "#"

    .line 961
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    add-int/lit8 v0, v1, 0x1

    goto :goto_45

    :cond_2a
    const-string v2, "0"

    .line 964
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_40

    const/16 v0, 0x8

    move v4, v3

    move v3, v0

    move v0, v4

    goto :goto_45

    :cond_40
    move v3, v0

    move v0, v1

    goto :goto_45

    :cond_43
    :goto_43
    add-int/lit8 v0, v1, 0x2

    .line 969
    :goto_45
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v1, :cond_54

    .line 970
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    :cond_54
    return-object v2
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 897
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 881
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 916
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 934
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 654
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_240

    const/4 v1, 0x6

    const-string v2, "0x"

    const-string v3, "0X"

    const-string v4, "-0x"

    const-string v5, "-0X"

    const-string v6, "#"

    const-string v7, "-#"

    .line 658
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v1, :cond_30

    .line 660
    aget-object v5, v2, v4

    .line 661
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 662
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_31

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    move v1, v3

    :goto_31
    if-lez v1, :cond_6f

    move v0, v1

    .line 668
    :goto_34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 669
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x30

    if-ne v3, v2, :cond_47

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 676
    :cond_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x10

    if-gt v1, v0, :cond_6a

    const/16 v2, 0x37

    if-ne v1, v0, :cond_57

    if-le v3, v2, :cond_57

    goto :goto_6a

    :cond_57
    const/16 v0, 0x8

    if-gt v1, v0, :cond_65

    if-ne v1, v0, :cond_60

    if-le v3, v2, :cond_60

    goto :goto_65

    .line 683
    :cond_60
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 681
    :cond_65
    :goto_65
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 678
    :cond_6a
    :goto_6a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 685
    :cond_6f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    .line 689
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x65

    .line 690
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x45

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    const-string v7, " is not a valid number."

    const/4 v8, -0x1

    if-le v5, v8, :cond_c3

    if-le v6, v8, :cond_b8

    if-lt v6, v5, :cond_a3

    .line 696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v6, v9, :cond_a3

    add-int/lit8 v9, v5, 0x1

    .line 699
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_be

    .line 697
    :cond_a3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    add-int/lit8 v9, v5, 0x1

    .line 701
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 703
    :goto_be
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_ea

    :cond_c3
    if-le v6, v8, :cond_e5

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v6, v5, :cond_d0

    .line 709
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e9

    .line 707
    :cond_d0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_e5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_e9
    move-object v9, v0

    .line 715
    :goto_ea
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v10, :cond_1be

    if-eq v1, v4, :cond_1be

    if-le v6, v8, :cond_108

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v6, v4, :cond_108

    add-int/2addr v6, v2

    .line 717
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 722
    :cond_108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11f

    move v5, v2

    goto :goto_120

    :cond_11f
    move v5, v3

    :goto_120
    const/16 v6, 0x44

    if-eq v1, v6, :cond_18e

    const/16 v6, 0x46

    if-eq v1, v6, :cond_179

    const/16 v6, 0x4c

    if-eq v1, v6, :cond_138

    const/16 v6, 0x64

    if-eq v1, v6, :cond_18e

    const/16 v6, 0x66

    if-eq v1, v6, :cond_179

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_1a9

    :cond_138
    if-nez v9, :cond_164

    if-nez v0, :cond_164

    .line 729
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_154

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_154

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15a

    :cond_154
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 731
    :cond_15a
    :try_start_15a
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_15a .. :try_end_15e} :catch_15f

    return-object p0

    .line 735
    :catch_15f
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 738
    :cond_164
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_179
    :try_start_179
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_18e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_187
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_187} :catch_18e

    cmpl-float v1, v1, v11

    if-nez v1, :cond_18d

    if-eqz v5, :cond_18e

    :cond_18d
    return-object v0

    .line 756
    :catch_18e
    :cond_18e
    :try_start_18e
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1a4

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_19c} :catch_1a4

    float-to-double v1, v1

    cmpl-double v1, v1, v12

    if-nez v1, :cond_1a3

    if-eqz v5, :cond_1a4

    :cond_1a3
    return-object v0

    .line 764
    :catch_1a4
    :cond_1a4
    :try_start_1a4
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_1a8
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1a8} :catch_1a9

    return-object p0

    .line 770
    :catch_1a9
    :cond_1a9
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1be
    if-le v6, v8, :cond_1d0

    .line 776
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v6, v1, :cond_1d0

    add-int/2addr v6, v2

    .line 777
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1d0
    if-nez v9, :cond_1e3

    if-nez v0, :cond_1e3

    .line 784
    :try_start_1d4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1d8
    .catch Ljava/lang/NumberFormatException; {:try_start_1d4 .. :try_end_1d8} :catch_1d9

    return-object p0

    .line 789
    :catch_1d9
    :try_start_1d9
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1d9 .. :try_end_1dd} :catch_1de

    return-object p0

    .line 793
    :catch_1de
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 797
    :cond_1e3
    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    move v3, v2

    .line 799
    :cond_1f0
    :try_start_1f0
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 800
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 801
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_217

    .line 802
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_208

    if-eqz v3, :cond_217

    .line 803
    :cond_208
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_217

    return-object v0

    .line 806
    :cond_217
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_23b

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v4, v12

    if-nez v0, :cond_227

    if-eqz v3, :cond_23b

    .line 807
    :cond_227
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 808
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0
    :try_end_237
    .catch Ljava/lang/NumberFormatException; {:try_start_1f0 .. :try_end_237} :catch_23b

    if-nez p0, :cond_23a

    return-object v1

    :cond_23a
    return-object v0

    .line 816
    :catch_23b
    :cond_23b
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 655
    :cond_240
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_11

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_f

    goto :goto_11

    :cond_f
    move v1, v0

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v2

    :goto_12
    if-eqz v1, :cond_19

    .line 844
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 859
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_9
    if-ltz v1, :cond_18

    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 864
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 17

    .line 1592
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1595
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1596
    array-length v2, v0

    .line 1602
    aget-char v3, v0, v1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v3, v5, :cond_1b

    if-ne v3, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v3, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v6

    :goto_1c
    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/16 v11, 0x2e

    const/16 v12, 0x30

    if-le v2, v7, :cond_78

    .line 1603
    aget-char v13, v0, v3

    if-ne v13, v12, :cond_78

    move-object/from16 v13, p0

    invoke-static {v13, v11}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v13

    if-nez v13, :cond_78

    .line 1604
    aget-char v13, v0, v7

    const/16 v14, 0x78

    if-eq v13, v14, :cond_58

    const/16 v14, 0x58

    if-ne v13, v14, :cond_41

    goto :goto_58

    .line 1618
    :cond_41
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 1621
    :goto_47
    array-length v2, v0

    if-ge v7, v2, :cond_57

    .line 1622
    aget-char v2, v0, v7

    if-lt v2, v12, :cond_56

    const/16 v3, 0x37

    if-le v2, v3, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_56
    :goto_56
    return v1

    :cond_57
    return v6

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_5d

    return v1

    .line 1610
    :cond_5d
    :goto_5d
    array-length v2, v0

    if-ge v3, v2, :cond_77

    .line 1611
    aget-char v2, v0, v3

    if-lt v2, v12, :cond_66

    if-le v2, v10, :cond_73

    :cond_66
    const/16 v4, 0x61

    if-lt v2, v4, :cond_6c

    if-le v2, v9, :cond_73

    :cond_6c
    const/16 v4, 0x41

    if-lt v2, v4, :cond_76

    if-le v2, v8, :cond_73

    goto :goto_76

    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_76
    :goto_76
    return v1

    :cond_77
    return v6

    :cond_78
    add-int/lit8 v2, v2, -0x1

    move v7, v1

    move v13, v7

    move v14, v13

    move v15, v14

    :goto_7e
    const/16 v5, 0x45

    const/16 v4, 0x65

    if-lt v3, v2, :cond_d0

    add-int/lit8 v8, v2, 0x1

    if-ge v3, v8, :cond_8f

    if-eqz v7, :cond_8f

    if-nez v13, :cond_8f

    const/16 v8, 0x46

    goto :goto_d0

    .line 1667
    :cond_8f
    array-length v2, v0

    if-ge v3, v2, :cond_ca

    .line 1668
    aget-char v0, v0, v3

    if-lt v0, v12, :cond_99

    if-gt v0, v10, :cond_99

    return v6

    :cond_99
    if-eq v0, v4, :cond_c9

    if-ne v0, v5, :cond_9e

    goto :goto_c9

    :cond_9e
    if-ne v0, v11, :cond_a7

    if-nez v15, :cond_a6

    if-eqz v14, :cond_a5

    goto :goto_a6

    :cond_a5
    return v13

    :cond_a6
    :goto_a6
    return v1

    :cond_a7
    if-nez v7, :cond_b8

    const/16 v2, 0x64

    if-eq v0, v2, :cond_b7

    const/16 v2, 0x44

    if-eq v0, v2, :cond_b7

    if-eq v0, v9, :cond_b7

    const/16 v8, 0x46

    if-ne v0, v8, :cond_b8

    :cond_b7
    return v13

    :cond_b8
    const/16 v2, 0x6c

    if-eq v0, v2, :cond_c2

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_c1

    goto :goto_c2

    :cond_c1
    return v1

    :cond_c2
    :goto_c2
    if-eqz v13, :cond_c9

    if-nez v14, :cond_c9

    if-nez v15, :cond_c9

    move v1, v6

    :cond_c9
    :goto_c9
    return v1

    :cond_ca
    if-nez v7, :cond_cf

    if-eqz v13, :cond_cf

    move v1, v6

    :cond_cf
    return v1

    .line 1635
    :cond_d0
    :goto_d0
    aget-char v6, v0, v3

    if-lt v6, v12, :cond_dd

    if-gt v6, v10, :cond_dd

    move v7, v1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v13, 0x1

    goto :goto_10c

    :cond_dd
    if-ne v6, v11, :cond_eb

    if-nez v15, :cond_ea

    if-eqz v14, :cond_e4

    goto :goto_ea

    :cond_e4
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v15, 0x1

    goto :goto_10c

    :cond_ea
    :goto_ea
    return v1

    :cond_eb
    if-eq v6, v4, :cond_100

    if-ne v6, v5, :cond_f0

    goto :goto_100

    :cond_f0
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v6, v4, :cond_fa

    if-ne v6, v5, :cond_f9

    goto :goto_fa

    :cond_f9
    return v1

    :cond_fa
    :goto_fa
    if-nez v7, :cond_fd

    return v1

    :cond_fd
    move v7, v1

    move v13, v7

    goto :goto_10c

    :cond_100
    :goto_100
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eqz v14, :cond_107

    return v1

    :cond_107
    if-nez v13, :cond_10a

    return v1

    :cond_10a
    const/4 v7, 0x1

    const/4 v14, 0x1

    :goto_10c
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto/16 :goto_7e
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 1

    .line 1536
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1566
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5

    .line 1722
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1725
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_17

    return v1

    .line 1728
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2b

    .line 1729
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_26

    return v1

    .line 1732
    :cond_26
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 1734
    :cond_2b
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static max(BBB)B
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([B)B
    .registers 4

    .line 1232
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1235
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 1236
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1237
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static max(DDD)D
    .registers 6

    .line 1505
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 7

    .line 1257
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1260
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1261
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    .line 1262
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1265
    :cond_15
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1c

    move-wide v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-wide v0
.end method

.method public static max(FFF)F
    .registers 3

    .line 1521
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 5

    .line 1285
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1288
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1289
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 1290
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 1293
    :cond_15
    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1c

    move v0, v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return v0
.end method

.method public static max(III)I
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([I)I
    .registers 4

    .line 1184
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1187
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1188
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1189
    aget v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static max(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-lez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs max([J)J
    .registers 7

    .line 1160
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1163
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1164
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 1165
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_11

    move-wide v0, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([S)S
    .registers 4

    .line 1208
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1211
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 1212
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1213
    aget-short v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(BBB)B
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([B)B
    .registers 4

    .line 1078
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1081
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 1082
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1083
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(DDD)D
    .registers 6

    .line 1399
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 7

    .line 1103
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1106
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1107
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    .line 1108
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1111
    :cond_15
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1c

    move-wide v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-wide v0
.end method

.method public static min(FFF)F
    .registers 3

    .line 1415
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 5

    .line 1131
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1134
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1135
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 1136
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 1139
    :cond_15
    aget v2, p0, v1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_1c

    move v0, v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return v0
.end method

.method public static min(III)I
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([I)I
    .registers 4

    .line 1030
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1033
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1034
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1035
    aget v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-gez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs min([J)J
    .registers 7

    .line 1006
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1009
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1010
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 1011
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_11

    move-wide v0, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([S)S
    .registers 4

    .line 1054
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1057
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 1058
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1059
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result p0

    return p0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 373
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    const-wide/16 v0, 0x0

    .line 255
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 282
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .registers 3

    const-wide/16 v0, 0x0

    .line 305
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .registers 3

    if-nez p0, :cond_3

    goto :goto_7

    .line 326
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    :goto_7
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 230
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 129
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    .line 153
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 178
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .registers 3

    .line 518
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    if-nez p0, :cond_5

    .line 535
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 538
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 537
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .registers 3

    .line 479
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5

    if-nez p0, :cond_5

    .line 496
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 499
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 498
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    .line 557
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_5

    .line 574
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 577
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 576
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3

    .line 441
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_5

    .line 458
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :cond_5
    if-nez p2, :cond_9

    .line 460
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    :cond_9
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2

    const/4 v0, 0x0

    .line 397
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 422
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The Array must not be null"

    .line 1308
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    move p0, v0

    :goto_11
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Array cannot be empty."

    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1739
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2b

    .line 1740
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    if-le v1, v3, :cond_1b

    return v0

    :cond_1b
    if-nez v2, :cond_28

    .line 1747
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2b
    return v3
.end method
