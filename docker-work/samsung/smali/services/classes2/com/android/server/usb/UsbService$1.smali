.class public Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
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

    .line 235
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 241
    iget-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p1}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 242
    iget-object p0, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->updateUserRestrictions()V

    :cond_1d
    return-void
.end method
