.class Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
.super Landroid/os/Handler;
.source "PublishControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishHandler"
.end annotation


# static fields
.field private static blacklist EVENT_DESCRIPTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MSG_CARRIER_CONFIG_CHANGED:I = 0x4

.field private static final blacklist MSG_DESTROYED:I = 0x3

.field private static final blacklist MSG_IMS_UNREGISTERED:I = 0x10

.field private static final blacklist MSG_NOTIFY_CURRENT_PUBLISH_STATE:I = 0x7

.field private static final blacklist MSG_PUBLISH_SENT:I = 0xe

.field private static final blacklist MSG_PUBLISH_STATE_CHANGED:I = 0x6

.field private static final blacklist MSG_PUBLISH_UPDATED:I = 0xf

.field private static final blacklist MSG_RCS_CAPABILITIES_CHANGED:I = 0x5

.field private static final blacklist MSG_RCS_CONNECTED:I = 0x1

.field private static final blacklist MSG_RCS_DISCONNECTED:I = 0x2

.field private static final blacklist MSG_REQUEST_CANCELED:I = 0xb

.field private static final blacklist MSG_REQUEST_CMD_ERROR:I = 0x9

.field private static final blacklist MSG_REQUEST_NETWORK_RESPONSE:I = 0xa

.field private static final blacklist MSG_REQUEST_PUBLISH:I = 0x8

.field private static final blacklist MSG_RESET_DEVICE_STATE:I = 0xc

.field private static final blacklist MSG_UNPUBLISHED:I = 0xd


# instance fields
.field private final blacklist mPublishControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    .line 843
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_DISCONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DESTROYED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CARRIER_CONFIG_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CAPABILITIES_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PUBLISH_STATE_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFY_PUBLISH_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_PUBLISH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CMD_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_NETWORK_RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CANCELED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESET_DEVICE_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_UNPUBLISHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_SENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_UPDATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_IMS_UNREGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/os/Looper;)V
    .registers 4
    .param p1, "publishController"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 479
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    .line 481
    return-void
.end method


# virtual methods
.method public blacklist clearRequestCanceledTimer()V
    .registers 3

    .line 802
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 803
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 804
    return-void

    .line 806
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 807
    :cond_12
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 808
    return-void
.end method

.method public blacklist clearResetDeviceStateTimer()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 825
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 826
    return-void

    .line 828
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 829
    :cond_12
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 830
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 485
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 486
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 487
    return-void

    .line 489
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 490
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 491
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_140

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    goto/16 :goto_11a

    .line 585
    :pswitch_55
    const/4 v1, 0x2

    .line 586
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    .line 585
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 587
    goto/16 :goto_11a

    .line 573
    :pswitch_5f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 574
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 575
    .local v2, "reasonCode":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 576
    .local v3, "reasonPhrase":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 577
    .local v4, "reasonHeaderCause":I
    iget-object v5, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 578
    .local v5, "reasonHeaderText":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 579
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishUpdatedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 581
    goto/16 :goto_11a

    .line 569
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "reasonCode":I
    .end local v3    # "reasonPhrase":Ljava/lang/String;
    .end local v4    # "reasonHeaderCause":I
    .end local v5    # "reasonHeaderText":Ljava/lang/String;
    :pswitch_83
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishSentMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 570
    goto/16 :goto_11a

    .line 560
    :pswitch_88
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 561
    .restart local v1    # "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 562
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 563
    .local v3, "updatedTimestamp":Ljava/time/Instant;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 564
    invoke-static {v0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 565
    goto/16 :goto_11a

    .line 556
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    :pswitch_a0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleResetDeviceStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 557
    goto/16 :goto_11a

    .line 551
    :pswitch_a5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 552
    .local v1, "taskId":J
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestCanceledMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;J)V

    .line 553
    goto :goto_11a

    .line 546
    .end local v1    # "taskId":J
    :pswitch_b1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 547
    .local v1, "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 548
    goto :goto_11a

    .line 541
    .end local v1    # "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_bd
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 542
    .local v1, "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 543
    goto :goto_11a

    .line 536
    .end local v1    # "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_c9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 537
    .local v1, "type":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestPublishMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 538
    goto :goto_11a

    .line 527
    .end local v1    # "type":I
    :pswitch_cf
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 528
    .local v1, "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    const/4 v2, 0x0

    .line 529
    .local v2, "supportPublishingState":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_da

    .line 530
    const/4 v2, 0x1

    .line 532
    :cond_da
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleNotifyCurrentPublishStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 533
    goto :goto_11a

    .line 517
    .end local v1    # "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .end local v2    # "supportPublishingState":Z
    :pswitch_de
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 518
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 519
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 520
    .restart local v3    # "updatedTimestamp":Ljava/time/Instant;
    iget-object v4, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "pidfXml":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 522
    invoke-static {v0, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishStateChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;Ljava/lang/String;)V

    .line 524
    goto :goto_11a

    .line 512
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    .end local v4    # "pidfXml":Ljava/lang/String;
    :pswitch_f9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 513
    .local v1, "RcsCapabilities":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsCapabilitiesChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 514
    goto :goto_11a

    .line 508
    .end local v1    # "RcsCapabilities":I
    :pswitch_ff
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleCarrierConfigChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 509
    goto :goto_11a

    .line 504
    :pswitch_103
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleDestroyedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 505
    goto :goto_11a

    .line 500
    :pswitch_107
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsDisconnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 501
    goto :goto_11a

    .line 493
    :pswitch_10b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 494
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/ims/RcsFeatureManager;

    .line 495
    .local v2, "manager":Lcom/android/ims/RcsFeatureManager;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 496
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsConnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Lcom/android/ims/RcsFeatureManager;)V

    .line 497
    nop

    .line 593
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "manager":Lcom/android/ims/RcsFeatureManager;
    :goto_11a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 594
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_ff
        :pswitch_f9
        :pswitch_de
        :pswitch_cf
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
        :pswitch_a0
        :pswitch_88
        :pswitch_83
        :pswitch_5f
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public blacklist sendCarrierConfigChangedMsg()V
    .registers 4

    .line 637
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 638
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 639
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 641
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 642
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 643
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    return-void
.end method

.method public blacklist sendDestroyedMsg()V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 628
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 629
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 631
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 633
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 634
    return-void
.end method

.method public blacklist sendImsUnregisteredMessage()V
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 834
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 835
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 836
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 837
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    return-void
.end method

.method public blacklist sendNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 718
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 719
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 720
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 722
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 723
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 724
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 725
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    return-void
.end method

.method public blacklist sendPublishMessage(I)V
    .registers 4
    .param p1, "type"    # I

    .line 742
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(IJ)V

    .line 743
    return-void
.end method

.method public blacklist sendPublishMessage(IJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "delay"    # J

    .line 746
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 747
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 748
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 752
    :cond_12
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$misPresencePublishEnabled(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPublishMessage: disallowed type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 754
    return-void

    .line 757
    :cond_32
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 758
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 759
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 760
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 761
    return-void
.end method

.method public blacklist sendPublishSentMessage()V
    .registers 4

    .line 733
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 734
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 735
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 736
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 737
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 738
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    return-void
.end method

.method public blacklist sendPublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V
    .registers 8
    .param p1, "publishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 663
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 664
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 666
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 667
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 668
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 669
    iput-object p3, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 671
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 672
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 673
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    return-void
.end method

.method public blacklist sendPublishUpdatedMessage(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 699
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 700
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 702
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 703
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 704
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 705
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 706
    iput-object p4, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 708
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0xf

    iput v3, v2, Landroid/os/Message;->what:I

    .line 709
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 710
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    return-void
.end method

.method public blacklist sendRcsCapabilitiesStatusChangedMsg(I)V
    .registers 5
    .param p1, "capabilities"    # I

    .line 647
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 648
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 649
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 651
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 652
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 653
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 655
    return-void
.end method

.method public blacklist sendRcsConnectedMsg(Lcom/android/ims/RcsFeatureManager;)V
    .registers 6
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 604
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 605
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 606
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 608
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 609
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 610
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 611
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 612
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    return-void
.end method

.method public blacklist sendRcsDisconnectedMsg()V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 618
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 619
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 621
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 622
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 623
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    return-void
.end method

.method public blacklist sendRequestCanceledTimerMessage(JJ)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "delay"    # J

    .line 788
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 789
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 790
    return-void

    .line 792
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 793
    :cond_12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(ILjava/lang/Object;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 796
    .local v1, "message":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 797
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 799
    return-void
.end method

.method public blacklist sendRequestCommandErrorMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 764
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 765
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 766
    return-void

    .line 768
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 769
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 770
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 771
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 772
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method

.method public blacklist sendRequestNetworkRespMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 776
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 777
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 778
    return-void

    .line 780
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 781
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 782
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 783
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    return-void
.end method

.method public blacklist sendResetDeviceStateTimerMessage(J)V
    .registers 8
    .param p1, "resetAfterSec"    # J

    .line 811
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 812
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 813
    return-void

    .line 815
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 817
    :cond_12
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 818
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 819
    .local v2, "message":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 820
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 821
    return-void
.end method

.method public blacklist sendUnpublishedMessage(I)V
    .registers 6
    .param p1, "publishState"    # I

    .line 680
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 681
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 682
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 684
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 685
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 686
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 687
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 688
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0xd

    iput v3, v2, Landroid/os/Message;->what:I

    .line 689
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    return-void
.end method
