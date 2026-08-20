.class public Lcom/att/iqi/libs/IQIServiceBroker$6;
.super Landroid/os/Handler;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 230
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received by dispatcher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 231
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e2

    .line 270
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_e0

    const-string p0, "Unknown message"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 261
    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_3d

    .line 262
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mresumePackage(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V

    goto/16 :goto_e0

    .line 264
    :cond_3d
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_e0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a malformed resume package msg with an unknownobject type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_54

    const-string p1, "null"

    goto :goto_5c

    :cond_54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_5c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 258
    :pswitch_68
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$msuspendPackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    goto/16 :goto_e0

    .line 253
    :pswitch_6f
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_7a

    const-string p1, "Timed out waiting for packages to be uploaded"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 254
    :cond_7a
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    goto :goto_e0

    .line 241
    :pswitch_80
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    goto :goto_e0

    .line 233
    :pswitch_86
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->checkPkgValidity()Z

    move-result p1

    if-eqz p1, :cond_ab

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 234
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 234
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e0

    .line 237
    :cond_ab
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_e0

    const-string p0, "Bad or disabled package"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_e0

    .line 244
    :pswitch_b7
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mshouldConnect(Lcom/att/iqi/libs/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_d7

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, "Trying to connect with empty bundle"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 249
    :cond_d7
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V

    :cond_e0
    :goto_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_86
        :pswitch_80
        :pswitch_6f
        :pswitch_68
        :pswitch_2e
    .end packed-switch
.end method
