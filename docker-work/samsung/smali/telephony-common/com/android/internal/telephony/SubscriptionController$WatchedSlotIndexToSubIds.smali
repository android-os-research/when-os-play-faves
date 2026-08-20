.class Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;
.super Ljava/lang/Object;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchedSlotIndexToSubIds"
.end annotation


# instance fields
.field private blacklist mSlotIndexToSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addToSubIdList(ILjava/lang/Integer;)V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 273
    :cond_20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_23
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 276
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    return-void
.end method

.method public blacklist clear()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    return-void
.end method

.method public blacklist clearSubIdList(I)V
    .registers 2

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_17

    .line 282
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 284
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    :cond_17
    return-void
.end method

.method public blacklist entrySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCopy(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public blacklist getMap()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist put(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 229
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    return-void
.end method

.method public blacklist remove(I)V
    .registers 2

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    return-void
.end method

.method public blacklist removeFromSubIdList(II)I
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 252
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 253
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_31
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, -0x2

    return p0
.end method

.method public blacklist size()I
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->mSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
