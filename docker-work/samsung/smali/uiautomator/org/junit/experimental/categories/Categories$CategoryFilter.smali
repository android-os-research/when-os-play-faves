.class public Lorg/junit/experimental/categories/Categories$CategoryFilter;
.super Lorg/junit/runner/manipulation/Filter;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/categories/Categories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryFilter"
.end annotation


# instance fields
.field private final excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final excludedAny:Z

.field private final included:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final includedAny:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    .local p1, "includedCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "excludedCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->includedAny:Z

    .line 153
    iput-boolean v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excludedAny:Z

    .line 154
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smnullableClassToSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    .line 155
    invoke-static {p2}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smnullableClassToSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    .line 156
    return-void
.end method

.method protected constructor <init>(ZLjava/util/Set;ZLjava/util/Set;)V
    .registers 6
    .param p1, "matchAnyIncludes"    # Z
    .param p3, "matchAnyExcludes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 159
    .local p2, "includes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p4, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 160
    iput-boolean p1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->includedAny:Z

    .line 161
    iput-boolean p3, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excludedAny:Z

    .line 162
    invoke-static {p2}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->copyAndRefine(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    .line 163
    invoke-static {p4}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->copyAndRefine(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    .line 164
    return-void
.end method

.method private constructor <init>(Z[Ljava/lang/Class;Z[Ljava/lang/Class;)V
    .registers 6
    .param p1, "matchAnyIncludes"    # Z
    .param p3, "matchAnyExcludes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 167
    .local p2, "inclusions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p4, "exclusions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 168
    iput-boolean p1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->includedAny:Z

    .line 169
    iput-boolean p3, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excludedAny:Z

    .line 170
    invoke-static {p2}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smcreateSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    .line 171
    invoke-static {p4}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smcreateSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    .line 172
    return-void
.end method

.method private static categories(Lorg/junit/runner/Description;)Ljava/util/Set;
    .registers 3
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 279
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 280
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->parentDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 281
    return-object v0
.end method

.method public static categoryFilter(ZLjava/util/Set;ZLjava/util/Set;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 5
    .param p0, "matchAnyInclusions"    # Z
    .param p2, "matchAnyExclusions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 147
    .local p1, "inclusions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p3, "exclusions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/junit/experimental/categories/Categories$CategoryFilter;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/junit/experimental/categories/Categories$CategoryFilter;-><init>(ZLjava/util/Set;ZLjava/util/Set;)V

    return-object v0
.end method

.method private static copyAndRefine(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 299
    .local p0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 300
    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz p0, :cond_a

    .line 301
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_a
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    return-object v0
.end method

.method private static directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;
    .registers 3
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 291
    new-array v0, v0, [Ljava/lang/Class;

    return-object v0

    .line 294
    :cond_6
    const-class v1, Lorg/junit/experimental/categories/Category;

    invoke-virtual {p0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/categories/Category;

    .line 295
    .local v1, "annotation":Lorg/junit/experimental/categories/Category;
    if-nez v1, :cond_13

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_17

    :cond_13
    invoke-interface {v1}, Lorg/junit/experimental/categories/Category;->value()[Ljava/lang/Class;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public static exclude(Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 138
    .local p0, "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->exclude(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs exclude(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 5
    .param p0, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 134
    .local p1, "categories":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/experimental/categories/Categories$CategoryFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;-><init>(Z[Ljava/lang/Class;Z[Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs exclude([Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 142
    .local p0, "categories":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->exclude(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v0

    return-object v0
.end method

.method private hasCorrectCategoryAnnotation(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 220
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->categories(Lorg/junit/runner/Description;)Ljava/util/Set;

    move-result-object v0

    .line 223
    .local v0, "childCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 224
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    return v1

    .line 227
    :cond_11
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 228
    iget-boolean v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excludedAny:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 229
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->matchesAnyParentCategories(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 230
    return v2

    .line 233
    :cond_27
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->matchesAllParentCategories(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 234
    return v2

    .line 239
    :cond_30
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 241
    const/4 v1, 0x1

    return v1

    .line 243
    :cond_3a
    iget-boolean v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->includedAny:Z

    if-eqz v1, :cond_45

    .line 244
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->matchesAnyParentCategories(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    return v1

    .line 246
    :cond_45
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->matchesAllParentCategories(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public static include(Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 126
    .local p0, "category":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->include(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs include(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 5
    .param p0, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 122
    .local p1, "categories":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/experimental/categories/Categories$CategoryFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/junit/experimental/categories/Categories$CategoryFilter;-><init>(Z[Ljava/lang/Class;Z[Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs include([Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .line 130
    .local p0, "categories":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->include(Z[Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v0

    return-object v0
.end method

.method private matchesAllParentCategories(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 269
    .local p1, "childCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "parentCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 270
    .local v1, "parentCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v1}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smhasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 271
    const/4 v0, 0x0

    return v0

    .line 273
    .end local v1    # "parentCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    goto :goto_4

    .line 274
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method private matchesAnyParentCategories(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 256
    .local p1, "childCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "parentCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 257
    .local v1, "parentCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v1}, Lorg/junit/experimental/categories/Categories;->-$$Nest$smhasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 258
    const/4 v0, 0x1

    return v0

    .line 260
    .end local v1    # "parentCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    goto :goto_4

    .line 261
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static parentDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .registers 3
    .param p0, "description"    # Lorg/junit/runner/Description;

    .line 285
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v1

    :goto_c
    return-object v1
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 2

    .line 179
    invoke-virtual {p0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .registers 6
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 206
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->hasCorrectCategoryAnnotation(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 207
    return v1

    .line 210
    :cond_8
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 211
    .local v2, "each":Lorg/junit/runner/Description;
    invoke-virtual {p0, v2}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 212
    return v1

    .line 214
    .end local v2    # "each":Lorg/junit/runner/Description;
    :cond_23
    goto :goto_10

    .line 216
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "categories "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "[all]"

    goto :goto_14

    :cond_12
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->included:Ljava/util/Set;

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    .local v0, "description":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 199
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->excluded:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
