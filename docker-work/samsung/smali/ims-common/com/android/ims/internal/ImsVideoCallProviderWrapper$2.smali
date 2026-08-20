.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 161
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_fc

    goto/16 :goto_fb

    .line 229
    :pswitch_7
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeVideoQuality(I)V

    .line 230
    goto/16 :goto_fb

    .line 226
    :pswitch_10
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 227
    goto/16 :goto_fb

    .line 222
    :pswitch_1b
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setCallDataUsage(J)V

    .line 223
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmDataUsageUpdateRegistrants(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/RegistrantList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/ims/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 224
    goto/16 :goto_fb

    .line 211
    :pswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/SomeArgs;

    .line 213
    .local v0, "args":Lcom/android/ims/SomeArgs;
    :try_start_39
    iget-object v1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, "width":I
    iget-object v2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 215
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_54

    .line 217
    .end local v1    # "width":I
    .end local v2    # "height":I
    invoke-virtual {v0}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 218
    nop

    .line 219
    goto/16 :goto_fb

    .line 217
    :catchall_54
    move-exception v1

    invoke-virtual {v0}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 218
    throw v1

    .line 208
    .end local v0    # "args":Lcom/android/ims/SomeArgs;
    :pswitch_59
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    .line 209
    goto/16 :goto_fb

    .line 188
    :pswitch_68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/SomeArgs;

    .line 190
    .restart local v0    # "args":Lcom/android/ims/SomeArgs;
    :try_start_6c
    iget-object v1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    .local v1, "status":I
    iget-object v2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 192
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 194
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 197
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v4}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmCallbacks(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 198
    .local v5, "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    if-eqz v5, :cond_9c

    .line 199
    invoke-interface {v5, v1, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;->onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_9c
    .catchall {:try_start_6c .. :try_end_9c} :catchall_a2

    .line 202
    .end local v5    # "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    :cond_9c
    goto :goto_8b

    .line 204
    .end local v1    # "status":I
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    :cond_9d
    invoke-virtual {v0}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 205
    nop

    .line 206
    goto :goto_fb

    .line 204
    :catchall_a2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 205
    throw v1

    .line 167
    .end local v0    # "args":Lcom/android/ims/SomeArgs;
    :pswitch_a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 168
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmCurrentVideoState(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 169
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 168
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmIsVideoEnabled(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 171
    invoke-static {}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 174
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 171
    const-string v3, "receiveSessionModifyRequest: requestedVideoState=%s; rejecting as video is disabled."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_e4
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmVideoCallProvider(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f2} :catch_f3
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_f2} :catch_f3

    .line 181
    goto :goto_f4

    .line 179
    :catch_f3
    move-exception v1

    .line 182
    :goto_f4
    return-void

    .line 184
    :cond_f5
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 186
    .end local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    nop

    .line 234
    :goto_fb
    return-void

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_68
        :pswitch_59
        :pswitch_35
        :pswitch_1b
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method
