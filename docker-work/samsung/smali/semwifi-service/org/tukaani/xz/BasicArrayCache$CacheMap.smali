.class Lorg/tukaani/xz/BasicArrayCache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
        "Ljava/lang/ref/Reference<",
        "TT;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x40

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    .line 129
    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;>;)Z"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x20

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
