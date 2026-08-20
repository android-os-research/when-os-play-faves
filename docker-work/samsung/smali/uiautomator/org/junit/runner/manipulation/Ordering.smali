.class public abstract Lorg/junit/runner/manipulation/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/manipulation/Ordering$Factory;,
        Lorg/junit/runner/manipulation/Ordering$Context;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_ERROR_FORMAT:Ljava/lang/String; = "Ordering class %s should have a public constructor with signature %s(Ordering.Context context)"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static definedBy(Ljava/lang/Class;Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Ordering;
    .registers 7
    .param p1, "annotatedTestClass"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/manipulation/Ordering$Factory;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")",
            "Lorg/junit/runner/manipulation/Ordering;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 58
    .local p0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/manipulation/Ordering$Factory;>;"
    if-eqz p0, :cond_59

    .line 61
    if-eqz p1, :cond_51

    .line 67
    const/4 v0, 0x0

    :try_start_5
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 68
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/junit/runner/manipulation/Ordering$Factory;>;"
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/manipulation/Ordering$Factory;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_13} :catch_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_1a

    move-object v0, v2

    .line 77
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/junit/runner/manipulation/Ordering$Factory;>;"
    .local v0, "factory":Lorg/junit/runner/manipulation/Ordering$Factory;
    nop

    .line 78
    invoke-static {v0, p1}, Lorg/junit/runner/manipulation/Ordering;->definedBy(Lorg/junit/runner/manipulation/Ordering$Factory;Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Ordering;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "factory":Lorg/junit/runner/manipulation/Ordering$Factory;
    :catch_1a
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/junit/runner/manipulation/InvalidOrderingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create ordering for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_34
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/junit/runner/manipulation/InvalidOrderingException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lorg/junit/runner/manipulation/Ordering;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 70
    const-string v0, "Ordering class %s should have a public constructor with signature %s(Ordering.Context context)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotatedTestClass cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factoryClass cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static definedBy(Lorg/junit/runner/manipulation/Ordering$Factory;Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Ordering;
    .registers 4
    .param p0, "factory"    # Lorg/junit/runner/manipulation/Ordering$Factory;
    .param p1, "annotatedTestClass"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 91
    if-eqz p0, :cond_17

    .line 94
    if-eqz p1, :cond_f

    .line 98
    new-instance v0, Lorg/junit/runner/manipulation/Ordering$Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/junit/runner/manipulation/Ordering$Context;-><init>(Lorg/junit/runner/Description;Lorg/junit/runner/manipulation/Ordering$Context-IA;)V

    invoke-interface {p0, v0}, Lorg/junit/runner/manipulation/Ordering$Factory;->create(Lorg/junit/runner/manipulation/Ordering$Context;)Lorg/junit/runner/manipulation/Ordering;

    move-result-object v0

    return-object v0

    .line 95
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotatedTestClass cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 102
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :cond_b
    return-object v0
.end method

.method public static shuffledBy(Ljava/util/Random;)Lorg/junit/runner/manipulation/Ordering;
    .registers 2
    .param p0, "random"    # Ljava/util/Random;

    .line 32
    new-instance v0, Lorg/junit/runner/manipulation/Ordering$1;

    invoke-direct {v0, p0}, Lorg/junit/runner/manipulation/Ordering$1;-><init>(Ljava/util/Random;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 121
    instance-of v0, p1, Lorg/junit/runner/manipulation/Orderable;

    if-eqz v0, :cond_f

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/manipulation/Orderable;

    .line 123
    .local v0, "orderable":Lorg/junit/runner/manipulation/Orderable;
    new-instance v1, Lorg/junit/runner/manipulation/Orderer;

    invoke-direct {v1, p0}, Lorg/junit/runner/manipulation/Orderer;-><init>(Lorg/junit/runner/manipulation/Ordering;)V

    invoke-interface {v0, v1}, Lorg/junit/runner/manipulation/Orderable;->order(Lorg/junit/runner/manipulation/Orderer;)V

    .line 125
    .end local v0    # "orderable":Lorg/junit/runner/manipulation/Orderable;
    :cond_f
    return-void
.end method

.method protected abstract orderItems(Ljava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end method

.method validateOrderingIsCorrect()Z
    .registers 2

    .line 132
    const/4 v0, 0x1

    return v0
.end method
