.class public final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderRecord"
.end annotation


# instance fields
.field public mDescriptor:Landroid/media/RemoteDisplayState;

.field public final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field public final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 3

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1631
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .registers 6

    .line 1696
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 1698
    iget-object v2, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public final assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1728
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_55

    .line 1733
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1736
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<no routes>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public final findRouteByDescriptorId(Ljava/lang/String;)I
    .registers 5

    .line 1714
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1716
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1717
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 6

    .line 1703
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1705
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1706
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 1

    .line 1636
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object p0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .registers 1

    .line 1640
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .registers 13

    .line 1645
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_a5

    .line 1646
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    const/4 v0, 0x1

    if-eqz p1, :cond_8b

    .line 1652
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v2

    const-string v3, "MediaRouterService"

    if-eqz v2, :cond_71

    .line 1653
    iget-object p1, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1654
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    move v5, v4

    :goto_1a
    if-ge v1, v2, :cond_6f

    .line 1657
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1658
    iget-object v7, v6, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1659
    invoke-virtual {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_40

    .line 1662
    invoke-virtual {p0, v7}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1663
    new-instance v8, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v8, p0, v7, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1666
    invoke-virtual {v8, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move v4, v0

    move v5, v7

    goto :goto_6c

    :cond_40
    if-ge v8, v5, :cond_57

    .line 1670
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1674
    :cond_57
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1675
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v9, v8, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1676
    invoke-virtual {v7, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v5

    or-int/2addr v4, v5

    move v5, v10

    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_6f
    move v1, v4

    goto :goto_8c

    .line 1680
    :cond_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1681
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1680
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    move v5, v1

    .line 1686
    :goto_8c
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_93
    if-lt p1, v5, :cond_a5

    .line 1687
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    const/4 v2, 0x0

    .line 1688
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    goto :goto_93

    :cond_a5
    return v1
.end method
