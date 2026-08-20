.class public Lcom/android/server/usb/UsbUI$9;
.super Landroid/os/UEventObserver;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10

    const-string v0, "SWITCH_STATE"

    .line 463
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCIC"

    .line 464
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    return-void

    .line 470
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(USB CCIC): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UsbUI"

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "115"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 474
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const v0, 0x1040eae

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V

    .line 475
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v3, 0x6c

    const v4, 0x1040eaf

    const v5, 0x1040eae

    const-wide/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/android/server/usb/UsbUI;->-$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_57

    :cond_48
    const-string p1, "0"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 480
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v0, 0x6c

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V

    .line 483
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    const-string v0, "WATER"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 485
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V

    goto :goto_7a

    :cond_6c
    const-string v0, "DRY"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 487
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V

    .line 490
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result v0

    if-eq v0, p1, :cond_8b

    .line 491
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyUsbWetDetection(Lcom/android/server/usb/UsbUI;Z)V

    :cond_8b
    return-void
.end method
