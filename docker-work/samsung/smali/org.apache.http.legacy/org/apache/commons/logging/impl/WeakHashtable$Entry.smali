.class final Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Entry-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "result":Z
    if-eqz p1, :cond_44

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_44

    .line 362
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 363
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    .line 364
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_42

    goto :goto_25

    .line 365
    :cond_17
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 367
    :goto_25
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_42

    goto :goto_40

    .line 369
    :cond_32
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_40
    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    move v0, v2

    .line 371
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_44
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 389
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 385
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 377
    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    xor-int/2addr v0, v1

    .line 376
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Entry.setValue is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
