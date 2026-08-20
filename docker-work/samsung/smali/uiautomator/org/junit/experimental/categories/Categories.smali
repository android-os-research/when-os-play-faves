.class public Lorg/junit/experimental/categories/Categories;
.super Lorg/junit/runners/Suite;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/Categories$CategoryFilter;,
        Lorg/junit/experimental/categories/Categories$ExcludeCategory;,
        Lorg/junit/experimental/categories/Categories$IncludeCategory;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcreateSet([Ljava/lang/Class;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/junit/experimental/categories/Categories;->hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnullableClassToSet(Ljava/lang/Class;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->nullableClassToSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .registers 8
    .param p2, "builder"    # Lorg/junit/runners/model/RunnerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 309
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V

    .line 311
    :try_start_3
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 312
    .local v0, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 313
    .local v1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyIncluded(Ljava/lang/Class;)Z

    move-result v2

    .line 314
    .local v2, "isAnyIncluded":Z
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyExcluded(Ljava/lang/Class;)Z

    move-result v3

    .line 316
    .local v3, "isAnyExcluded":Z
    invoke-static {v2, v0, v3, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->categoryFilter(ZLjava/util/Set;ZLjava/util/Set;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/junit/experimental/categories/Categories;->filter(Lorg/junit/runner/manipulation/Filter;)V
    :try_end_1a
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_3 .. :try_end_1a} :catch_1c

    .line 319
    .end local v0    # "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v1    # "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "isAnyIncluded":Z
    .end local v3    # "isAnyExcluded":Z
    nop

    .line 320
    return-void

    .line 317
    :catch_1c
    move-exception v0

    .line 318
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createSet([Ljava/lang/Class;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 354
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2f

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2f

    .line 357
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1a

    aget-object v3, p0, v2

    .line 358
    .local v3, "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_12

    .line 357
    .end local v3    # "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 359
    .restart local v3    # "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "has null category"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    .end local v3    # "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 364
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2e

    .line 365
    :cond_25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 363
    :goto_2e
    return-object v0

    .line 355
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 333
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    .line 334
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$ExcludeCategory;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->value()[Ljava/lang/Class;

    move-result-object v1

    :goto_10
    invoke-static {v1}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 323
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    .line 324
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$IncludeCategory;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->value()[Ljava/lang/Class;

    move-result-object v1

    :goto_10
    invoke-static {v1}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 343
    .local p0, "assigns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 344
    .local v1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 345
    const/4 v0, 0x1

    return v0

    .line 347
    .end local v1    # "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    goto :goto_4

    .line 348
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static isAnyExcluded(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 338
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    .line 339
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$ExcludeCategory;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->matchAny()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private static isAnyIncluded(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 328
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    .line 329
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$IncludeCategory;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->matchAny()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private static nullableClassToSet(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 371
    .local p0, "nullableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_7

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    .line 373
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 371
    :goto_b
    return-object v0
.end method
