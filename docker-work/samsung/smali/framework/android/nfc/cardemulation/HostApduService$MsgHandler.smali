.class final Landroid/nfc/cardemulation/HostApduService$MsgHandler;
.super Landroid/os/Handler;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostApduService;

    .line 250
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException calling into NfcService."

    const-string v2, "Response not sent; service was deactivated."

    const/4 v3, 0x0

    const-string v4, "ApduService"

    packed-switch v0, :pswitch_data_b4

    .line 312
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_b3

    .line 300
    :pswitch_11
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v0, :cond_1d

    .line 301
    const-string v0, "notifyUnhandled not sent; service was deactivated."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 305
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 306
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2c

    .line 309
    goto/16 :goto_b3

    .line 307
    :catch_2c
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_b3

    .line 296
    :pswitch_32
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iput-object v3, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 297
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    .line 298
    goto/16 :goto_b3

    .line 283
    :pswitch_3f
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v0, :cond_49

    .line 284
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 288
    :cond_49
    :try_start_49
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 289
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v0, v0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_56} :catch_57

    .line 292
    goto :goto_b3

    .line 290
    :catch_57
    move-exception v0

    .line 291
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_b3

    .line 255
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, "dataBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v1, :cond_6c

    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v5, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 258
    :cond_6c
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 259
    .local v5, "apdu":[B
    if-eqz v5, :cond_ad

    .line 260
    iget-object v6, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v6, v5, v3}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v6

    .line 261
    .local v6, "responseApdu":[B
    if-eqz v6, :cond_ac

    .line 262
    iget-object v7, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v7, v7, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    if-nez v7, :cond_86

    .line 263
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 266
    :cond_86
    const/4 v2, 0x1

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 267
    .local v2, "responseMsg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v3, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 269
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 270
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 272
    :try_start_9c
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v1, v1, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a3} :catch_a4

    .line 276
    goto :goto_ac

    .line 273
    :catch_a4
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "TAG"

    const-string v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "responseMsg":Landroid/os/Message;
    .end local v3    # "responseBundle":Landroid/os/Bundle;
    .end local v6    # "responseApdu":[B
    :cond_ac
    :goto_ac
    goto :goto_b3

    .line 279
    :cond_ad
    const-string v1, "Received MSG_COMMAND_APDU without data."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    nop

    .line 314
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v5    # "apdu":[B
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_3f
        :pswitch_32
        :pswitch_11
    .end packed-switch
.end method
