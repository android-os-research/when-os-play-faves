.class public Lcom/android/server/usb/UsbService$2;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;->setPortRoles(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    .line 877
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 881
    iget-object p0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->setNextUsbModeToDefault()V

    :cond_11
    return-void
.end method
