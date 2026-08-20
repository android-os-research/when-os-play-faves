.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTeletextAppStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$state:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 1186
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1195
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1196
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;->val$state:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onTeletextAppStateChanged(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1200
    :cond_13
    goto :goto_1c

    .line 1198
    :catch_14
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in notifyTeletextAppState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
