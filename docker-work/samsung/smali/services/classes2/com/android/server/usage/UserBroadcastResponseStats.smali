.class public Lcom/android/server/usage/UserBroadcastResponseStats;
.super Ljava/lang/Object;
.source "UserBroadcastResponseStats.java"


# instance fields
.field public mResponseStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/usage/BroadcastEvent;",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clearBroadcastResponseStats(Ljava/lang/String;J)V
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_36

    .line 69
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_21

    .line 70
    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_21

    goto :goto_33

    :cond_21
    if-eqz p1, :cond_2e

    .line 73
    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_33

    .line 76
    :cond_2e
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const/4 v0, 0x0

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 90
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    .line 91
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/BroadcastResponseStats;

    .line 92
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " -> "

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public getBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/BroadcastResponseStats;

    return-object p0
.end method

.method public getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/BroadcastResponseStats;

    if-nez v0, :cond_1c

    .line 45
    new-instance v0, Landroid/app/usage/BroadcastResponseStats;

    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/BroadcastResponseStats;-><init>(Ljava/lang/String;J)V

    .line 47
    iget-object p0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 82
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 83
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public populateAllBroadcastResponseStats(Ljava/util/List;Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3c

    .line 56
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_21

    .line 57
    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-eqz v2, :cond_21

    goto :goto_39

    :cond_21
    if-eqz p2, :cond_2e

    .line 60
    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_39

    .line 63
    :cond_2e
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/BroadcastResponseStats;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3c
    return-void
.end method
