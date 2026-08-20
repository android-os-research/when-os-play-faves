.class Lcom/samsung/android/allshare/TVMessageSender$1;
.super Landroid/os/Handler;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/TVMessageSender;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/TVMessageSender;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/TVMessageSender;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/allshare/TVMessageSender;

    .line 1346
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1350
    const/4 v0, 0x0

    .line 1351
    .local v0, "mEvent":Lcom/samsung/android/allshare/EventTouch;
    const/4 v1, 0x0

    .line 1352
    .local v1, "mEventMouse":Lcom/samsung/android/allshare/EventMouse;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-string v4, "TVMessageSender"

    sparse-switch v2, :sswitch_data_1a0

    goto/16 :goto_19e

    .line 1362
    :sswitch_c
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1363
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/TVMessageSender;->sendAuthentication()V

    goto/16 :goto_19e

    .line 1365
    :cond_23
    const-string v2, "CONTROLLER_EVENT_DEVICE_AUTHENTICATION : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mControlAPI:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/IAppControlAPI;->sendSocketIsNotConnectedEvent()V

    .line 1370
    goto/16 :goto_19e

    .line 1462
    :sswitch_31
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1463
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/TVMessageSender;->sendMouseDestroy()V

    goto/16 :goto_19e

    .line 1465
    :cond_48
    const-string v2, "CONTROLLER_EVENT_MOUSE_DESTROY : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    goto/16 :goto_19e

    .line 1453
    :sswitch_4f
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1454
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/TVMessageSender;->sendMouseCreate()V

    goto/16 :goto_19e

    .line 1456
    :cond_60
    const-string v2, "CONTROLLER_EVENT_MOUSE_CREATE : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    goto/16 :goto_19e

    .line 1385
    :sswitch_67
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1386
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1387
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_19e

    .line 1388
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/allshare/TVMessageSender;->sendRemoteControlKey(Ljava/lang/String;I)V

    goto/16 :goto_19e

    .line 1391
    :cond_8e
    const-string v2, "CONTROLLER_EVENT_REMOTECONTROL_KEY : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19e

    .line 1472
    :sswitch_95
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/TVMessageSender;->setTouchGestureTouchMode(I)V

    .line 1473
    goto/16 :goto_19e

    .line 1355
    :sswitch_9e
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_19e

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 1356
    const-string/jumbo v2, "sendDTVKeyboardEnd"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/TVMessageSender;->sendKeyboardEnd()V

    goto/16 :goto_19e

    .line 1412
    :sswitch_bb
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/allshare/EventTouch;

    .line 1414
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1415
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_e7

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 1416
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v6, v0, Lcom/samsung/android/allshare/EventTouch;->mType:I

    iget v7, v0, Lcom/samsung/android/allshare/EventTouch;->mDistance:I

    iget v8, v0, Lcom/samsung/android/allshare/EventTouch;->mDegree:I

    iget v9, v0, Lcom/samsung/android/allshare/EventTouch;->mX:I

    iget v10, v0, Lcom/samsung/android/allshare/EventTouch;->mY:I

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/allshare/TVMessageSender;->sendTouchGestureSemanticEvent(IIIII)V

    goto/16 :goto_19e

    .line 1419
    :cond_e7
    const-string v2, "CONTROLLER_EVENT_SEMANTIC : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19e

    .line 1425
    :sswitch_ee
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/allshare/EventTouch;

    .line 1427
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1428
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 1429
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v6, v0, Lcom/samsung/android/allshare/EventTouch;->mType:I

    const/16 v7, 0xa

    const/4 v8, 0x0

    iget v9, v0, Lcom/samsung/android/allshare/EventTouch;->mX:I

    iget v10, v0, Lcom/samsung/android/allshare/EventTouch;->mY:I

    iget v11, v0, Lcom/samsung/android/allshare/EventTouch;->mDX:I

    iget v12, v0, Lcom/samsung/android/allshare/EventTouch;->mDY:I

    invoke-virtual/range {v5 .. v12}, Lcom/samsung/android/allshare/TVMessageSender;->sendTouchGuestureEvent2012(IIIIIII)V

    goto/16 :goto_19e

    .line 1432
    :cond_11d
    const-string v2, "CONTROLLER_EVENT_GESTURE : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19e

    .line 1440
    :sswitch_124
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/allshare/EventMouse;

    .line 1441
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1442
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_151

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_151

    .line 1443
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v6, v1, Lcom/samsung/android/allshare/EventMouse;->mType:I

    iget v7, v1, Lcom/samsung/android/allshare/EventMouse;->mX:I

    iget v8, v1, Lcom/samsung/android/allshare/EventMouse;->mY:I

    iget v9, v1, Lcom/samsung/android/allshare/EventMouse;->mDX:I

    iget v10, v1, Lcom/samsung/android/allshare/EventMouse;->mDY:I

    iget v11, v1, Lcom/samsung/android/allshare/EventMouse;->mButton:I

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/allshare/TVMessageSender;->sendMouseProcess(IIIIII)V

    goto :goto_19e

    .line 1446
    :cond_151
    const-string v2, "CONTROLLER_EVENT_MOUSE : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19e

    .line 1400
    :sswitch_157
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1402
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_179

    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 1403
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/allshare/TVMessageSender;->sendKeyboardString(ILjava/lang/String;)V

    goto :goto_19e

    .line 1405
    :cond_179
    const-string v2, "CONTROLLER_EVENT_KEYBOARD_INPUT : socket is not connected"

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19e

    .line 1372
    :sswitch_17f
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v3, :cond_19e

    .line 1373
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_19e

    .line 1375
    :try_start_18b
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_192} :catch_193

    .line 1379
    goto :goto_199

    .line 1376
    :catch_193
    move-exception v2

    .line 1378
    .local v2, "e":Ljava/io/IOException;
    const-string v3, ""

    invoke-static {v4, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1380
    .end local v2    # "e":Ljava/io/IOException;
    :goto_199
    iget-object v2, p0, Lcom/samsung/android/allshare/TVMessageSender$1;->this$0:Lcom/samsung/android/allshare/TVMessageSender;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 1478
    :cond_19e
    :goto_19e
    return-void

    nop

    :sswitch_data_1a0
    .sparse-switch
        0x0 -> :sswitch_17f
        0x1 -> :sswitch_157
        0x2 -> :sswitch_124
        0x5 -> :sswitch_ee
        0x6 -> :sswitch_bb
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_95
        0xe -> :sswitch_67
        0xf -> :sswitch_4f
        0x10 -> :sswitch_31
        0x34 -> :sswitch_c
    .end sparse-switch
.end method
