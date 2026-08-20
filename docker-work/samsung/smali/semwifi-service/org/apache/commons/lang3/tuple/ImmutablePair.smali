.class public final Lorg/apache/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;
.source "ImmutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Pair<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "**>;"
        }
    .end annotation
.end field

.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/tuple/ImmutablePair;

    .line 46
    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;

    const/4 v0, 0x0

    .line 53
    invoke-static {v0, v0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 172
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-void
.end method

.method public static emptyArray()[Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0
.end method

.method public static left(Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object p0

    return-object p0
.end method

.method public static nullPair()Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "T",
            "L;",
            "TR;>;)",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 132
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_d

    :cond_c
    move-object p0, v0

    .line 138
    :goto_d
    new-instance v1, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static right(Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object p0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 202
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
