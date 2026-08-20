.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .registers 12

    .line 298
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .registers 13

    .line 322
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    if-ltz p0, :cond_e3

    if-eqz p5, :cond_15

    .line 365
    array-length v0, p5

    if-eqz v0, :cond_d

    goto :goto_15

    .line 366
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The chars array must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    const-string v0, "Parameter end ("

    if-nez p1, :cond_2c

    if-nez p2, :cond_2c

    if-eqz p5, :cond_1f

    .line 371
    array-length p2, p5

    goto :goto_2e

    :cond_1f
    if-nez p3, :cond_27

    if-nez p4, :cond_27

    const p2, 0x10ffff

    goto :goto_2e

    :cond_27
    const/16 p2, 0x7b

    const/16 p1, 0x20

    goto :goto_2e

    :cond_2c
    if-le p2, p1, :cond_c1

    :goto_2e
    if-nez p5, :cond_67

    const/16 v1, 0x41

    const/16 v2, 0x30

    if-eqz p4, :cond_38

    if-le p2, v2, :cond_3d

    :cond_38
    if-eqz p3, :cond_67

    if-le p2, v1, :cond_3d

    goto :goto_67

    .line 391
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be greater then ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") for generating digits or greater then ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") for generating letters."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int/2addr p2, p1

    :goto_6d
    add-int/lit8 v1, p0, -0x1

    if-eqz p0, :cond_bc

    if-nez p5, :cond_8a

    .line 401
    invoke-virtual {p6, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    .line 403
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-eqz v2, :cond_87

    const/16 v3, 0x12

    if-eq v2, v3, :cond_87

    const/16 v3, 0x13

    if-eq v2, v3, :cond_87

    goto :goto_91

    :cond_87
    :goto_87
    add-int/lit8 p0, v1, 0x1

    goto :goto_6d

    .line 412
    :cond_8a
    invoke-virtual {p6, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    .line 415
    :goto_91
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-nez v1, :cond_9b

    const/4 v3, 0x1

    if-le v2, v3, :cond_9b

    goto :goto_87

    :cond_9b
    if-eqz p3, :cond_a3

    .line 421
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-nez v3, :cond_af

    :cond_a3
    if-eqz p4, :cond_ab

    .line 422
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_af

    :cond_ab
    if-nez p3, :cond_b9

    if-nez p4, :cond_b9

    .line 424
    :cond_af
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x2

    if-ne v2, p0, :cond_b7

    add-int/lit8 v1, v1, -0x1

    :cond_b7
    :goto_b7
    move p0, v1

    goto :goto_6d

    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 434
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 382
    :cond_c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be greater than start ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested random string length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is less than 0."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 454
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 456
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 278
    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 473
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v1, 0x0

    .line 475
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphabetic(II)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 155
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAlphanumeric(II)Ljava/lang/String;
    .registers 2

    .line 171
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphanumeric(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x20

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomAscii(II)Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAscii(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomGraph(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x21

    const/16 v1, 0x7e

    const/4 v2, 0x0

    .line 186
    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomGraph(II)Ljava/lang/String;
    .registers 2

    .line 201
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomGraph(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 215
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomNumeric(II)Ljava/lang/String;
    .registers 2

    .line 230
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomNumeric(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomPrint(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x20

    const/16 v1, 0x7e

    const/4 v2, 0x0

    .line 245
    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomPrint(II)Ljava/lang/String;
    .registers 2

    .line 260
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomPrint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
