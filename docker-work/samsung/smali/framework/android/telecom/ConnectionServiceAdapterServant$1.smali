.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    .line 83
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist internalHandleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_3de

    goto/16 :goto_3dc

    .line 368
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 370
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_26

    .line 373
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 374
    goto/16 :goto_3dc

    .line 373
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 374
    throw v1

    .line 109
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 111
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConference;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_4a

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    nop

    .line 119
    goto/16 :goto_3dc

    .line 117
    :catchall_4a
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    throw v1

    .line 358
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 360
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_53
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_72

    .line 363
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 364
    nop

    .line 365
    goto/16 :goto_3dc

    .line 363
    :catchall_72
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 364
    throw v1

    .line 355
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_77
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 356
    goto/16 :goto_3dc

    .line 345
    :pswitch_82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 347
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_86
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_9d

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    nop

    .line 352
    goto/16 :goto_3dc

    .line 350
    :catchall_9d
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    throw v1

    .line 342
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 343
    goto/16 :goto_3dc

    .line 338
    :pswitch_b1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 340
    goto/16 :goto_3dc

    .line 334
    :pswitch_c0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 336
    goto/16 :goto_3dc

    .line 331
    :pswitch_d1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 332
    goto/16 :goto_3dc

    .line 321
    :pswitch_e0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 323
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_fb
    .catchall {:try_start_e4 .. :try_end_fb} :catchall_101

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    nop

    .line 328
    goto/16 :goto_3dc

    .line 326
    :catchall_101
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    throw v1

    .line 131
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_106
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 132
    goto/16 :goto_3dc

    .line 155
    :pswitch_115
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 157
    goto/16 :goto_3dc

    .line 311
    :pswitch_126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 313
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_13f
    .catchall {:try_start_12a .. :try_end_13f} :catchall_145

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    nop

    .line 318
    goto/16 :goto_3dc

    .line 316
    :catchall_145
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    throw v1

    .line 301
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 303
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15f
    .catchall {:try_start_14e .. :try_end_15f} :catchall_165

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 307
    nop

    .line 308
    goto/16 :goto_3dc

    .line 306
    :catchall_165
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 307
    throw v1

    .line 291
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 293
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_16e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_17f
    .catchall {:try_start_16e .. :try_end_17f} :catchall_185

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 297
    nop

    .line 298
    goto/16 :goto_3dc

    .line 296
    :catchall_185
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 297
    throw v1

    .line 281
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 283
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_18e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19b
    .catchall {:try_start_18e .. :try_end_19b} :catchall_1a1

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 287
    nop

    .line 288
    goto/16 :goto_3dc

    .line 286
    :catchall_1a1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 287
    throw v1

    .line 194
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 196
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1aa
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v4, v4

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_1ba
    .catchall {:try_start_1aa .. :try_end_1ba} :catchall_1c0

    .line 199
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    nop

    .line 201
    goto/16 :goto_3dc

    .line 199
    :catchall_1c0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 200
    throw v1

    .line 271
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 273
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1c9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConnection;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1da
    .catchall {:try_start_1c9 .. :try_end_1da} :catchall_1e0

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 277
    nop

    .line 278
    goto/16 :goto_3dc

    .line 276
    :catchall_1e0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 277
    throw v1

    .line 261
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 263
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1fa
    .catchall {:try_start_1e9 .. :try_end_1fa} :catchall_200

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 267
    nop

    .line 268
    goto/16 :goto_3dc

    .line 266
    :catchall_200
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 267
    throw v1

    .line 250
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 252
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_209
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_21c
    .catchall {:try_start_209 .. :try_end_21c} :catchall_222

    .line 256
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 257
    nop

    .line 258
    goto/16 :goto_3dc

    .line 256
    :catchall_222
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 257
    throw v1

    .line 240
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 242
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_22b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_23e
    .catchall {:try_start_22b .. :try_end_23e} :catchall_244

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 246
    nop

    .line 247
    goto/16 :goto_3dc

    .line 245
    :catchall_244
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 246
    throw v1

    .line 230
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 232
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_24d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/StatusHints;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_25e
    .catchall {:try_start_24d .. :try_end_25e} :catchall_264

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 236
    nop

    .line 237
    goto/16 :goto_3dc

    .line 235
    :catchall_264
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 236
    throw v1

    .line 226
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_269
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_278

    move v1, v2

    :cond_278
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 228
    goto/16 :goto_3dc

    .line 216
    :pswitch_27d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 218
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_281
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_292
    .catchall {:try_start_281 .. :try_end_292} :catchall_298

    .line 221
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 222
    nop

    .line 223
    goto/16 :goto_3dc

    .line 221
    :catchall_298
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 222
    throw v1

    .line 213
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_29d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 214
    goto/16 :goto_3dc

    .line 204
    :pswitch_2ae
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 206
    .local v0, "args2":Lcom/android/internal/os/SomeArgs;
    :try_start_2b2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/RemoteServiceCallback;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2c3
    .catchall {:try_start_2b2 .. :try_end_2c3} :catchall_2c9

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 210
    nop

    .line 211
    goto/16 :goto_3dc

    .line 209
    :catchall_2c9
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 210
    throw v1

    .line 184
    .end local v0    # "args2":Lcom/android/internal/os/SomeArgs;
    :pswitch_2ce
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2d2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2e3
    .catchall {:try_start_2d2 .. :try_end_2e3} :catchall_2e9

    .line 189
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    nop

    .line 191
    goto/16 :goto_3dc

    .line 189
    :catchall_2e9
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    throw v1

    .line 180
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2ee
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 182
    goto/16 :goto_3dc

    .line 169
    :pswitch_2fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 171
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_301
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConference;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_312
    .catchall {:try_start_301 .. :try_end_312} :catchall_318

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    nop

    .line 177
    goto/16 :goto_3dc

    .line 175
    :catchall_318
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    throw v1

    .line 159
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_31d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 161
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_321
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_332
    .catchall {:try_start_321 .. :try_end_332} :catchall_338

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 165
    nop

    .line 166
    goto/16 :goto_3dc

    .line 164
    :catchall_338
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 165
    throw v1

    .line 151
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_33d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 153
    goto/16 :goto_3dc

    .line 147
    :pswitch_34e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_35d

    move v1, v2

    :cond_35d
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 149
    goto/16 :goto_3dc

    .line 144
    :pswitch_362
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 145
    goto :goto_3dc

    .line 134
    :pswitch_370
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 136
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_374
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/DisconnectCause;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_385
    .catchall {:try_start_374 .. :try_end_385} :catchall_38a

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    nop

    .line 141
    goto :goto_3dc

    .line 139
    :catchall_38a
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    throw v1

    .line 128
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_38f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 129
    goto :goto_3dc

    .line 125
    :pswitch_39d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 126
    goto :goto_3dc

    .line 122
    :pswitch_3ab
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 123
    goto :goto_3dc

    .line 96
    :pswitch_3b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 98
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3bd
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConnection;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_3d2
    .catchall {:try_start_3bd .. :try_end_3d2} :catchall_3d7

    .line 104
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 105
    nop

    .line 106
    goto :goto_3dc

    .line 104
    :catchall_3d7
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 105
    throw v1

    .line 377
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_3dc
    return-void

    nop

    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_3b9
        :pswitch_3ab
        :pswitch_39d
        :pswitch_38f
        :pswitch_370
        :pswitch_362
        :pswitch_34e
        :pswitch_33d
        :pswitch_31d
        :pswitch_2fd
        :pswitch_2ee
        :pswitch_2ce
        :pswitch_2ae
        :pswitch_29d
        :pswitch_27d
        :pswitch_269
        :pswitch_249
        :pswitch_227
        :pswitch_205
        :pswitch_1e5
        :pswitch_1c5
        :pswitch_1a6
        :pswitch_18a
        :pswitch_16a
        :pswitch_14a
        :pswitch_126
        :pswitch_115
        :pswitch_106
        :pswitch_e0
        :pswitch_d1
        :pswitch_c0
        :pswitch_b1
        :pswitch_a2
        :pswitch_82
        :pswitch_77
        :pswitch_4f
        :pswitch_2b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 89
    goto :goto_5

    .line 88
    :catch_4
    move-exception v0

    .line 90
    :goto_5
    return-void
.end method
