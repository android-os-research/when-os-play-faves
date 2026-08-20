.class final Lorg/apache/commons/lang3/ClassUtils$2;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/ClassUtils;->lambda$hierarchy$1(Ljava/lang/Iterable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field interfaces:Ljava/util/Iterator;

.field final synthetic val$seenInterfaces:Ljava/util/Set;

.field final synthetic val$wrapped:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Set;)V
    .registers 3

    .line 1526
    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    return-void
.end method

.method private walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1549
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1b

    aget-object v2, p2, v1

    .line 1550
    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1551
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_15
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/lang3/ClassUtils$2;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1531
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public next()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1536
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1537
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1538
    iget-object p0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1541
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1542
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1543
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/lang3/ClassUtils$2;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1544
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 1526
    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$2;->next()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 1

    .line 1559
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
