.class Landroid/media/tv/TvInputService$Session$8;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyVideoUnavailable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic blacklist val$reason:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputService$Session;

    .line 725
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$8;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$8;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 731
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$8;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 732
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$8;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputService$Session$8;->val$reason:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onVideoUnavailable(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 736
    :cond_13
    goto :goto_1c

    .line 734
    :catch_14
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyVideoUnavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
