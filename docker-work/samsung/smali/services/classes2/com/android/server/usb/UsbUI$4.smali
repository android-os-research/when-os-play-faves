.class public Lcom/android/server/usb/UsbUI$4;
.super Landroid/content/BroadcastReceiver;
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

    .line 249
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 251
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    const-string v1, "misc_event"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_14

    const/4 v2, 0x1

    :cond_14
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmIsHiccupState(Lcom/android/server/usb/UsbUI;Z)V

    .line 255
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z

    move-result p2

    if-eq p1, p2, :cond_53

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oldHiccupState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsHiccupState="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbUI"

    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    if-eqz p1, :cond_4e

    const-string p1, "CD"

    goto :goto_50

    :cond_4e
    const-string p1, "CR"

    :goto_50
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mloggingUsbWetDetection(Lcom/android/server/usb/UsbUI;Ljava/lang/String;)V

    :cond_53
    return-void
.end method
