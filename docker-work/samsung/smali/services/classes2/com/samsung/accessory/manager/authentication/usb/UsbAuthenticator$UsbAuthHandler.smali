.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
.super Landroid/os/Handler;
.source "UsbAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsbAuthHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V
    .registers 4

    .line 134
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 140
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_98

    .line 154
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmUsbAuthHandler(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4a

    .line 156
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V

    .line 157
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "authentication is timed out!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4a
    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne v0, v3, :cond_64

    .line 165
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    move v0, v2

    goto :goto_65

    :cond_64
    move v0, v4

    .line 169
    :goto_65
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget v5, v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    iget v6, v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    if-eq v5, v6, :cond_79

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_77

    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I

    move-result p1

    if-gt p1, v2, :cond_79

    :cond_77
    if-eqz v0, :cond_98

    .line 171
    :cond_79
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$msetUsbVerified(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 172
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_98

    .line 146
    :pswitch_87
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Message;)V

    goto :goto_98

    .line 149
    :pswitch_8d
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    goto :goto_98

    .line 143
    :pswitch_93
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    :cond_98
    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_93
        :pswitch_8d
        :pswitch_87
        :pswitch_4a
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method
