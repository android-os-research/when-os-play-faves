.class public Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;
.super Ljava/lang/Object;
.source "UsbAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 113
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v1, 0x0

    .line 115
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fputmRetryCounterWhenBusy(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmUsbAuthHandler(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 117
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZJ)V

    :cond_27
    return-void
.end method
