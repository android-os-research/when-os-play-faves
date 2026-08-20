.class public Lcom/android/server/usb/UsbHostManager$2;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .registers 2

    .line 772
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .line 775
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUEvent(USB Control): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TYPE"

    .line 777
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE"

    .line 778
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usbaudio"

    .line 780
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "PATH"

    .line 781
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CARDNUM"

    .line 782
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ADD"

    .line 784
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 785
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostManager;->-$$Nest$fgetmUsbAlsaManager(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object p0

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 785
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAddedBundle(Ljava/lang/String;I)V

    goto :goto_65

    :cond_50
    const-string v2, "REMOVE"

    .line 787
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 788
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostManager;->-$$Nest$fgetmUsbAlsaManager(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object p0

    .line 789
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 788
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemovedBundle(Ljava/lang/String;I)V

    :cond_65
    :goto_65
    return-void
.end method
