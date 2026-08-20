.class final Lorg/apache/commons/lang3/ClassUtils$1;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/ClassUtils;->lambda$hierarchy$0(Ljava/lang/Class;)Ljava/util/Iterator;
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
.field final synthetic val$next:Lorg/apache/commons/lang3/mutable/MutableObject;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/mutable/MutableObject;)V
    .registers 2

    .line 1498
    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    .line 1502
    iget-object p0, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
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

    .line 1507
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1508
    iget-object p0, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/mutable/MutableObject;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 1498
    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$1;->next()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 1

    .line 1514
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
