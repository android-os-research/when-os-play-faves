.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 443
    instance-of v0, p1, [J

    if-eqz v0, :cond_c

    .line 444
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 445
    :cond_c
    instance-of v0, p1, [I

    if-eqz v0, :cond_18

    .line 446
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 447
    :cond_18
    instance-of v0, p1, [S

    if-eqz v0, :cond_24

    .line 448
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 449
    :cond_24
    instance-of v0, p1, [C

    if-eqz v0, :cond_30

    .line 450
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 451
    :cond_30
    instance-of v0, p1, [B

    if-eqz v0, :cond_3c

    .line 452
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 453
    :cond_3c
    instance-of v0, p1, [D

    if-eqz v0, :cond_48

    .line 454
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 455
    :cond_48
    instance-of v0, p1, [F

    if-eqz v0, :cond_54

    .line 456
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 457
    :cond_54
    instance-of v0, p1, [Z

    if-eqz v0, :cond_60

    .line 458
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_67

    .line 462
    :cond_60
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    :goto_67
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 322
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 323
    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_55

    iget v1, p3, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_55

    .line 324
    aget-object v1, p2, v0

    .line 325
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 326
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    if-nez p4, :cond_34

    .line 327
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 328
    :cond_34
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 330
    :try_start_3e
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_52

    .line 334
    :catch_4a
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_55
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 143
    invoke-static {p0, p1, v0, v2, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 208
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 175
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "lhs"

    .line 286
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rhs"

    .line 287
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 293
    new-instance v8, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v8}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move v5, p2

    move-object v6, p4

    .line 294
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 295
    :goto_26
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3c

    if-eq v0, p3, :cond_3c

    .line 296
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move v6, p2

    move-object v7, p4

    .line 297
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_26

    .line 299
    :cond_3c
    invoke-virtual {v8}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result p0

    return p0

    .line 291
    :cond_41
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 540
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 543
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Byte;->compare(BB)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 524
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 527
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Character;->compare(CC)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 561
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 564
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 582
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 585
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 492
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 495
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6

    .line 476
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 479
    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 407
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 p1, -0x1

    .line 414
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    if-nez p2, :cond_14

    const/4 p1, 0x1

    .line 418
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 421
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_33

    :cond_22
    if-nez p3, :cond_2d

    .line 428
    check-cast p1, Ljava/lang/Comparable;

    .line 429
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_33

    .line 433
    :cond_2d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_33
    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 508
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 511
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Short;->compare(SS)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    .line 598
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 605
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_11

    :cond_e
    const/4 p1, -0x1

    .line 607
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_11
    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 861
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 868
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 872
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 875
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 876
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 879
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 880
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 821
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 828
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 832
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 835
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 836
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 839
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 840
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8

    .line 901
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 908
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 912
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 915
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 916
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 919
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 920
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 941
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 948
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 952
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 955
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 956
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 959
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 960
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 741
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 748
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 752
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 755
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 756
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 759
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 760
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8

    .line 701
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 708
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 712
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 715
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 716
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 719
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 720
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .line 661
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 668
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 672
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 675
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 676
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 679
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 680
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 781
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 788
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 792
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 795
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 796
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 799
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 800
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7

    .line 981
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 988
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    const/4 v1, 0x1

    if-nez p2, :cond_14

    .line 992
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    .line 995
    :cond_14
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_21

    .line 996
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_21
    const/4 v0, 0x0

    .line 999
    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    .line 1000
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .registers 3

    .line 350
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    .line 353
    :cond_5
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 1

    .line 1031
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public toComparison()I
    .registers 1

    .line 1016
    iget p0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return p0
.end method
