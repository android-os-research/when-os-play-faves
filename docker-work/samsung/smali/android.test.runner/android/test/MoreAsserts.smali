.class public final Landroid/test/MoreAsserts;
.super Ljava/lang/Object;
.source "MoreAsserts.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V
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

    .line 56
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be assignable from actual class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 56
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .param p1, "actual"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 3
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 278
    if-nez p2, :cond_5

    .line 279
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_5
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 282
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_12

    .line 283
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_12
    return-object v0
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 392
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 371
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 372
    .local v0, "expectedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p2, v2

    .line 373
    .local v3, "expectedObj":Ljava/lang/Object;
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v3    # "expectedObj":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 376
    :cond_12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 377
    .local v2, "actualObj":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_46

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extra object in actual: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v2    # "actualObj":Ljava/lang/Object;
    :cond_46
    goto :goto_16

    .line 382
    :cond_47
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 383
    const-string v1, "Extra objects in expected."

    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_52
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 362
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 349
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "actualList":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 351
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_9

    .line 353
    :cond_17
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public static assertEmpty(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 409
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 410
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 399
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_11
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 416
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 417
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_d
    return-void
.end method

.method public static assertEmpty(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 426
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p1, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p2, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 222
    .local v0, "onlyInExpected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v1, "onlyInActual":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 226
    :cond_1c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v2, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sets do not match.\nOnly in expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nOnly in actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nIntersection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v2    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_4e
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[B[B)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [B
    .param p2, "actual"    # [B

    .line 88
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_9

    .line 89
    array-length v0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 91
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 92
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_22

    .line 93
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aget-byte v2, p2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 96
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[D[D)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [D
    .param p2, "actual"    # [D

    .line 167
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_9

    .line 168
    array-length v0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 170
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 171
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_24

    .line 172
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 170
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 175
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[I[I)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [I
    .param p2, "actual"    # [I

    .line 114
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_9

    .line 115
    array-length v0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 117
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 118
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_22

    .line 119
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 122
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[J[J)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [J
    .param p2, "actual"    # [J

    .line 140
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_9

    .line 141
    array-length v0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 143
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 144
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    .line 145
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 148
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [Ljava/lang/Object;
    .param p2, "actual"    # [Ljava/lang/Object;

    .line 195
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_9

    .line 196
    array-length v0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 198
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 199
    aget-object v1, p1, v0

    .line 200
    .local v1, "exp":Ljava/lang/Object;
    aget-object v2, p2, v0

    .line 202
    .local v2, "act":Ljava/lang/Object;
    if-nez v1, :cond_16

    if-nez v2, :cond_1c

    goto :goto_1f

    :cond_16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 203
    :cond_1c
    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .end local v1    # "exp":Ljava/lang/Object;
    .end local v2    # "act":Ljava/lang/Object;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 206
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public static assertEquals(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p0, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p1, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 239
    return-void
.end method

.method public static assertEquals([B[B)V
    .registers 3
    .param p0, "expected"    # [B
    .param p1, "actual"    # [B

    .line 104
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[B[B)V

    .line 105
    return-void
.end method

.method public static assertEquals([D[D)V
    .registers 3
    .param p0, "expected"    # [D
    .param p1, "actual"    # [D

    .line 183
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[D[D)V

    .line 184
    return-void
.end method

.method public static assertEquals([I[I)V
    .registers 3
    .param p0, "expected"    # [I
    .param p1, "actual"    # [I

    .line 130
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[I[I)V

    .line 131
    return-void
.end method

.method public static assertEquals([J[J)V
    .registers 3
    .param p0, "expected"    # [J
    .param p1, "actual"    # [J

    .line 156
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[J[J)V

    .line 157
    return-void
.end method

.method public static assertEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "expected"    # [Ljava/lang/Object;
    .param p1, "actual"    # [Ljava/lang/Object;

    .line 215
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 3
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 250
    if-nez p2, :cond_5

    .line 251
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_5
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 254
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_12

    .line 255
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_12
    return-object v0
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 328
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 329
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 330
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_d
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 443
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 444
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 433
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 434
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    .line 436
    :cond_d
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 450
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    .line 453
    :cond_9
    return-void
.end method

.method public static assertNotEmpty(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 460
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V

    .line 461
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 68
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    invoke-static {p0, p1}, Landroid/test/MoreAsserts;->failEqual(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_9
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 305
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 306
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 307
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_d
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "expectedResult"    # Z

    .line 515
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Landroid/test/MoreAsserts;->checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 516
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "expectedResult"    # Z

    .line 478
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 479
    const-string v0, "Your check is dubious...why would you expect null != null?"

    invoke-static {v0, p3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 482
    return-void

    .line 485
    :cond_a
    if-eqz p1, :cond_e

    if-nez p2, :cond_13

    .line 486
    :cond_e
    const-string v0, "Your check is dubious...why would you expect an object to be equal to null?"

    invoke-static {v0, p3}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 491
    :cond_13
    if-eqz p1, :cond_1c

    .line 492
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 494
    :cond_1c
    if-eqz p2, :cond_25

    .line 495
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, p3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 498
    :cond_25
    if-eqz p3, :cond_52

    .line 499
    const-string v0, "hashCode() values for equal objects should be the same"

    .line 501
    .local v0, "hashMessage":Ljava/lang/String;
    if-eqz p0, :cond_42

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 506
    .end local v0    # "hashMessage":Ljava/lang/String;
    :cond_52
    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 582
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to contain regex:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method private static failEmpty(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 572
    const-string v0, "expected not to be empty, but was"

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private static failEqual(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to be:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private static failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to match regex:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private static failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 548
    if-nez p2, :cond_5

    const-string v0, "null"

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected to contain regex:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private static failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected to be empty, but contained: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private static failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 541
    if-nez p2, :cond_5

    const-string v0, "null"

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected to match regex:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private static failWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "userMessage"    # Ljava/lang/String;
    .param p1, "ourMessage"    # Ljava/lang/String;

    .line 576
    if-nez p0, :cond_4

    .line 577
    move-object v0, p1

    goto :goto_1b

    .line 578
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_1b
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private static failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "actual"    # Ljava/lang/Object;

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected array element["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private static failWrongLength(Ljava/lang/String;II)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected array length:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private static getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 4
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 519
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 520
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1
.end method
