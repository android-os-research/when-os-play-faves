.class public Lorg/apache/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private bypassReflectionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private excludeFields:[Ljava/lang/String;

.field private isEquals:Z

.field private reflectUpToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private testRecursive:Z

.field private testTransients:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    .line 217
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    .line 220
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    .line 231
    const-class p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 p1, 0x0

    .line 670
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_77

    .line 671
    :cond_10
    instance-of v0, p1, [J

    if-eqz v0, :cond_1c

    .line 672
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 673
    :cond_1c
    instance-of v0, p1, [I

    if-eqz v0, :cond_28

    .line 674
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 675
    :cond_28
    instance-of v0, p1, [S

    if-eqz v0, :cond_34

    .line 676
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 677
    :cond_34
    instance-of v0, p1, [C

    if-eqz v0, :cond_40

    .line 678
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 679
    :cond_40
    instance-of v0, p1, [B

    if-eqz v0, :cond_4c

    .line 680
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 681
    :cond_4c
    instance-of v0, p1, [D

    if-eqz v0, :cond_58

    .line 682
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 683
    :cond_58
    instance-of v0, p1, [F

    if-eqz v0, :cond_64

    .line 684
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 685
    :cond_64
    instance-of v0, p1, [Z

    if-eqz v0, :cond_70

    .line 686
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_77

    .line 689
    :cond_70
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    :goto_77
    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 142
    new-instance p0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    return-object p0
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 160
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p1

    if-eqz v0, :cond_24

    .line 165
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 573
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 578
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    .line 580
    invoke-static {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 581
    :goto_13
    array-length v1, p3

    if-ge v0, v1, :cond_6b

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_6b

    .line 582
    aget-object v1, p3, v0

    .line 583
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 584
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    if-nez v2, :cond_42

    .line 585
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_68

    .line 586
    :cond_42
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_68

    const-class v2, Lorg/apache/commons/lang3/builder/EqualsExclude;

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_6f

    if-nez v2, :cond_68

    .line 589
    :try_start_54
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5f} :catch_60
    .catchall {:try_start_54 .. :try_end_5f} :catchall_6f

    goto :goto_68

    .line 593
    :catch_60
    :try_start_60
    new-instance p0, Ljava/lang/InternalError;

    const-string p3, "Unexpected IllegalAccessException"

    invoke-direct {p0, p3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6f

    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 598
    :cond_6b
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_6f
    move-exception p0

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    throw p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 325
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 378
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_27

    if-nez p1, :cond_9

    goto :goto_27

    .line 459
    :cond_9
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 460
    invoke-virtual {v0, p5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p5

    .line 461
    invoke-virtual {p5, p3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p3

    .line 462
    invoke-virtual {p3, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p2

    .line 463
    invoke-virtual {p2, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p2

    .line 464
    invoke-virtual {p2, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 412
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 178
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_10

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    sget-object v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 183
    :cond_10
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 184
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 200
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 202
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 203
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 205
    sget-object p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_18
    return-void
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 765
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 768
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 750
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 753
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 786
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 789
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 806
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 809
    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 720
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 723
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 705
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    cmp-long p1, p1, p3

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 708
    :goto_c
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 5

    .line 633
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-eqz p1, :cond_30

    if-nez p2, :cond_d

    goto :goto_30

    .line 643
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 647
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2f

    .line 650
    :cond_1b
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    if-eqz v1, :cond_29

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 651
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_2f

    .line 653
    :cond_29
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    :goto_2f
    return-object p0

    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 640
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 735
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 738
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 4

    .line 820
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 823
    :goto_a
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 996
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1006
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1007
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1010
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1011
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1003
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 965
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 975
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 976
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 979
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 980
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 972
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    .line 1027
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1037
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1038
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1041
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1042
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1034
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 1058
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1068
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1069
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1072
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1073
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1065
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 903
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 913
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 914
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 917
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 918
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 910
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    .line 872
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 882
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 883
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 886
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 887
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 879
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 841
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 851
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 852
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 855
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 856
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 848
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 934
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 944
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 945
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 948
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 949
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 941
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 6

    .line 1089
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_e

    goto :goto_28

    .line 1099
    :cond_e
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 1100
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 1103
    :cond_16
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_27

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_27

    .line 1104
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    return-object p0

    .line 1096
    :cond_28
    :goto_28
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 3

    .line 612
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    .line 615
    :cond_5
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .registers 1

    .line 1130
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isEquals()Z
    .registers 1

    .line 1116
    iget-boolean p0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return p0
.end method

.method public reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 8

    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_71

    if-nez p2, :cond_e

    goto :goto_71

    .line 511
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 514
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 516
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_31

    .line 520
    :cond_23
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 522
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_2f
    move-object v3, v1

    goto :goto_32

    :cond_31
    :goto_31
    move-object v3, v2

    .line 533
    :goto_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 534
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_6a

    .line 537
    :cond_3c
    iget-object v4, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    if-eqz v4, :cond_55

    .line 538
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 539
    :cond_4e
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_6a

    .line 541
    :cond_55
    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 542
    :goto_58
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    if-eq v3, v1, :cond_6a

    .line 543
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 544
    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_69} :catch_6b

    goto :goto_58

    :cond_6a
    :goto_6a
    return-object p0

    .line 554
    :catch_6b
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    .line 528
    :cond_6e
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    .line 503
    :cond_71
    :goto_71
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    .line 1148
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method public setBypassReflectionClasses(Ljava/util/List;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    return-object p0
.end method

.method protected setEquals(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method public varargs setExcludeFields([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 297
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    return-object p0
.end method

.method public setReflectUpToClass(Ljava/lang/Class;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setTestRecursive(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 257
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testRecursive:Z

    return-object p0
.end method

.method public setTestTransients(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .registers 2

    .line 243
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->testTransients:Z

    return-object p0
.end method
