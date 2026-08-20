.class public abstract Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public expectedModCount:I

.field public lastReturned:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
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

.field public final synthetic this$0:Lcom/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
    .registers 3

    .line 765
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 763
    iget p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 774
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v2, :cond_1b

    .line 777
    iget v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_15

    .line 780
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 781
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    .line 778
    :cond_15
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 775
    :cond_1b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_14

    .line 788
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 790
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    .line 786
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
