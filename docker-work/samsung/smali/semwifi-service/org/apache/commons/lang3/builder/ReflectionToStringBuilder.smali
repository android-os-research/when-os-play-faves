.class public Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
.super Lorg/apache/commons/lang3/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field protected excludeFieldNames:[Ljava/lang/String;

.field private excludeNullValues:Z

.field private upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 482
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 448
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 3

    .line 502
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 448
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 4

    .line 528
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 448
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 553
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 448
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 554
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 555
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 556
    invoke-virtual {p0, p6}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZZ)V"
        }
    .end annotation

    .line 584
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 448
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 585
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 586
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 587
    invoke-virtual {p0, p6}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 588
    invoke-virtual {p0, p7}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeNullValues(Z)V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The Object passed in should not be null."

    .line 437
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 398
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 400
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    if-eqz v3, :cond_15

    .line 416
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 419
    :cond_18
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-static {p0, v0, v1, v1, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 255
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 311
    new-instance v7, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    .line 312
    invoke-virtual {v7}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZZLjava/lang/Class;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "ZZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 370
    new-instance v8, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZZ)V

    .line 371
    invoke-virtual {v8}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 384
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 433
    new-instance v0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .registers 5

    .line 604
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    return v1

    .line 608
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 612
    :cond_20
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-nez v0, :cond_31

    return v1

    .line 616
    :cond_31
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz p0, :cond_40

    .line 617
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_40

    return v1

    .line 621
    :cond_40
    const-class p0, Lorg/apache/commons/lang3/builder/ToStringExclude;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 638
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 639
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    return-void

    .line 643
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 644
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    .line 645
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 646
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_6b

    aget-object v4, p1, v3

    .line 647
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 648
    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 652
    :try_start_33
    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v6

    .line 653
    iget-boolean v7, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    if-eqz v7, :cond_3d

    if-eqz v6, :cond_68

    .line 654
    :cond_3d
    const-class v7, Lorg/apache/commons/lang3/builder/ToStringSummary;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_47

    move v4, v0

    goto :goto_48

    :cond_47
    move v4, v2

    :goto_48
    invoke-virtual {p0, v5, v6, v4}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_4b} :catch_4c

    goto :goto_68

    :catch_4c
    move-exception p0

    .line 661
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected IllegalAccessException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_6b
    return-void
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .registers 1

    .line 671
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 682
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object p0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isAppendStatics()Z
    .registers 1

    .line 714
    iget-boolean p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return p0
.end method

.method public isAppendTransients()Z
    .registers 1

    .line 725
    iget-boolean p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return p0
.end method

.method public isExcludeNullValues()Z
    .registers 1

    .line 737
    iget-boolean p0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    return p0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 5

    .line 750
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setAppendStatics(Z)V
    .registers 2

    .line 764
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return-void
.end method

.method public setAppendTransients(Z)V
    .registers 2

    .line 776
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return-void
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 801
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_f

    .line 804
    :cond_6
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 805
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_f
    return-object p0
.end method

.method public setExcludeNullValues(Z)V
    .registers 2

    .line 789
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    return-void
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 820
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 821
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 822
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specified class is not a superclass of the object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 825
    :cond_17
    :goto_17
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 837
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 840
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 841
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 842
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 843
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 844
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1a

    .line 846
    :cond_2e
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
