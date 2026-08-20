.class Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;
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
    name = "ScanResultsScoreCacheFilter"
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
.field public final mScanResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;)V"
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 667
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 668
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2b

    .line 670
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 671
    invoke-static {v2}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 673
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 661
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 7
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

    .line 680
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_32

    .line 684
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 685
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 686
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ScoredNetwork;

    .line 687
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    iget-object v4, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 688
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_31
    return-object v0

    .line 681
    :cond_32
    :goto_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
