.class public Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;
.super Ljava/lang/Object;
.source "UsbAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

.field public final synthetic val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 127
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStarting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;->val$session:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object p0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    return-void
.end method
