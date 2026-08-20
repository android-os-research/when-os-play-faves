.class public Lcom/android/server/usb/UsbUI$3;
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

    .line 233
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPortReceiver ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbUI"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    const-string/jumbo v1, "portStatus"

    .line 238
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    .line 239
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fputmSourcePower(Lcom/android/server/usb/UsbUI;Z)V

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldSourcePower="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSourcePower="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p2

    if-eq p1, p2, :cond_73

    .line 242
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmIsEmergencyMode(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 243
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    :cond_73
    return-void
.end method
