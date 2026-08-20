.class public Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 740
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method


# virtual methods
.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 4

    .line 743
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_21

    .line 745
    :try_start_b
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fputmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)V

    .line 746
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 747
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 750
    :cond_21
    monitor-exit p1

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 4

    .line 755
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-ne p1, p3, :cond_e

    .line 756
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fputmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)V

    :cond_e
    return-void
.end method
