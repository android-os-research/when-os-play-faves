.class public Lorg/apache/commons/lang3/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# static fields
.field private static final DEFAULT_EXCLUSIVE_BETWEEN_EX_MESSAGE:Ljava/lang/String; = "The value %s is not in the specified exclusive range of %s to %s"

.field private static final DEFAULT_FINITE_EX_MESSAGE:Ljava/lang/String; = "The value is invalid: %f"

.field private static final DEFAULT_INCLUSIVE_BETWEEN_EX_MESSAGE:Ljava/lang/String; = "The value %s is not in the specified inclusive range of %s to %s"

.field private static final DEFAULT_IS_ASSIGNABLE_EX_MESSAGE:Ljava/lang/String; = "Cannot assign a %s to a %s"

.field private static final DEFAULT_IS_INSTANCE_OF_EX_MESSAGE:Ljava/lang/String; = "Expected type: %s, actual: %s"

.field private static final DEFAULT_IS_NULL_EX_MESSAGE:Ljava/lang/String; = "The validated object is null"

.field private static final DEFAULT_IS_TRUE_EX_MESSAGE:Ljava/lang/String; = "The validated expression is false"

.field private static final DEFAULT_MATCHES_PATTERN_EX:Ljava/lang/String; = "The string %s does not match the pattern %s"

.field private static final DEFAULT_NOT_BLANK_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence is blank"

.field private static final DEFAULT_NOT_EMPTY_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array is empty"

.field private static final DEFAULT_NOT_EMPTY_CHAR_SEQUENCE_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence is empty"

.field private static final DEFAULT_NOT_EMPTY_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection is empty"

.field private static final DEFAULT_NOT_EMPTY_MAP_EX_MESSAGE:Ljava/lang/String; = "The validated map is empty"

.field private static final DEFAULT_NOT_NAN_EX_MESSAGE:Ljava/lang/String; = "The validated value is not a number"

.field private static final DEFAULT_NO_NULL_ELEMENTS_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array contains null element at index: %d"

.field private static final DEFAULT_NO_NULL_ELEMENTS_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection contains null element at index: %d"

.field private static final DEFAULT_VALID_INDEX_ARRAY_EX_MESSAGE:Ljava/lang/String; = "The validated array index is invalid: %d"

.field private static final DEFAULT_VALID_INDEX_CHAR_SEQUENCE_EX_MESSAGE:Ljava/lang/String; = "The validated character sequence index is invalid: %d"

.field private static final DEFAULT_VALID_INDEX_COLLECTION_EX_MESSAGE:Ljava/lang/String; = "The validated collection index is invalid: %d"

.field private static final DEFAULT_VALID_STATE_EX_MESSAGE:Ljava/lang/String; = "The validated state is false"


# direct methods
.method public static synthetic $r8$lambda$AYaavOEfqpRFmoi53Nb4zHgtdgg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notEmpty$1(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EsAPntgHB3V26gK-4DhMXps2B-s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notEmpty$4(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FznvsGQuYiKATcRsBqMSYuNyTz8(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notEmpty$2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RLoV1XlAEbKKCB-mN0C0at150lk(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notBlank$5(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XJJZURDO20sZXXyZMfTRRv13t2c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notNull$0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gREza8BL5yDc1L-8frhKK9GN6TQ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Validate;->lambda$notEmpty$3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exclusiveBetween(DDD)V
    .registers 9

    cmpg-double v0, p4, p0

    if-lez v0, :cond_9

    cmpl-double v0, p4, p2

    if-gez v0, :cond_9

    return-void

    .line 1202
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v1, v2

    const/4 p4, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, p4

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified exclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static exclusiveBetween(DDDLjava/lang/String;)V
    .registers 7

    cmpg-double p0, p4, p0

    if-lez p0, :cond_9

    cmpl-double p0, p4, p2

    if-gez p0, :cond_9

    return-void

    .line 1225
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exclusiveBetween(JJJ)V
    .registers 9

    cmp-long v0, p4, p0

    if-lez v0, :cond_9

    cmp-long v0, p4, p2

    if-gez v0, :cond_9

    return-void

    .line 1158
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v1, v2

    const/4 p4, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, p4

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified exclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static exclusiveBetween(JJJLjava/lang/String;)V
    .registers 7

    cmp-long p0, p4, p0

    if-lez p0, :cond_9

    cmp-long p0, p4, p2

    if-gez p0, :cond_9

    return-void

    .line 1181
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1111
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_d

    return-void

    .line 1112
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified exclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs exclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1136
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_d

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_d

    return-void

    .line 1137
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finite(D)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 930
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The value is invalid: %f"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->finite(DLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs finite(DLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 948
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 949
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inclusiveBetween(DDD)V
    .registers 9

    cmpg-double v0, p4, p0

    if-ltz v0, :cond_9

    cmpl-double v0, p4, p2

    if-gtz v0, :cond_9

    return-void

    .line 1064
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v1, v2

    const/4 p4, 0x1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, p4

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified inclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inclusiveBetween(DDDLjava/lang/String;)V
    .registers 7

    cmpg-double p0, p4, p0

    if-ltz p0, :cond_9

    cmpl-double p0, p4, p2

    if-gtz p0, :cond_9

    return-void

    .line 1087
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inclusiveBetween(JJJ)V
    .registers 9

    cmp-long v0, p4, p0

    if-ltz v0, :cond_9

    cmp-long v0, p4, p2

    if-gtz v0, :cond_9

    return-void

    .line 1020
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v1, v2

    const/4 p4, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, p4

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified inclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inclusiveBetween(JJJLjava/lang/String;)V
    .registers 7

    cmp-long p0, p4, p0

    if-ltz p0, :cond_9

    cmp-long p0, p4, p2

    if-gtz p0, :cond_9

    return-void

    .line 1043
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable<",
            "TT;>;)V"
        }
    .end annotation

    .line 973
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d

    return-void

    .line 974
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "The value %s is not in the specified inclusive range of %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs inclusiveBetween(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/lang/Comparable<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 998
    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_d

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_d

    return-void

    .line 999
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1301
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p1, :cond_11

    const-string p1, "null"

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_15
    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 1303
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Cannot assign a %s to a %s"

    .line 1302
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public static varargs isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1326
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1327
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1250
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    if-nez p1, :cond_18

    const-string p1, "null"

    goto :goto_20

    .line 1252
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_20
    aput-object p1, v1, p0

    const-string p0, "Expected type: %s, actual: %s"

    .line 1251
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-void
.end method

.method public static varargs isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1275
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1276
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isTrue(Z)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 184
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The validated expression is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isTrue(ZLjava/lang/String;D)V
    .registers 6

    if-eqz p0, :cond_3

    return-void

    .line 135
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isTrue(ZLjava/lang/String;J)V
    .registers 6

    if-eqz p0, :cond_3

    return-void

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_3

    return-void

    .line 159
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$notBlank$5(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 440
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notEmpty$1(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 248
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notEmpty$2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 295
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notEmpty$3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 342
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notEmpty$4(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 389
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notNull$0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 225
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static matchesPattern(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5

    .line 841
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 842
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "The string %s does not match the pattern %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs matchesPattern(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 865
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 866
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static noNullElements(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "*>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated collection contains null element at index: %d"

    .line 592
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->noNullElements(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noNullElements(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "*>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 559
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 563
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p2, p0}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 564
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2f
    return-object p0
.end method

.method public static noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated array contains null element at index: %d"

    .line 529
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 497
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 498
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 499
    aget-object v1, p0, v0

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 500
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 501
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_20
    return-object p0
.end method

.method public static notBlank(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated character sequence is blank"

    .line 467
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 440
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 441
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    .line 442
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated character sequence is empty"

    .line 414
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 389
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 390
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    .line 391
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notEmpty(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated collection is empty"

    .line 319
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 296
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    .line 297
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notEmpty(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "**>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated map is empty"

    .line 366
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "**>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 342
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 343
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    .line 344
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated array is empty"

    .line 272
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 248
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 249
    array-length v0, p0

    if-eqz v0, :cond_c

    return-object p0

    .line 250
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notNaN(D)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated value is not a number"

    .line 889
    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNaN(DLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs notNaN(DLjava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 907
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 908
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static notNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The validated object is null"

    .line 207
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 225
    new-instance v0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-object p0
.end method

.method public static validIndex(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The validated character sequence index is invalid: %d"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->validIndex(Ljava/lang/CharSequence;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static varargs validIndex(Ljava/lang/CharSequence;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 736
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_c

    .line 737
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    return-object p0

    .line 738
    :cond_c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validIndex(Ljava/util/Collection;I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(TT;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The validated collection index is invalid: %d"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->validIndex(Ljava/util/Collection;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static varargs validIndex(Ljava/util/Collection;ILjava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 679
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_c

    .line 680
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    return-object p0

    .line 681
    :cond_c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validIndex([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The validated array index is invalid: %d"

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->validIndex([Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs validIndex([Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 620
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_9

    .line 621
    array-length v0, p0

    if-ge p1, v0, :cond_9

    return-object p0

    .line 622
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validState(Z)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 795
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The validated state is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs validState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_3

    return-void

    .line 817
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
