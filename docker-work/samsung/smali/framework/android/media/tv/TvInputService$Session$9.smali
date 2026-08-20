.class Landroid/media/tv/TvInputService$Session$9;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyContentAllowed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 766
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$9;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 772
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$9;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 773
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$9;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/tv/ITvInputSessionCallback;->onContentAllowed()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 777
    :cond_11
    goto :goto_1a

    .line 775
    :catch_12
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyContentAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
