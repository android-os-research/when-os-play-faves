.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;
.super Landroid/media/IRemoteDisplayProvider$Stub;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    .line 332
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-direct {p0}, Landroid/media/IRemoteDisplayProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "delta"    # I

    .line 360
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 351
    return-void
.end method

.method public setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    .line 335
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    return-void
.end method

.method public setDiscoveryMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 340
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void
.end method

.method public setVolume(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .line 355
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-static {v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->-$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    return-void
.end method
