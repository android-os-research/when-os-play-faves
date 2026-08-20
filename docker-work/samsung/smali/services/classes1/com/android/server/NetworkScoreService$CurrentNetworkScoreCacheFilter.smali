.class Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentNetworkScoreCacheFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator<",
        "Ljava/util/List<",
        "Landroid/net/ScoredNetwork;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mCurrentNetwork:Landroid/net/NetworkKey;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/net/wifi/WifiInfo;",
            ">;)V"
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 626
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2f

    :cond_b
    const/4 v0, 0x0

    .line 640
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 641
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 642
    iget-object v2, v1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 643
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 647
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 637
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
