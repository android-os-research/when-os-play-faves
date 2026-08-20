.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setMediaViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$enable:Z


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 349
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-boolean p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 352
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->val$enable:Z

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z

    move-result v1

    if-ne v0, v1, :cond_b

    .line 353
    return-void

    .line 355
    :cond_b
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-boolean v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->val$enable:Z

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    .line 356
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->val$enable:Z

    if-eqz v0, :cond_2e

    .line 357
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 358
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto :goto_34

    .line 361
    :cond_2e
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 363
    :cond_34
    :goto_34
    return-void
.end method
