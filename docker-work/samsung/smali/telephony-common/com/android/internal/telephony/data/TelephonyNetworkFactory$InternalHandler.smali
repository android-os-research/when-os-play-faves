.class Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .registers 3

    .line 215
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_82

    goto :goto_81

    .line 249
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_network_request"

    .line 250
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/NetworkRequest;

    const-string v1, "extra_success"

    .line 252
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v1, "extra_transport_type"

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "extra_handover_failure_fallback"

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$fgetmPendingHandovers(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;

    if-eqz v7, :cond_50

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monDataHandoverSetupCompleted(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/net/NetworkRequest;ZIZLcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V

    goto :goto_81

    .line 263
    :cond_50
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    const-string p1, "Handover completed but cannot find handover entry!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    goto :goto_81

    .line 242
    :pswitch_58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 243
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->apnType:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->targetTransport:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monDataHandoverNeeded(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;)V

    goto :goto_81

    .line 238
    :pswitch_6a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monReleaseNetworkFor(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_81

    .line 234
    :pswitch_70
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monNeedNetworkFor(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_81

    .line 230
    :pswitch_76
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monSubIdChange(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)V

    goto :goto_81

    .line 226
    :pswitch_7c
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkFactory;

    invoke-static {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;->-$$Nest$monActivePhoneSwitch(Lcom/android/internal/telephony/data/TelephonyNetworkFactory;)V

    :goto_81
    return-void

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_58
        :pswitch_1c
    .end packed-switch
.end method
