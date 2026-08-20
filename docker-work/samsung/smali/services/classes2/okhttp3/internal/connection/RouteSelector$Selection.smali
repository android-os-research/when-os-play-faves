.class public final Lokhttp3/internal/connection/RouteSelector$Selection;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/RouteSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# instance fields
.field public nextRouteIndex:I

.field public final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    .line 209
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 213
    iget v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public next()Lokhttp3/Route;
    .registers 4

    .line 217
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 220
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->routes:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/RouteSelector$Selection;->nextRouteIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Route;

    return-object p0

    .line 218
    :cond_15
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
