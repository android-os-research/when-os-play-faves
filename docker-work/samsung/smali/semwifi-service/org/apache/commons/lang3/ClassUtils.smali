.class public Lorg/apache/commons/lang3/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ClassUtils$Interfaces;
    }
.end annotation


# static fields
.field public static final INNER_CLASS_SEPARATOR:Ljava/lang/String;

.field public static final INNER_CLASS_SEPARATOR_CHAR:C = '$'

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String;

.field public static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field private static final abbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final namePrimitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final primitiveWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final reverseAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final wrapperPrimitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9VNCa0h13MTzsqTL8nhN1YqN6ic(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->lambda$hierarchy$1(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zF53OCiIFnlU8n9q8Sr547CjxWU(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->lambda$hierarchy$0(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 15

    const/16 v0, 0x2e

    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->PACKAGE_SEPARATOR:Ljava/lang/String;

    const/16 v0, 0x24

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->INNER_CLASS_SEPARATOR:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    .line 86
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "byte"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v5, "char"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v6, "short"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "int"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v9, "long"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v11, "double"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v12, "float"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v14, "void"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    .line 102
    const-class v13, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Byte;

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Character;

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Short;

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    .line 118
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a1
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 122
    sget-object v8, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    .line 138
    :cond_c5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "I"

    .line 139
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Z"

    .line 140
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "F"

    .line 141
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "J"

    .line 142
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "S"

    .line 143
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B"

    .line 144
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "D"

    .line 145
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "C"

    .line 146
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    .line 151
    :cond_117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->abbreviationMap:Ljava/util/Map;

    .line 152
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertClassNamesToClasses(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 643
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_11

    .line 648
    :catch_25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    return-object v1
.end method

.method public static convertClassesToClassNames(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 670
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 671
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_23

    .line 673
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 675
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2b
    return-object v1
.end method

.method public static getAbbreviatedName(Ljava/lang/Class;I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 446
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->getAbbreviatedName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAbbreviatedName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-lez p1, :cond_4c

    if-nez p0, :cond_7

    const-string p0, ""

    return-object p0

    .line 496
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_e

    return-object p0

    .line 499
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 502
    :goto_15
    array-length v3, p0

    if-ge v1, v3, :cond_46

    move v3, v2

    .line 505
    :goto_19
    array-length v4, p0

    if-ge v1, v4, :cond_2a

    aget-char v4, p0, v1

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_2a

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 506
    aput-char v4, p0, v3

    move v3, v5

    goto :goto_19

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 510
    array-length v4, p0

    invoke-static {v3, v1, v4, p1}, Lorg/apache/commons/lang3/ClassUtils;->useFull(IIII)Z

    move-result v4

    if-nez v4, :cond_37

    if-le v2, v3, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 516
    :cond_37
    :goto_37
    array-length v2, p0

    if-ge v1, v2, :cond_44

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 517
    aget-char v1, p0, v1

    aput-char v1, p0, v3

    move v1, v4

    goto :goto_15

    :cond_44
    move v2, v3

    goto :goto_15

    .line 520
    :cond_46
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 491
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 599
    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 600
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 602
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1d

    .line 613
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 615
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 616
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 617
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 621
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1d
    return-void
.end method

.method public static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 572
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_d
    if-eqz p0, :cond_17

    .line 575
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_d

    :cond_17
    return-object v0
.end method

.method public static getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 1269
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    .line 1285
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, p0

    :goto_b
    return-object p1
.end method

.method public static getCanonicalName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 1298
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 1314
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_f

    :cond_e
    move-object p1, p0

    :goto_f
    return-object p1
.end method

.method private static getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1445
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    const-string v2, "["

    .line 1450
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 1452
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_1a
    if-ge v1, v3, :cond_1d

    return-object p0

    :cond_1d
    const-string v2, "L"

    .line 1457
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, ";"

    .line 1460
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_37

    .line 1462
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1458
    :goto_37
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    .line 1464
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1465
    sget-object v2, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1468
    :cond_4e
    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_53
    if-ge v0, v1, :cond_5d

    const-string p0, "[]"

    .line 1470
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1472
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1103
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1066
    :try_start_0
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->namePrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1067
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_17

    .line 1069
    :cond_f
    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->toCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/16 v1, 0x2e

    .line 1074
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    .line 1078
    :try_start_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 1079
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_45} :catch_46

    return-object p0

    .line 1086
    :catch_46
    :cond_46
    throw v0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1118
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1134
    const-class v0, Lorg/apache/commons/lang3/ClassUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1135
    :cond_10
    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 330
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_7

    .line 343
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_7
    return-object p1
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 355
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_b

    .line 368
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public static getPackageCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1407
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 1393
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1421
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 397
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 384
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 410
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    :goto_9
    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_18

    .line 416
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 419
    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_31

    .line 420
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_31
    const/16 v2, 0x2e

    .line 423
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3b

    return-object v1

    .line 427
    :cond_3b
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    .line 1170
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1172
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_2a
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_2a

    .line 1180
    :cond_41
    :try_start_41
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_45} :catch_2a

    .line 1184
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-object v0

    .line 1189
    :cond_54
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find a public method for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getShortCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1329
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 1257
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1376
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 202
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 184
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 231
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 235
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 238
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    .line 239
    :goto_18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_2a

    .line 240
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[]"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 244
    :cond_2a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4c

    if-ne v1, v4, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_48

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 248
    :cond_48
    sget-object v1, Lorg/apache/commons/lang3/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 249
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_56
    const/16 v1, 0x2e

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_60

    goto :goto_62

    :cond_60
    add-int/lit8 v2, v4, 0x1

    :goto_62
    const/16 v6, 0x24

    .line 254
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v4, v3

    .line 256
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eq v2, v5, :cond_73

    .line 258
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 260
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 272
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getSimpleName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_7

    .line 286
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_7
    return-object p1
.end method

.method public static getSimpleName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 304
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->getSimpleName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_b

    .line 318
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public static hierarchy(Ljava/lang/Class;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1484
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils$Interfaces;->EXCLUDE:Lorg/apache/commons/lang3/ClassUtils$Interfaces;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ClassUtils;->hierarchy(Ljava/lang/Class;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static hierarchy(Ljava/lang/Class;Lorg/apache/commons/lang3/ClassUtils$Interfaces;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/ClassUtils$Interfaces;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1496
    new-instance v0, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 1519
    sget-object p0, Lorg/apache/commons/lang3/ClassUtils$Interfaces;->INCLUDE:Lorg/apache/commons/lang3/ClassUtils$Interfaces;

    if-eq p1, p0, :cond_a

    return-object v0

    .line 1522
    :cond_a
    new-instance p0, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 836
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p0, :cond_d

    .line 872
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_d
    if-eqz p2, :cond_35

    .line 876
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_22

    .line 877
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_22

    return v0

    .line 882
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_35

    .line 883
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_35

    return v0

    .line 889
    :cond_35
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    return v1

    .line 892
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_11a

    .line 893
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_49

    return v0

    .line 896
    :cond_49
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 897
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 898
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 899
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6a

    :cond_69
    move v0, v1

    :cond_6a
    return v0

    .line 901
    :cond_6b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 902
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 903
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_84

    :cond_83
    move v0, v1

    :cond_84
    return v0

    .line 905
    :cond_85
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    return v0

    .line 908
    :cond_8e
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    return v0

    .line 911
    :cond_97
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 912
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 914
    :cond_a6
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 915
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    .line 916
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    .line 917
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 918
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c9

    :cond_c8
    move v0, v1

    :cond_c9
    return v0

    .line 920
    :cond_ca
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 921
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    .line 922
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    .line 923
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 924
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ed

    :cond_ec
    move v0, v1

    :cond_ed
    return v0

    .line 926
    :cond_ee
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_119

    .line 927
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    .line 928
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    .line 929
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    .line 930
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 931
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_119

    :cond_118
    move v0, v1

    :cond_119
    return v0

    .line 936
    :cond_11a
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static varargs isAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 720
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 756
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p0, :cond_c

    .line 760
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    :cond_c
    if-nez p1, :cond_10

    .line 763
    sget-object p1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    :cond_10
    move v0, v1

    .line 765
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_22

    .line 766
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3, p2}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 1045
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 787
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->isPrimitiveWrapper(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static isPrimitiveWrapper(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 801
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hierarchy$0(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 2

    .line 1497
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/mutable/MutableObject;-><init>(Ljava/lang/Object;)V

    .line 1498
    new-instance p0, Lorg/apache/commons/lang3/ClassUtils$1;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/ClassUtils$1;-><init>(Lorg/apache/commons/lang3/mutable/MutableObject;)V

    return-object p0
.end method

.method private static synthetic lambda$hierarchy$1(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 3

    .line 1523
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1524
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1526
    new-instance v1, Lorg/apache/commons/lang3/ClassUtils$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/lang3/ClassUtils$2;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_10

    .line 953
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 954
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    :cond_10
    return-object p0
.end method

.method public static varargs primitivesToWrappers([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_8

    return-object p0

    .line 978
    :cond_8
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 979
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 980
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method private static toCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1201
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "className must not be null."

    .line 1202
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "[]"

    .line 1203
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    :goto_19
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "["

    .line 1207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 1209
    :cond_2f
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 1211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_3d
    const-string v0, "L"

    .line 1213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :goto_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4e
    return-object p0
.end method

.method public static varargs toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1233
    :cond_4
    array-length v1, p0

    if-nez v1, :cond_a

    .line 1234
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-object p0

    .line 1236
    :cond_a
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1237
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 1238
    aget-object v3, p0, v2

    if-nez v3, :cond_17

    move-object v3, v0

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1b
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    return-object v1
.end method

.method private static useFull(IIII)Z
    .registers 4

    if-ge p1, p2, :cond_9

    add-int/2addr p0, p2

    sub-int/2addr p0, p1

    if-gt p0, p3, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1002
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static varargs wrappersToPrimitives([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1024
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_8

    return-object p0

    .line 1028
    :cond_8
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1029
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 1030
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method
