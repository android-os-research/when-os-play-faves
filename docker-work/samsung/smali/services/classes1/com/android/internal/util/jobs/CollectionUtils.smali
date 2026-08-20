.class public Lcom/android/internal/util/jobs/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 332
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :cond_d
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 320
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 368
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 369
    :cond_8
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 371
    :cond_d
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 358
    :cond_8
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 360
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 343
    invoke-static {p1}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_9

    goto :goto_d

    .line 344
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_e
    if-eqz p0, :cond_16

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_1b

    .line 347
    :cond_16
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 349
    :cond_1b
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public static any(Ljava/util/List;Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 257
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static any(Ljava/util/Set;Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 266
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/CollectionUtils;->find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 53
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static copyOf(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 402
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method

.method public static copyOf(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 409
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_11

    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method

.method public static emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static emptyIfNull(Ljava/util/Map;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static emptyIfNull(Ljava/util/Set;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static filter(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 240
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 243
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 245
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 248
    :cond_24
    invoke-static {v0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    :goto_2
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 68
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 71
    :cond_19
    invoke-static {v0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_46

    .line 79
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_46

    :cond_9
    const/4 v0, 0x0

    .line 81
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_28

    .line 82
    check-cast p0, Landroid/util/ArraySet;

    .line 83
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_41

    .line 85
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 86
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 87
    invoke-static {v0, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 91
    :cond_28
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 93
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_2c

    .line 97
    :cond_41
    invoke-static {v0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 79
    :cond_46
    :goto_46
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 275
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    .line 276
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 277
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 278
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    return-object v1
.end method

.method public static find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    if-nez p1, :cond_6

    goto :goto_40

    .line 290
    :cond_6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    .line 293
    :cond_d
    :try_start_d
    instance-of v2, p0, Landroid/util/ArraySet;

    if-eqz v2, :cond_24

    .line 294
    check-cast p0, Landroid/util/ArraySet;

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_39

    .line 296
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 297
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 302
    :cond_24
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 303
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_3a

    if-eqz v2, :cond_28

    return-object v1

    :cond_39
    return-object v0

    :catch_3a
    move-exception p0

    .line 309
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_40
    :goto_40
    return-object v0
.end method

.method public static firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 482
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static firstOrNull(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 475
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/function/BiConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_3d

    if-nez p1, :cond_5

    goto :goto_3d

    .line 454
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 459
    :cond_c
    instance-of v1, p0, Landroid/util/ArrayMap;

    if-eqz v1, :cond_23

    .line 460
    check-cast p0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_3d

    .line 462
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 465
    :cond_23
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 466
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static forEach(Ljava/util/Set;Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_38

    if-nez p1, :cond_5

    goto :goto_38

    .line 426
    :cond_5
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 429
    :cond_c
    :try_start_c
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_1f

    .line 430
    check-cast p0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_31

    .line 432
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 435
    :cond_1f
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 436
    invoke-interface {p1, v0}, Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_32

    goto :goto_23

    :cond_31
    return-void

    :catch_32
    move-exception p0

    .line 440
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 233
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->size(Ljava/util/Map;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 123
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 125
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public static map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/Set<",
            "TO;>;"
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 136
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 137
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_2b

    .line 138
    check-cast p0, Landroid/util/ArraySet;

    .line 139
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_41

    .line 141
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 144
    :cond_2b
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 145
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_41
    return-object v0
.end method

.method public static mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 167
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 169
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 172
    :cond_24
    invoke-static {v0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 380
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 383
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 392
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 394
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static size(Ljava/util/Collection;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 212
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static size(Ljava/util/Map;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 219
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static toSet(Ljava/util/Collection;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 416
    invoke-static {p0}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_11

    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method
