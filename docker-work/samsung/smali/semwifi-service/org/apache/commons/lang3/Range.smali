.class public final Lorg/apache/commons/lang3/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/Range$ComparableComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transient hashCode:I

.field private final maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private transient toString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    if-nez p3, :cond_e

    .line 175
    sget-object p3, Lorg/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lorg/apache/commons/lang3/Range$ComparableComparator;

    iput-object p3, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    goto :goto_10

    .line 177
    :cond_e
    iput-object p3, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    .line 179
    :goto_10
    iget-object p3, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1e

    .line 180
    iput-object p1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    .line 181
    iput-object p2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    goto :goto_22

    .line 183
    :cond_1e
    iput-object p2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    .line 184
    iput-object p1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    :goto_22
    return-void

    .line 171
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Elements in a range must not be null: element1="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", element2="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public static between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/Range;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, p0, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0, p0, p1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 198
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v1, v2, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ge p0, v3, :cond_1b

    move v0, v3

    :cond_1b
    return v0
.end method

.method public containsRange(Lorg/apache/commons/lang3/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 214
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public elementCompareTo(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Element is null"

    .line 230
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isAfter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, -0x1

    return p0

    .line 233
    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isBefore(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/commons/lang3/Range;

    if-eq v2, v3, :cond_10

    goto :goto_29

    .line 261
    :cond_10
    check-cast p1, Lorg/apache/commons/lang3/Range;

    .line 262
    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iget-object v3, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public fit(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "element"

    .line 481
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isAfter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 483
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    return-object p0

    .line 484
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isBefore(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 485
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 276
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public getMaximum()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 285
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    return-object p0
.end method

.method public getMinimum()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 304
    iget v0, p0, Lorg/apache/commons/lang3/Range;->hashCode:I

    if-nez v0, :cond_21

    const/16 v0, 0x275

    .line 307
    const-class v1, Lorg/apache/commons/lang3/Range;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 308
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 309
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    iput v0, p0, Lorg/apache/commons/lang3/Range;->hashCode:I

    :cond_21
    return v0
.end method

.method public intersectionWith(Lorg/apache/commons/lang3/Range;)Lorg/apache/commons/lang3/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;)",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 330
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1e

    iget-object v0, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    .line 331
    :goto_20
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    iget-object v3, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_31

    iget-object p1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    goto :goto_33

    :cond_31
    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    .line 332
    :goto_33
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0

    .line 324
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Cannot calculate intersection with non-overlapping range %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAfter(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 348
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isAfterRange(Lorg/apache/commons/lang3/Range;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 364
    :cond_4
    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isAfter(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBefore(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 377
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isBeforeRange(Lorg/apache/commons/lang3/Range;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 393
    :cond_4
    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isBefore(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEndedBy(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 406
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isNaturalOrdering()Z
    .registers 2

    .line 421
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    sget-object v0, Lorg/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lorg/apache/commons/lang3/Range$ComparableComparator;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 440
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    .line 441
    invoke-virtual {p1, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object p1, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    .line 442
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public isStartedBy(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 455
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 500
    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->toString:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/Range;->toString:Ljava/lang/String;

    .line 503
    :cond_28
    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->toString:Ljava/lang/String;

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
