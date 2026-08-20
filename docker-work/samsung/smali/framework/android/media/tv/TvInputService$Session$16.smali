.class Landroid/media/tv/TvInputService$Session$16;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyAitInfoUpdated(Landroid/media/tv/AitInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$aitInfo:Landroid/media/tv/AitInfo;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/AitInfo;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 960
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$16;->val$aitInfo:Landroid/media/tv/AitInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 966
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 967
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$16;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$16;->val$aitInfo:Landroid/media/tv/AitInfo;

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 971
    :cond_13
    goto :goto_1c

    .line 969
    :catch_14
    move-exception v0

    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyAitInfoUpdated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
