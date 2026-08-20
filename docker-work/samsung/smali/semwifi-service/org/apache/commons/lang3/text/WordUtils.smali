.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 376
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    .line 409
    :cond_4
    array-length v0, p1

    .line 410
    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    if-nez v0, :cond_e

    goto :goto_35

    .line 413
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 415
    :goto_16
    array-length v4, p0

    if-ge v2, v4, :cond_2f

    .line 416
    aget-char v4, p0, v2

    .line 417
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    move v3, v1

    goto :goto_2c

    :cond_23
    if-eqz v3, :cond_2c

    .line 420
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v3

    aput-char v3, p0, v2

    move v3, v0

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 424
    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_35
    :goto_35
    return-object p0
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 448
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    .line 478
    :cond_4
    array-length v0, p1

    .line 479
    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v0, :cond_e

    goto :goto_16

    .line 482
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 8

    .line 705
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_45

    .line 708
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_43

    aget-object v3, p1, v2

    .line 709
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return v1

    .line 712
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\\b.*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 713
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_40

    return v1

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 625
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 11

    .line 655
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    if-eqz p1, :cond_f

    .line 658
    array-length v0, p1

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    .line 661
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 662
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [C

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    :goto_1d
    if-ge v4, v0, :cond_36

    .line 666
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 668
    invoke-static {v7, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v6, v2

    goto :goto_33

    :cond_2b
    if-eqz v6, :cond_33

    add-int/lit8 v6, v5, 0x1

    .line 671
    aput-char v7, v1, v5

    move v5, v6

    move v6, v3

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 677
    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private static isDelimiter(C[C)Z
    .registers 6

    if-nez p1, :cond_7

    .line 730
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0

    .line 732
    :cond_7
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_15

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    return v1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 576
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 579
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 583
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_45

    .line 584
    aget-char v3, p0, v2

    .line 585
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-static {v3}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_3b

    .line 588
    :cond_20
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_36

    if-eqz v0, :cond_2f

    .line 590
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    aput-char v0, p0, v2

    goto :goto_41

    .line 593
    :cond_2f
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, p0, v2

    goto :goto_42

    .line 596
    :cond_36
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    goto :goto_42

    .line 586
    :cond_3b
    :goto_3b
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p0, v2

    :goto_41
    move v0, v1

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 599
    :cond_45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 505
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    .line 534
    :cond_4
    array-length v0, p1

    .line 535
    :goto_5
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    if-nez v0, :cond_e

    goto :goto_35

    .line 538
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 540
    :goto_16
    array-length v4, p0

    if-ge v2, v4, :cond_2f

    .line 541
    aget-char v4, p0, v2

    .line 542
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    move v3, v1

    goto :goto_2c

    :cond_23
    if-eqz v3, :cond_2c

    .line 545
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, p0, v2

    move v3, v0

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 549
    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_35
    :goto_35
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const-string v0, " "

    .line 181
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 16

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p2, :cond_a

    .line 279
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    :cond_a
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    move p1, v0

    .line 284
    :cond_e
    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p4, " "

    .line 287
    :cond_16
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_26
    if-ge v1, v0, :cond_a8

    const/4 v3, -0x1

    const-wide/32 v4, 0x7fffffff

    add-int v6, v1, p1

    int-to-long v7, v6

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 295
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {p4, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 297
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-nez v3, :cond_55

    .line 298
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_26

    .line 301
    :cond_55
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    :cond_5a
    sub-int v5, v0, v1

    if-gt v5, p1, :cond_5f

    goto :goto_a8

    .line 309
    :cond_5f
    :goto_5f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 310
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_5f

    :cond_6b
    if-lt v3, v1, :cond_77

    .line 315
    invoke-virtual {v2, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_73
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_26

    :cond_77
    if-eqz p3, :cond_81

    .line 323
    invoke-virtual {v2, p0, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    goto :goto_26

    .line 328
    :cond_81
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 329
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 330
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, p1

    :cond_95
    if-ltz v3, :cond_9e

    .line 334
    invoke-virtual {v2, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 338
    :cond_9e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v1, v0

    goto/16 :goto_26

    .line 346
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p0, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
