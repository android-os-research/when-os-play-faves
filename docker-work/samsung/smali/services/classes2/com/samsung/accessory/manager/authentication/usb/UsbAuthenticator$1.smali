.class public Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;
.super Ljava/lang/Object;
.source "UsbAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onAuthenticationStarted()V
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

    .line 95
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 98
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-boolean v0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$fgetmUsbAuthHandler(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 101
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 102
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const-wide/16 v0, 0x2710

    invoke-static {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$mscheduleAuthenticationTimeOuts(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;J)V

    :cond_29
    return-void
.end method
