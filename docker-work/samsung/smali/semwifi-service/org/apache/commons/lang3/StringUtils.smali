.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final STRING_BUILDER_SIZE:I = 0x100

.field private static final STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 185
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const-string v0, "..."

    const/4 v1, 0x0

    .line 221
    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const-string v0, "..."

    .line 260
    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 300
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 11

    .line 340
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-lez p3, :cond_16

    .line 341
    invoke-static {p0, v1, p3}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 342
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-object p0

    .line 345
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    add-int v4, v0, v0

    add-int/2addr v4, v2

    if-lt p3, v3, :cond_b4

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p3, :cond_37

    return-object p0

    .line 355
    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_41

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 358
    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int v6, p3, v0

    if-ge v5, v6, :cond_4f

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v6

    :cond_4f
    if-gt p2, v3, :cond_65

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    if-lt p3, v4, :cond_a0

    add-int/2addr p3, p2

    sub-int/2addr p3, v0

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_87

    .line 368
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Minimum abbreviation width with offset is %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Minimum abbreviation width is %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 403
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_1d

    goto :goto_45

    .line 407
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    .line 408
    div-int/lit8 v1, p2, 0x2

    rem-int/2addr p2, v0

    add-int/2addr p2, v1

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_45
    :goto_45
    return-object p0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_38

    .line 428
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    .line 431
    :cond_f
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 432
    array-length v0, p3

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    .line 433
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object p0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 438
    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_38
    :goto_38
    return-object p0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 476
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 514
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 539
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 545
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    if-ne v2, v3, :cond_13

    return-object p0

    .line 551
    :cond_13
    new-array v4, v0, [I

    .line 553
    aput v3, v4, v1

    .line 554
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_1c
    if-ge v2, v0, :cond_2d

    .line 555
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 556
    aput v5, v4, v3

    .line 557
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v6

    goto :goto_1c

    .line 559
    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v3}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    .line 588
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_19

    if-gtz p1, :cond_5

    goto :goto_19

    .line 619
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p1, v0

    if-gtz v1, :cond_e

    return-object p0

    .line 624
    :cond_e
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 625
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_21

    if-gtz p1, :cond_5

    goto :goto_21

    .line 659
    :cond_5
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, " "

    .line 662
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p1, v0

    if-gtz v1, :cond_16

    return-object p0

    .line 667
    :cond_16
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 668
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 700
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 704
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    .line 705
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p0

    :cond_1d
    :goto_1d
    const-string p0, ""

    return-object p0

    .line 712
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_36

    add-int/lit8 v2, v0, -0x1

    .line 716
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3a

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_36
    if-eq v4, v3, :cond_3a

    add-int/lit8 v0, v0, 0x1

    .line 722
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 786
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0xa

    if-ne p0, v3, :cond_2c

    add-int/lit8 v0, v0, -0x1

    .line 793
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0xd

    if-ne p0, v3, :cond_2c

    .line 794
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v2
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    .line 834
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_d

    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_13

    if-eqz p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    .line 881
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    .line 922
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_d

    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_13

    if-eqz p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    .line 974
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 1029
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1032
    :cond_8
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    if-ltz p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_6

    goto :goto_d

    .line 1003
    :cond_6
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    :goto_d
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1127
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13

    .line 1063
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1066
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1067
    array-length v2, p1

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v2, -0x1

    move v5, v1

    :goto_18
    if-ge v5, v0, :cond_44

    .line 1071
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v1

    :goto_1f
    if-ge v7, v2, :cond_41

    .line 1073
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3e

    .line 1074
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3d

    if-ne v7, v4, :cond_2f

    return v9

    :cond_2f
    if-ge v5, v3, :cond_3e

    add-int/lit8 v8, v7, 0x1

    .line 1079
    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3e

    :cond_3d
    return v9

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    .line 1156
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 1159
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 1160
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_6

    goto :goto_24

    .line 1195
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1196
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    move v9, v0

    :goto_11
    if-gt v9, v8, :cond_24

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    .line 1198
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1287
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13

    const/4 v0, 0x1

    if-eqz p0, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    .line 1234
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1236
    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_11
    if-ge v6, v1, :cond_3c

    .line 1239
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v5

    :goto_18
    if-ge v8, v3, :cond_39

    .line 1241
    aget-char v9, p1, v8

    if-ne v9, v7, :cond_36

    .line 1242
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_35

    if-ne v8, v4, :cond_27

    return v5

    :cond_27
    if-ge v6, v2, :cond_36

    add-int/lit8 v9, v8, 0x1

    .line 1247
    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_36

    :cond_35
    return v5

    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_3c
    :goto_3c
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1355
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p0, :cond_6

    goto :goto_1a

    .line 1319
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    return v2

    .line 1322
    :cond_e
    array-length v1, p1

    if-nez v1, :cond_12

    return v0

    .line 1325
    :cond_12
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    move v0, v2

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 1370
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1373
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1e

    .line 1375
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    return v1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    .line 1383
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 1384
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x141

    if-ne v1, v2, :cond_18

    .line 1385
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    .line 1386
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 1387
    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_28

    .line 1388
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x6c

    .line 1389
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .registers 5

    .line 1414
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    .line 1419
    :goto_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1420
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return v0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5

    .line 1450
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    move v0, v1

    .line 1455
    :goto_f
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    .line 1457
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    :cond_1e
    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1483
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p0, p1

    :cond_7
    return-object p0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1505
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object p0, p1

    :cond_7
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 1525
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1566
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1569
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1570
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v0, :cond_28

    .line 1573
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_25

    add-int/lit8 v5, v4, 0x1

    .line 1574
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    move v4, v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    if-ne v4, v0, :cond_2b

    return-object p0

    .line 1580
    :cond_2b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 1620
    :cond_6
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_10

    const-string p0, ""

    return-object p0

    .line 1624
    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1652
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 1670
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    return v0

    .line 1673
    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v4, v0, v1

    const/4 v6, 0x0

    .line 1674
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    if-ne p0, p1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    .line 1699
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 1702
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 1703
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1734
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_38

    if-nez p1, :cond_a

    goto :goto_38

    .line 1768
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    .line 1771
    :cond_15
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_22

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 1772
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1775
    :cond_22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v1

    :goto_27
    if-ge v3, v2, :cond_37

    .line 1777
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_34

    return v1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_37
    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    .line 1804
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1805
    array-length v0, p1

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    .line 1806
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return v1
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    .line 1834
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1835
    array-length v0, p1

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    .line 1836
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 11

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_a

    goto :goto_23

    .line 1872
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1875
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_23
    :goto_23
    return v0
.end method

.method public static varargs firstNonBlank([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_12

    .line 1906
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 1907
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs firstNonEmpty([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_12

    .line 1941
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 1942
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_5

    .line 1974
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_d

    :cond_5
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    if-nez p0, :cond_5

    .line 1960
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_d

    :cond_5
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2011
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 2014
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_17

    .line 2017
    aget-object p0, p0, v3

    if-nez p0, :cond_16

    return-object v1

    :cond_16
    return-object p0

    :cond_17
    if-nez v0, :cond_1a

    return-object v1

    .line 2026
    :cond_1a
    aget-object p0, p0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2053
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 2056
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_23

    .line 2059
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2060
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2061
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2064
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_46

    .line 2108
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 2109
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x80000000

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 2121
    :goto_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_45

    .line 2122
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v0

    .line 2125
    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_42

    if-nez v5, :cond_42

    .line 2126
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_3f

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v3, :cond_3d

    add-int/lit8 v2, v2, 0x2

    :cond_3d
    const/4 v5, 0x1

    move p2, v3

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_45
    return v2

    .line 2101
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Locale must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2099
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIfBlank(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2176
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_a

    const/4 p0, 0x0

    goto :goto_10

    :cond_a
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :cond_10
    :goto_10
    return-object p0
.end method

.method public static getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2204
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_a

    const/4 p0, 0x0

    goto :goto_10

    :cond_a
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :cond_10
    :goto_10
    return-object p0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_5a

    if-eqz p1, :cond_5a

    .line 2250
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2251
    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_13

    return-wide v3

    .line 2255
    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-double v3, p0

    div-double v3, v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-double p0, p0

    div-double p0, v1, p0

    add-double/2addr v3, p0

    const/4 p0, 0x1

    aget p0, v0, p0

    int-to-double p0, p0

    sub-double p0, v1, p0

    div-double/2addr p0, v1

    add-double/2addr v3, p0

    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    div-double/2addr v3, p0

    const-wide p0, 0x3fe6666666666666L    # 0.7

    cmpg-double p0, v3, p0

    if-gez p0, :cond_37

    goto :goto_50

    :cond_37
    const-wide p0, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x3

    .line 2256
    aget v1, v0, v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v1, v5, v1

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-double v0, v0

    mul-double/2addr p0, v0

    sub-double/2addr v5, v3

    mul-double/2addr p0, v5

    add-double/2addr v3, p0

    :goto_50
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, p0

    .line 2257
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p0

    return-wide v0

    .line 2247
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_65

    if-eqz p1, :cond_65

    .line 2303
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2304
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-nez v1, :cond_12

    return v0

    :cond_12
    if-le v0, v1, :cond_1c

    .line 2318
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1f

    :cond_1c
    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    :goto_1f
    add-int/lit8 v2, v0, 0x1

    .line 2321
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-gt v4, v0, :cond_2c

    .line 2332
    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2c
    const/4 v4, 0x1

    move v5, v4

    :goto_2e
    if-gt v5, v1, :cond_62

    .line 2336
    aget v6, v2, v3

    add-int/lit8 v7, v5, -0x1

    .line 2337
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2338
    aput v5, v2, v3

    move v8, v4

    :goto_3b
    if-gt v8, v0, :cond_5f

    .line 2341
    aget v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    .line 2342
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_49

    move v11, v3

    goto :goto_4a

    :cond_49
    move v11, v4

    .line 2344
    :goto_4a
    aget v10, v2, v10

    add-int/2addr v10, v4

    aget v12, v2, v8

    add-int/2addr v12, v4

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v6, v11

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v8

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_3b

    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 2349
    :cond_62
    aget p0, v2, v0

    return p0

    .line 2300
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v0, p2

    if-eqz p0, :cond_c0

    if-eqz p1, :cond_c0

    if-ltz v0, :cond_b8

    .line 2440
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2441
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v1, :cond_18

    if-gt v2, v0, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    return v2

    :cond_18
    if-nez v2, :cond_1f

    if-gt v1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    return v1

    :cond_1f
    sub-int v4, v1, v2

    .line 2448
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_28

    return v3

    :cond_28
    if-le v1, v2, :cond_35

    .line 2459
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v5, v1

    move v4, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_3b

    :cond_35
    move v4, v1

    move v5, v2

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    :goto_3b
    add-int/lit8 v6, v4, 0x1

    .line 2462
    new-array v7, v6, [I

    .line 2463
    new-array v8, v6, [I

    .line 2467
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x0

    move v12, v11

    :goto_49
    if-ge v12, v9, :cond_50

    .line 2469
    aput v12, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_49

    :cond_50
    const v12, 0x7fffffff

    .line 2473
    invoke-static {v7, v9, v6, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 2474
    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([II)V

    move v6, v10

    :goto_5a
    if-gt v6, v5, :cond_b2

    add-int/lit8 v9, v6, -0x1

    .line 2478
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 2479
    aput v6, v8, v11

    sub-int v13, v6, v0

    .line 2482
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int v14, v12, v0

    if-le v6, v14, :cond_70

    move v14, v4

    goto :goto_76

    :cond_70
    add-int v14, v6, v0

    .line 2483
    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_76
    if-le v13, v14, :cond_79

    return v3

    :cond_79
    if-le v13, v10, :cond_7f

    add-int/lit8 v15, v13, -0x1

    .line 2492
    aput v12, v8, v15

    :cond_7f
    :goto_7f
    if-gt v13, v14, :cond_a6

    add-int/lit8 v15, v13, -0x1

    .line 2497
    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_8e

    .line 2499
    aget v11, v7, v15

    aput v11, v8, v13

    goto :goto_9f

    .line 2502
    :cond_8e
    aget v11, v8, v15

    aget v12, v7, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget v12, v7, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v10

    aput v11, v8, v13

    :goto_9f
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    const v12, 0x7fffffff

    goto :goto_7f

    :cond_a6
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    const v12, 0x7fffffff

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    goto :goto_5a

    .line 2514
    :cond_b2
    aget v1, v7, v4

    if-gt v1, v0, :cond_b7

    return v1

    :cond_b7
    return v3

    .line 2393
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2390
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    .line 2631
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    .line 2634
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    .line 2691
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2694
    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    :cond_5
    const/4 v0, 0x0

    .line 2548
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 2588
    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3

    .line 2827
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 2830
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 13

    .line 2723
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_43

    .line 2726
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 2728
    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_19
    if-ge v6, v0, :cond_43

    .line 2731
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v5

    :goto_20
    if-ge v8, v3, :cond_40

    .line 2733
    aget-char v9, p1, v8

    if-ne v9, v7, :cond_3d

    if-ge v6, v2, :cond_3c

    if-ge v8, v4, :cond_3c

    .line 2734
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3c

    add-int/lit8 v9, v8, 0x1

    .line 2736
    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_3d

    :cond_3c
    return v6

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_43
    :goto_43
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9

    const/4 v0, -0x1

    if-eqz p0, :cond_25

    if-nez p1, :cond_6

    goto :goto_25

    .line 2786
    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move v4, v2

    move v5, v3

    :goto_d
    if-ge v4, v1, :cond_21

    aget-object v6, p1, v4

    if-nez v6, :cond_14

    goto :goto_1e

    .line 2790
    :cond_14
    invoke-static {p0, v6, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne v6, v0, :cond_1b

    goto :goto_1e

    :cond_1b
    if-ge v6, v5, :cond_1e

    move v5, v6

    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_21
    if-ne v5, v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v5

    :cond_25
    :goto_25
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9

    .line 2910
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3f

    .line 2913
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v0, :cond_3f

    .line 2915
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2916
    invoke-static {p1, v4, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v0, :cond_3a

    .line 2917
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2918
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v5, :cond_3d

    .line 2919
    invoke-static {p1, v4, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3d

    return v3

    :cond_3a
    if-nez v5, :cond_3d

    return v3

    :cond_3d
    move v3, v6

    goto :goto_14

    :cond_3f
    :goto_3f
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 13

    .line 2860
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_43

    .line 2863
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 2865
    array-length v3, p1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_19
    if-ge v6, v0, :cond_43

    .line 2869
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v5

    :goto_20
    if-ge v8, v3, :cond_42

    .line 2871
    aget-char v9, p1, v8

    if-ne v9, v7, :cond_3f

    if-ge v6, v2, :cond_3c

    if-ge v8, v4, :cond_3c

    .line 2872
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3c

    add-int/lit8 v9, v8, 0x1

    .line 2873
    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_3f

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_42
    return v6

    :cond_43
    :goto_43
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v0, -0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    if-nez p1, :cond_a

    goto :goto_32

    .line 3054
    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 3055
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3059
    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt v1, p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge v1, p0, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 12

    .line 2964
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_9

    return v1

    .line 2969
    :cond_9
    array-length v0, p0

    const v3, 0x7fffffff

    .line 2976
    array-length v4, p0

    const/4 v5, 0x0

    move v7, v2

    move v6, v5

    move v8, v6

    move v9, v8

    :goto_13
    if-ge v6, v4, :cond_30

    aget-object v10, p0, v6

    if-nez v10, :cond_1c

    move v9, v2

    move v3, v5

    goto :goto_2d

    .line 2982
    :cond_1c
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2983
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v5

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_30
    if-nez v7, :cond_60

    if-nez v8, :cond_37

    if-nez v9, :cond_37

    goto :goto_60

    :cond_37
    if-nez v3, :cond_3a

    return v5

    :cond_3a
    move v6, v1

    move v4, v5

    :goto_3c
    if-ge v4, v3, :cond_5a

    .line 3000
    aget-object v7, p0, v5

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v9, v2

    :goto_45
    if-ge v9, v0, :cond_54

    .line 3002
    aget-object v10, p0, v9

    invoke-interface {v10, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v7, :cond_51

    move v6, v4

    goto :goto_54

    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    :cond_54
    :goto_54
    if-eq v6, v1, :cond_57

    goto :goto_5a

    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_5a
    :goto_5a
    if-ne v6, v1, :cond_5f

    if-eq v3, v8, :cond_5f

    return v3

    :cond_5f
    return v6

    :cond_60
    :goto_60
    return v1
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    const/4 v0, 0x0

    .line 3091
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 12

    const/4 v0, -0x1

    if-eqz p0, :cond_33

    if-nez p1, :cond_6

    goto :goto_33

    :cond_6
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 3133
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-le p2, v1, :cond_17

    return v0

    .line 3137
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1e

    return p2

    :cond_1e
    :goto_1e
    if-ge p2, v1, :cond_33

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3141
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v5, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_30

    return p2

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_33
    :goto_33
    return v0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .registers 6

    .line 3170
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 3173
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_19

    aget-object v4, p0, v3

    .line 3174
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return v1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .registers 6

    .line 3201
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 3204
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_19

    aget-object v4, p0, v3

    .line 3205
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return v1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3235
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3238
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 3240
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3270
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3273
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 3275
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3305
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3308
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 3310
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3413
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_21

    .line 3415
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3340
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3343
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 3345
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3378
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_21

    .line 3380
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3446
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3449
    :cond_8
    array-length v0, p0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    .line 3450
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3478
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3481
    :cond_8
    array-length v0, p0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    .line 3482
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3519
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_19

    .line 3521
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    .line 3550
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_1a

    .line 3555
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 3584
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .registers 8

    .line 3610
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    goto :goto_3c

    .line 3615
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_16
    if-ge v3, v0, :cond_37

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    return v2

    .line 3619
    :cond_1d
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_29

    move v4, v2

    goto :goto_34

    .line 3621
    :cond_29
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_34

    move v5, v2

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_37
    if-eqz v4, :cond_3c

    if-eqz v5, :cond_3c

    move v1, v2

    :cond_3c
    :goto_3c
    return v1
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .registers 1

    .line 3652
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .registers 1

    .line 3676
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 3699
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 3718
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 3753
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3756
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 3758
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3795
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_21

    .line 3797
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3830
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_19

    .line 3832
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4257
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4278
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4301
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 4304
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4305
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4306
    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4310
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_28

    .line 4312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4315
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4316
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4317
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 4319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 4323
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4345
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 4348
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4349
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4350
    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4354
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_28

    .line 4356
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4359
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_33

    .line 4361
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 4365
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 4368
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4405
    :cond_b
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 4406
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4443
    :cond_b
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 4444
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([BC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 3868
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([BCII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 3910
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3911
    aget-byte v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 3913
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3914
    aget-byte v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 3916
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([CC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 3948
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([CCII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 3990
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3991
    aget-char v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 3993
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3994
    aget-char v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 3996
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([DC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4028
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([DCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4070
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4071
    aget-wide v1, p0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 4073
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4074
    aget-wide v1, p0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4076
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([FC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4108
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([FCII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4150
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4151
    aget v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 4153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4154
    aget v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4156
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([IC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4188
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([ICII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4230
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4231
    aget v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 4233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4234
    aget v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4236
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([JC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4477
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([JCII)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4519
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4520
    aget-wide v1, p0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 4522
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4523
    aget-wide v1, p0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4525
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    .line 4807
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4554
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4591
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4592
    aget-object v1, p0, p2

    if-eqz v1, :cond_16

    .line 4593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_16
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_25

    .line 4596
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4597
    aget-object v1, p0, p2

    if-eqz v1, :cond_16

    .line 4598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 4601
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4631
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, ""

    if-nez p1, :cond_9

    move-object p1, v0

    :cond_9
    sub-int v1, p3, p2

    if-gtz v1, :cond_e

    return-object v0

    .line 4684
    :cond_e
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4686
    aget-object v1, p0, p2

    if-eqz v1, :cond_19

    .line 4687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_19
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_28

    .line 4691
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4693
    aget-object v1, p0, p2

    if-eqz v1, :cond_19

    .line 4694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 4697
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([SC)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 4729
    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([SCII)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sub-int v0, p3, p2

    if-gtz v0, :cond_b

    const-string p0, ""

    return-object p0

    .line 4771
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4772
    aget-short v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_21

    .line 4774
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4775
    aget-short v1, p0, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4777
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_35

    .line 4835
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4839
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4840
    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4841
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4844
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4845
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 4849
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4832
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object varargs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    .line 4961
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 4964
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    .line 5012
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 5015
    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 4879
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 4921
    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    .line 5050
    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    if-nez v3, :cond_f

    goto :goto_1a

    .line 5054
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    if-le v3, v0, :cond_1a

    move v0, v3

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 5089
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v0, -0x1

    if-eqz p0, :cond_39

    if-nez p1, :cond_6

    goto :goto_39

    .line 5128
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1a

    .line 5129
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr p2, v1

    :cond_1a
    if-gez p2, :cond_1d

    return v0

    .line 5134
    :cond_1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_24

    return p2

    :cond_24
    :goto_24
    if-ltz p2, :cond_39

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 5139
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_36

    return p2

    :cond_36
    add-int/lit8 p2, p2, -0x1

    goto :goto_24

    :cond_39
    :goto_39
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x1

    .line 5181
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    return-object p0

    .line 5213
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 5216
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    .line 5239
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5267
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 5272
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5274
    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5304
    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, " "

    .line 5307
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 5308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-gtz v1, :cond_19

    return-object p0

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2a

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2a

    .line 5314
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    if-ne v1, v0, :cond_31

    .line 5318
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ge v1, v0, :cond_3c

    .line 5320
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5322
    :cond_3c
    new-array p1, v1, [C

    .line 5323
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_42
    if-ge v3, v1, :cond_4d

    .line 5325
    rem-int v2, v3, v0

    aget-char v2, p2, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 5327
    :cond_4d
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 5343
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5369
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5392
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .registers 17

    .line 5397
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    move-object v0, p0

    move-object/from16 v1, p1

    goto :goto_11

    :cond_e
    move-object v1, p0

    move-object/from16 v0, p1

    .line 5404
    :goto_11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5405
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, -0x1

    .line 5406
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 5407
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v8, v8, [Z

    move v9, v5

    move v10, v9

    .line 5409
    :goto_30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_64

    .line 5410
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    sub-int v12, v9, v2

    .line 5411
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v13, v9, v2

    add-int/2addr v13, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_4b
    if-ge v12, v13, :cond_61

    .line 5412
    aget-boolean v14, v8, v12

    if-nez v14, :cond_5e

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v11, v14, :cond_5e

    .line 5413
    aput v12, v6, v9

    .line 5414
    aput-boolean v4, v8, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    :cond_61
    :goto_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 5420
    :cond_64
    new-array v2, v10, [C

    .line 5421
    new-array v9, v10, [C

    move v11, v5

    move v12, v11

    .line 5422
    :goto_6a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v11, v13, :cond_7f

    .line 5423
    aget v13, v6, v11

    if-eq v13, v7, :cond_7c

    .line 5424
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput-char v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_7f
    move v6, v5

    move v7, v6

    .line 5428
    :goto_81
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v6, v11, :cond_96

    .line 5429
    aget-boolean v11, v8, v6

    if-eqz v11, :cond_93

    .line 5430
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    :cond_96
    move v6, v5

    move v7, v6

    :goto_98
    if-ge v6, v10, :cond_a5

    .line 5436
    aget-char v8, v2, v6

    aget-char v11, v9, v6

    if-eq v8, v11, :cond_a2

    add-int/lit8 v7, v7, 0x1

    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    :cond_a5
    move v2, v5

    move v6, v2

    .line 5441
    :goto_a7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_bf

    move-object v8, p0

    .line 5442
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object/from16 v11, p1

    invoke-interface {v11, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v9, v12, :cond_bf

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_bf
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput v10, v1, v5

    .line 5448
    div-int/2addr v7, v3

    aput v7, v1, v4

    aput v6, v1, v3

    const/4 v2, 0x3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    aput v0, v1, v2

    return-object v1
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-ltz p2, :cond_21

    .line 5480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_21

    :cond_d
    if-gez p1, :cond_10

    const/4 p1, 0x0

    .line 5486
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-gt v0, p2, :cond_1c

    .line 5487
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5489
    :cond_1c
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    const-string p0, ""

    return-object p0
.end method

.method private static newStringBuilder(I)Ljava/lang/StringBuilder;
    .registers 2

    .line 5493
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 p0, p0, 0x10

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 5540
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 5543
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5544
    new-array v1, v0, [C

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    move v7, v6

    :goto_13
    if-ge v4, v0, :cond_41

    .line 5549
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 5550
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_31

    if-nez v7, :cond_2e

    if-nez v5, :cond_2e

    add-int/lit8 v8, v6, 0x1

    const-string v9, " "

    .line 5553
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v1, v6

    move v6, v8

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_31
    add-int/lit8 v5, v6, 0x1

    const/16 v7, 0xa0

    if-ne v8, v7, :cond_39

    const/16 v8, 0x20

    .line 5558
    :cond_39
    aput-char v8, v1, v6

    move v7, v3

    move v6, v5

    move v5, v7

    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_41
    if-eqz v5, :cond_46

    const-string p0, ""

    return-object p0

    .line 5565
    :cond_46
    new-instance p0, Ljava/lang/String;

    if-lez v7, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    sub-int/2addr v6, v2

    invoke-direct {p0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x0

    .line 5619
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    if-gtz p2, :cond_8

    goto :goto_32

    .line 5641
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz p3, :cond_15

    .line 5642
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_15
    return v2

    :cond_16
    if-eqz p3, :cond_1c

    .line 5647
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1c
    if-eqz p3, :cond_25

    add-int/lit8 v0, v0, -0x1

    .line 5650
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2b

    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 5652
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    :goto_2b
    if-gez v0, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_1c

    :cond_32
    :goto_32
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    .line 5700
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_10

    move p2, v1

    :cond_10
    if-le p2, v0, :cond_13

    move p2, v0

    :cond_13
    if-gez p3, :cond_16

    move p3, v1

    :cond_16
    if-le p3, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v0, p3

    :goto_1a
    if-le p2, v0, :cond_1f

    move v2, v0

    move v0, p2

    move p2, v2

    .line 5718
    :cond_1f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5720
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_38

    .line 5735
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    .line 5738
    :cond_f
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5739
    array-length v0, p3

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    .line 5740
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object p0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 5745
    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_38
    :goto_38
    return-object p0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 5783
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 5821
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7

    .line 5844
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_2a

    .line 5847
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5849
    :goto_15
    array-length v3, p0

    if-ge v1, v3, :cond_24

    .line 5850
    aget-char v3, p0, v1

    if-eq v3, p1, :cond_21

    add-int/lit8 v4, v2, 0x1

    .line 5851
    aput-char v3, p0, v2

    move v2, v4

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 5854
    :cond_24
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5881
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, -0x1

    const-string v1, ""

    .line 5884
    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5934
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5962
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 5965
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 5966
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5998
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 6001
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 6002
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 6053
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6090
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, -0x1

    const-string v1, ""

    .line 6093
    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_14
    return-object p0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6130
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6160
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 6163
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6195
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 6198
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 3

    if-gtz p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 6230
    :cond_5
    new-array v0, p1, [C

    add-int/lit8 p1, p1, -0x1

    :goto_9
    if-ltz p1, :cond_10

    .line 6232
    aput-char p0, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_9

    .line 6234
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gtz p1, :cond_9

    const-string p0, ""

    return-object p0

    .line 6266
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_63

    if-nez v0, :cond_13

    goto :goto_63

    :cond_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_23

    .line 6271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    mul-int v3, v0, p1

    if-eq v0, v1, :cond_5b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3c

    .line 6288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2f
    if-ge v2, p1, :cond_37

    .line 6290
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 6292
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6279
    :cond_3c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6280
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 6281
    new-array v1, v3, [C

    mul-int/2addr p1, v4

    sub-int/2addr p1, v4

    :goto_48
    if-ltz p1, :cond_55

    .line 6283
    aput-char v0, v1, p1

    add-int/lit8 v2, p1, 0x1

    .line 6284
    aput-char p0, v1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    .line 6286
    :cond_55
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 6277
    :cond_5b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    :cond_63
    :goto_63
    return-object p0
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    .line 6324
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 6325
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6321
    :cond_1d
    :goto_1d
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    .line 6352
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 6384
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12

    .line 6419
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    if-nez p3, :cond_11

    goto :goto_6f

    :cond_11
    if-eqz p4, :cond_17

    .line 6423
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_17
    const/4 v0, 0x0

    if-eqz p4, :cond_1f

    .line 6426
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_23

    :cond_1f
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_23
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    return-object p0

    .line 6430
    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6431
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gez p3, :cond_39

    const/16 v5, 0x10

    goto :goto_3f

    :cond_39
    const/16 v5, 0x40

    .line 6432
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_3f
    mul-int/2addr v4, v5

    .line 6433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4a
    if-eq v1, v2, :cond_64

    .line 6435
    invoke-virtual {v5, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v1, v3

    add-int/2addr p3, v2

    if-nez p3, :cond_58

    goto :goto_64

    :cond_58
    if-eqz p4, :cond_5f

    .line 6440
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_4a

    :cond_5f
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_4a

    .line 6442
    :cond_64
    :goto_64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6443
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6f
    :goto_6f
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6498
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 6527
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 6567
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_43

    :cond_d
    if-nez p2, :cond_11

    const-string p2, ""

    .line 6574
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 6575
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v3, v1, :cond_3d

    .line 6578
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 6579
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_37

    if-ge v6, v0, :cond_35

    .line 6583
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    const/4 v4, 0x1

    goto :goto_3a

    .line 6586
    :cond_37
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3d
    if-eqz v4, :cond_43

    .line 6590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_43
    :goto_43
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 6635
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 16

    if-gez p4, :cond_26

    .line 6696
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6697
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6698
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 6699
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    goto :goto_26

    .line 6700
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6705
    :cond_26
    :goto_26
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_43

    if-ne p4, v1, :cond_43

    goto/16 :goto_130

    .line 6709
    :cond_43
    array-length v0, p1

    .line 6710
    array-length v2, p2

    if-ne v0, v2, :cond_111

    .line 6721
    new-array v2, v0, [Z

    const/4 v3, 0x0

    move v5, v1

    move v6, v5

    move v4, v3

    :goto_4d
    const/4 v7, 0x1

    if-ge v4, v0, :cond_75

    .line 6731
    aget-boolean v8, v2, v4

    if-nez v8, :cond_72

    aget-object v8, p1, v4

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_72

    aget-object v8, p2, v4

    if-nez v8, :cond_61

    goto :goto_72

    .line 6734
    :cond_61
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v1, :cond_6c

    .line 6738
    aput-boolean v7, v2, v4

    goto :goto_72

    :cond_6c
    if-eq v5, v1, :cond_70

    if-ge v8, v5, :cond_72

    :cond_70
    move v6, v4

    move v5, v8

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_75
    if-ne v5, v1, :cond_78

    return-object p0

    :cond_78
    move v4, v3

    move v8, v4

    .line 6759
    :goto_7a
    array-length v9, p1

    if-ge v4, v9, :cond_99

    .line 6760
    aget-object v9, p1, v4

    if-eqz v9, :cond_96

    aget-object v9, p2, v4

    if-nez v9, :cond_86

    goto :goto_96

    .line 6763
    :cond_86
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v10, p1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_96

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    :cond_96
    :goto_96
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 6769
    :cond_99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6771
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v3

    :cond_ae
    if-eq v5, v1, :cond_f4

    :goto_b0
    if-ge v4, v5, :cond_bc

    .line 6776
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 6778
    :cond_bc
    aget-object v4, p2, v6

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6780
    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    move v5, v1

    move v6, v5

    move v9, v3

    :goto_cb
    if-ge v9, v0, :cond_ae

    .line 6788
    aget-boolean v10, v2, v9

    if-nez v10, :cond_f1

    aget-object v10, p1, v9

    if-eqz v10, :cond_f1

    .line 6789
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f1

    aget-object v10, p2, v9

    if-nez v10, :cond_e0

    goto :goto_f1

    .line 6792
    :cond_e0
    aget-object v10, p1, v9

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v1, :cond_eb

    .line 6796
    aput-boolean v7, v2, v9

    goto :goto_f1

    :cond_eb
    if-eq v5, v1, :cond_ef

    if-ge v10, v5, :cond_f1

    :cond_ef
    move v6, v9

    move v5, v10

    :cond_f1
    :goto_f1
    add-int/lit8 v9, v9, 0x1

    goto :goto_cb

    .line 6807
    :cond_f4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_f8
    if-ge v4, v0, :cond_104

    .line 6809
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f8

    .line 6811
    :cond_104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_10b

    return-object p0

    :cond_10b
    sub-int/2addr p4, v7

    .line 6816
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6714
    :cond_111
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Search and Replace array lengths don\'t match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_130
    :goto_130
    return-object p0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    .line 6864
    :cond_4
    array-length v0, p1

    :goto_5
    const/4 v1, 0x1

    .line 6865
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6918
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    .line 6946
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    .line 6979
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 7008
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 7037
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7083
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7106
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7134
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    .line 7135
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 7136
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    return-object p0

    .line 7166
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    return-object p0

    .line 7169
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    .line 7192
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7220
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 7225
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7227
    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7257
    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, " "

    .line 7260
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 7261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-gtz v1, :cond_19

    return-object p0

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2a

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2a

    .line 7267
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    if-ne v1, v0, :cond_31

    .line 7271
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ge v1, v0, :cond_3c

    .line 7273
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7275
    :cond_3c
    new-array p1, v1, [C

    .line 7276
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_42
    if-ge v3, v1, :cond_4d

    .line 7278
    rem-int v2, v3, v0

    aget-char v2, p2, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 7280
    :cond_4d
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7317
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_29

    if-eqz v0, :cond_29

    .line 7318
    rem-int/2addr p1, v0

    if-nez p1, :cond_10

    goto :goto_29

    .line 7322
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    neg-int p1, p1

    .line 7324
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 7325
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    :goto_29
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 7354
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 7382
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 7411
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 7445
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 7468
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7489
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7490
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 7492
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 7493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 7495
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    .line 7496
    :goto_1f
    array-length v5, p0

    if-ge v4, v5, :cond_51

    .line 7497
    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    if-ne v5, v2, :cond_2b

    goto :goto_4e

    :cond_2b
    if-eqz p1, :cond_42

    const/4 v6, 0x2

    if-ne v5, v6, :cond_42

    if-ne v2, v3, :cond_42

    add-int/lit8 v2, v4, -0x1

    if-eq v2, v1, :cond_4d

    .line 7504
    new-instance v6, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v6, p0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_4d

    .line 7508
    :cond_42
    new-instance v2, Ljava/lang/String;

    sub-int v6, v4, v1

    invoke-direct {v2, p0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    :cond_4d
    :goto_4d
    move v2, v5

    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 7513
    :cond_51
    new-instance p1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-direct {p1, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7514
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 7542
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 7569
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 7600
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 7629
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 7662
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 7685
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 7688
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_d
    if-eqz p1, :cond_6a

    const-string v2, ""

    .line 7691
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_6a

    .line 7696
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 7698
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_24
    if-ge v4, v1, :cond_61

    .line 7703
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, -0x1

    if-le v4, v7, :cond_58

    if-le v4, v5, :cond_43

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_3b

    .line 7711
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 7715
    :cond_3b
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_43
    if-eqz p3, :cond_55

    add-int/lit8 v6, v6, 0x1

    if-ne v6, p2, :cond_52

    .line 7728
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_55

    .line 7730
    :cond_52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int v5, v4, v0

    goto :goto_24

    .line 7737
    :cond_58
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5f
    move v4, v1

    goto :goto_24

    .line 7742
    :cond_61
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 7693
    :cond_6a
    :goto_6a
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 7771
    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 7807
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 7844
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 7884
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7905
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 7907
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 7909
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_18
    if-ge v4, v0, :cond_36

    .line 7914
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, p1, :cond_31

    if-nez v5, :cond_24

    if-eqz p2, :cond_2d

    .line 7916
    :cond_24
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v2

    move v5, v3

    :cond_2d
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_18

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v6, v3

    goto :goto_18

    :cond_36
    if-nez v5, :cond_3c

    if-eqz p2, :cond_43

    if-eqz v6, :cond_43

    .line 7928
    :cond_3c
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7930
    :cond_43
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 14

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 7955
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 7957
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 7959
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_45

    move p1, v2

    move v4, p1

    move v5, v4

    move v6, v5

    move v7, v3

    :goto_1b
    if-ge p1, v0, :cond_ad

    .line 7967
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_40

    if-nez v4, :cond_2b

    if-eqz p3, :cond_3c

    :cond_2b
    add-int/lit8 v4, v7, 0x1

    if-ne v7, p2, :cond_32

    move p1, v0

    move v5, v2

    goto :goto_33

    :cond_32
    move v5, v3

    .line 7974
    :goto_33
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    move v4, v2

    :cond_3c
    add-int/lit8 v6, p1, 0x1

    move p1, v6

    goto :goto_1b

    :cond_40
    add-int/lit8 p1, p1, 0x1

    move v5, v2

    move v4, v3

    goto :goto_1b

    .line 7984
    :cond_45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_7a

    .line 7986
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_54
    if-ge v4, v0, :cond_a9

    .line 7988
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, p1, :cond_75

    if-nez v5, :cond_60

    if-eqz p3, :cond_71

    :cond_60
    add-int/lit8 v5, v8, 0x1

    if-ne v8, p2, :cond_67

    move v4, v0

    move v6, v2

    goto :goto_68

    :cond_67
    move v6, v3

    .line 7995
    :goto_68
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v5

    move v5, v2

    :cond_71
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_54

    :cond_75
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    move v5, v3

    goto :goto_54

    :cond_7a
    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_7f
    if-ge v4, v0, :cond_a9

    .line 8008
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_a4

    if-nez v5, :cond_8f

    if-eqz p3, :cond_a0

    :cond_8f
    add-int/lit8 v5, v8, 0x1

    if-ne v8, p2, :cond_96

    move v4, v0

    move v6, v2

    goto :goto_97

    :cond_96
    move v6, v3

    .line 8015
    :goto_97
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v5

    move v5, v2

    :cond_a0
    add-int/lit8 v7, v4, 0x1

    move v4, v7

    goto :goto_7f

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    move v5, v3

    goto :goto_7f

    :cond_a9
    move p1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    :cond_ad
    if-nez v4, :cond_b3

    if-eqz p3, :cond_ba

    if-eqz v5, :cond_ba

    .line 8027
    :cond_b3
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8029
    :cond_ba
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    .line 8055
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    .line 8073
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    return v0

    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 8076
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    if-ne p0, p1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    .line 8102
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 8105
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 8106
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    .line 8136
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 8164
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8194
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 8197
    :cond_7
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8198
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8223
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8224
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 8226
    sget-object p0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 8251
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 8280
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 8284
    :cond_7
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    .line 8286
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return-object v1
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8317
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    if-nez p1, :cond_1a

    :goto_9
    if-eqz v0, :cond_33

    add-int/lit8 p1, v0, -0x1

    .line 8323
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_33

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 8326
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    return-object p0

    :cond_21
    :goto_21
    if-eqz v0, :cond_33

    add-int/lit8 v1, v0, -0x1

    .line 8329
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_33
    const/4 p1, 0x0

    .line 8333
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 8361
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v1, 0x0

    if-nez p1, :cond_19

    :goto_a
    if-eq v1, v0, :cond_30

    .line 8367
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 8370
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    return-object p0

    :cond_20
    :goto_20
    if-eq v1, v0, :cond_30

    .line 8373
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 8377
    :cond_30
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    .line 8403
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8433
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8434
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_b

    .line 8470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    .line 8476
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    const-string p0, ""

    return-object p0

    .line 8480
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p2, :cond_b

    .line 8525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_b
    if-gez p1, :cond_12

    .line 8528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 8532
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    .line 8533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1c
    if-le p1, p2, :cond_21

    const-string p0, ""

    return-object p0

    :cond_21
    const/4 v0, 0x0

    if-gez p1, :cond_25

    move p1, v0

    :cond_25
    if-gez p2, :cond_28

    move p2, v0

    .line 8548
    :cond_28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfter(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 8577
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 8580
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_11

    const-string p0, ""

    return-object p0

    :cond_11
    add-int/lit8 p1, p1, 0x1

    .line 8584
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8616
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const-string v0, ""

    if-nez p1, :cond_c

    return-object v0

    .line 8622
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    return-object v0

    .line 8626
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfterLast(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 8659
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 8662
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1e

    .line 8663
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_17

    goto :goto_1e

    :cond_17
    add-int/lit8 p1, p1, 0x1

    .line 8666
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_1e
    const-string p0, ""

    return-object p0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 8699
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 8702
    :cond_7
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    return-object v1

    .line 8705
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    .line 8706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_23

    goto :goto_2d

    .line 8709
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8742
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_9

    goto :goto_1f

    .line 8745
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, ""

    return-object p0

    .line 8748
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    return-object p0

    :cond_1a
    const/4 v0, 0x0

    .line 8752
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8783
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 8786
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_15

    return-object p0

    :cond_15
    const/4 v0, 0x0

    .line 8790
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8817
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 8851
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->allNotNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 8854
    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_30

    .line 8856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_30

    .line 8858
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    return-object v1
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_54

    .line 8887
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_54

    .line 8890
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 8892
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 8894
    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 8895
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 8896
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_27
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_44

    .line 8899
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_32

    goto :goto_44

    :cond_32
    add-int/2addr v5, v3

    .line 8904
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_3a

    goto :goto_44

    .line 8908
    :cond_3a
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v5, v6, v2

    goto :goto_27

    .line 8911
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4b

    return-object v0

    .line 8914
    :cond_4b
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_54
    :goto_54
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 8945
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 8949
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8950
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v0, :cond_3d

    .line 8953
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 8955
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-static {v5}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_2e

    .line 8957
    :cond_23
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 8958
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    goto :goto_32

    .line 8956
    :cond_2e
    :goto_2e
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    :cond_32
    :goto_32
    add-int/lit8 v6, v4, 0x1

    .line 8962
    aput v5, v1, v4

    .line 8963
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_10

    .line 8965
    :cond_3d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8988
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 8989
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 8992
    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    new-array v2, v0, [I

    move v3, v1

    :goto_1d
    if-ge v1, v0, :cond_2d

    .line 8996
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v2, v1

    .line 8997
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    return-object v2
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 9016
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toRootLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 9027
    :cond_4
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static toRootUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 9038
    :cond_4
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9058
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_f

    :cond_8
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_f
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 9087
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    .line 9112
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9138
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9139
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 9175
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_32

    if-ltz p2, :cond_2a

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 9248
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_11

    const-string p0, ""

    return-object p0

    .line 9251
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_25

    add-int/2addr p2, p1

    .line 9252
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9253
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9255
    :cond_25
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9243
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxWith cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9240
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 9280
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/4 v1, 0x0

    .line 9285
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 9286
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    if-ne v2, v3, :cond_13

    return-object p0

    .line 9292
    :cond_13
    new-array v4, v0, [I

    .line 9294
    aput v3, v4, v1

    .line 9295
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_1c
    if-ge v2, v0, :cond_2d

    .line 9296
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 9297
    aput v5, v4, v3

    .line 9298
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    move v3, v6

    goto :goto_1c

    .line 9300
    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v3}, Ljava/lang/String;-><init>([III)V

    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    .line 9330
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_2b

    :cond_10
    const/4 v0, 0x0

    .line 9334
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_2b

    .line 9336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    .line 9338
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2b
    :goto_2b
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 9372
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_36

    .line 9376
    :cond_14
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 9377
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 9378
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 9379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    if-eq v1, v2, :cond_36

    add-int/2addr v0, p1

    .line 9382
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_36
    :goto_36
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 9414
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 9437
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 9449
    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    .line 9475
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 9479
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 9513
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 9517
    :cond_d
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .registers 6

    .line 9548
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    if-nez p1, :cond_9

    goto :goto_41

    :cond_9
    const/4 v0, 0x0

    .line 9551
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v0

    .line 9552
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_20

    move v0, v2

    :cond_20
    if-nez v1, :cond_25

    if-nez v0, :cond_25

    return-object p0

    .line 9557
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v1, :cond_35

    .line 9559
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9561
    :cond_35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3d

    .line 9563
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9565
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_41
    :goto_41
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 9600
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_42

    .line 9604
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 9605
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    return-object p0

    .line 9610
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_36

    .line 9612
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9614
    :cond_36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3e

    .line 9616
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9618
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_42
    :goto_42
    return-object p0
.end method
