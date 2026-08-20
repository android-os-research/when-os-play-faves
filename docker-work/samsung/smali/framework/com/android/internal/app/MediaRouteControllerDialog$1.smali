.class Lcom/android/internal/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 142
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 146
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_33

    .line 149
    :cond_26
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 152
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 153
    return-void
.end method
