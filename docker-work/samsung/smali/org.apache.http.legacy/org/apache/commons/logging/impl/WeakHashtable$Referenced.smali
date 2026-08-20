.class final Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method static bridge synthetic -$$Nest$mgetValue(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "referant"    # Ljava/lang/Object;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    .line 409
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey-IA;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getValue()Ljava/lang/Object;
    .registers 2

    .line 428
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "result":Z
    instance-of v1, p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    if-eqz v1, :cond_2d

    .line 434
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 435
    .local v1, "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 436
    .local v2, "thisKeyValue":Ljava/lang/Object;
    invoke-direct {v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 437
    .local v3, "otherKeyValue":Ljava/lang/Object;
    if-nez v2, :cond_29

    .line 438
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_18

    move v6, v5

    goto :goto_19

    :cond_18
    move v6, v4

    :goto_19
    move v0, v6

    .line 446
    if-ne v0, v5, :cond_2d

    .line 447
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v6

    invoke-virtual {v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v7

    if-ne v6, v7, :cond_27

    move v4, v5

    :cond_27
    move v0, v4

    goto :goto_2d

    .line 456
    :cond_29
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 459
    .end local v1    # "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v2    # "thisKeyValue":Ljava/lang/Object;
    .end local v3    # "otherKeyValue":Ljava/lang/Object;
    :cond_2d
    :goto_2d
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 424
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return v0
.end method
