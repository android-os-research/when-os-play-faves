.class public final Lcom/google/gson/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final hash:I

.field public height:I

.field public final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 481
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 482
    iput-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;TK;I",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 488
    iput-object p2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 489
    iput p3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    const/4 p1, 0x1

    .line 490
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 491
    iput-object p4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 492
    iput-object p5, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 493
    iput-object p0, p5, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 494
    iput-object p0, p4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 513
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 514
    check-cast p1, Ljava/util/Map$Entry;

    .line 515
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :goto_1c
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez p0, :cond_27

    .line 516
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_32

    goto :goto_31

    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    :goto_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public first()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_a

    .line 538
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 498
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 502
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez p0, :cond_10

    goto :goto_14

    .line 523
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int p0, v0, v1

    return p0
.end method

.method public last()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_a

    .line 551
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 507
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
