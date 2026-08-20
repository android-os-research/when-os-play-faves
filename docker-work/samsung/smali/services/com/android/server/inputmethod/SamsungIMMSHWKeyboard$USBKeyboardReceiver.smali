.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "USBKeyboardReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device"

    .line 143
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    if-nez p2, :cond_11

    move v1, v0

    goto :goto_15

    .line 144
    :cond_11
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    .line 145
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() USBK interfaceCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerServicePhysicalKey"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_2d
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const/4 v6, 0x1

    if-ge v2, v1, :cond_dc

    .line 147
    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    if-nez v7, :cond_51

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive() usbInterface is null, index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 153
    :cond_51
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    .line 154
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d8

    if-ne v7, v6, :cond_d8

    .line 157
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 158
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    if-gez p2, :cond_90

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ACTION_USB_DEVICE_ATTACHED] change mUSBKeyboardCount "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--> 0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 162
    :cond_90
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    goto :goto_dc

    .line 163
    :cond_9b
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_dc

    .line 164
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    if-ge p2, v6, :cond_cd

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ACTION_USB_DEVICE_DETACHED] change mUSBKeyboardCount "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--> 1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 168
    :cond_cd
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    goto :goto_dc

    :cond_d8
    :goto_d8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    .line 175
    :cond_dc
    :goto_dc
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    if-eq p2, v1, :cond_eb

    move v0, v6

    .line 178
    :cond_eb
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputmUSBKeyboardCountOld(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_128

    if-eqz v0, :cond_161

    .line 182
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    or-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() USBK Connect C : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_161

    .line 186
    :cond_128
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_161

    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p1

    if-nez p1, :cond_161

    .line 188
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    and-int/lit8 p2, p2, -0x5

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fputkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() USBK DisConnect C : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetmUSBKeyboardCount(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mupdateBrightnessMode(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 192
    :cond_161
    :goto_161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive() keyboardState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-static {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$fgetkeyboardState(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
