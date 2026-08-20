.class final Landroid/media/MediaRouter$Static$Client;
.super Landroid/media/IMediaRouterClient$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$Static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter$Static;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter$Static;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaRouter$Static;

    .line 669
    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    invoke-direct {p0}, Landroid/media/IMediaRouterClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onGroupRouteSelected$1$android-media-MediaRouter$Static$Client(Ljava/lang/String;)V
    .registers 3
    .param p1, "groupRouteId"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-ne p0, v0, :cond_b

    .line 707
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->handleGroupRouteSelected(Ljava/lang/String;)V

    .line 709
    :cond_b
    return-void
.end method

.method synthetic blacklist lambda$onRestoreRoute$0$android-media-MediaRouter$Static$Client()V
    .registers 4

    .line 687
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-ne p0, v0, :cond_7e

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 688
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_7e

    .line 692
    :cond_21
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_5c

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreRoute() : selectedRoute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", a2dpRoute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 696
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreRoute() : route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_76
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 700
    return-void

    .line 689
    :cond_7e
    :goto_7e
    return-void
.end method

.method public blacklist onGroupRouteSelected(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupRouteId"    # Ljava/lang/String;

    .line 705
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRouter$Static$Client;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method public greylist-max-o onRestoreRoute()V
    .registers 3

    .line 684
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter$Static$Client;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public greylist-max-o onStateChanged()V
    .registers 3

    .line 672
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$Static$Client$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$Client$1;-><init>(Landroid/media/MediaRouter$Static$Client;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    return-void
.end method
