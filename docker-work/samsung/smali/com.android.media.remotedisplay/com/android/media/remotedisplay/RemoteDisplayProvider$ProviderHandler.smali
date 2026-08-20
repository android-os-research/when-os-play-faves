.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method public constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 365
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    goto :goto_64

    .line 402
    :pswitch_6
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 403
    .local v0, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_64

    .line 404
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_64

    .line 395
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_1a
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 396
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_64

    .line 397
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_64

    .line 388
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_2e
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 389
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_64

    .line 390
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_64

    .line 381
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_40
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 382
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_64

    .line 383
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_64

    .line 377
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_52
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setDiscoveryMode(I)V

    .line 378
    goto :goto_64

    .line 373
    :pswitch_5a
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteDisplayCallback;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 374
    nop

    .line 409
    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_1a
        :pswitch_6
    .end packed-switch
.end method
