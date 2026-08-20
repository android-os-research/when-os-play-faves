.class public final Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;
.super Landroid/os/Handler;
.source "WirelessChargerAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WirelessChargerAuthHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Looper;)V
    .registers 4

    .line 131
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 137
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b2

    .line 151
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fgetmWirelessChargerAuthHandler(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4a

    .line 153
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V

    .line 154
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "authentication is timed out!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_4a
    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    const/4 v0, 0x0

    .line 162
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_63

    .line 163
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    move v0, v2

    .line 167
    :cond_63
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v4, v3, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    iget v5, v3, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_DISCONNECTED:I

    const/16 v6, 0x65

    const/4 v7, 0x0

    if-ne v4, v5, :cond_72

    .line 168
    invoke-static {v3, v6, v7}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$msetWirelessChargerVerified(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_91

    .line 169
    :cond_72
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_7c

    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)I

    move-result p1

    if-gt p1, v2, :cond_7e

    :cond_7c
    if-eqz v0, :cond_91

    .line 170
    :cond_7e
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v0, p1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8e

    if-eq v0, v6, :cond_88

    goto :goto_8e

    :cond_88
    const/16 v0, 0x66

    .line 173
    invoke-static {p1, v0, v7}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$msetWirelessChargerVerified(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_91

    .line 171
    :cond_8e
    :goto_8e
    invoke-static {p1, v0, v7}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$msetWirelessChargerVerified(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 175
    :cond_91
    :goto_91
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_b2

    .line 143
    :pswitch_99
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Message;)V

    goto :goto_b2

    .line 146
    :pswitch_9f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Z)V

    goto :goto_b2

    .line 140
    :pswitch_ad
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->-$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V

    :goto_b2
    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_9f
        :pswitch_99
        :pswitch_4a
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method
