.class public Lcom/android/server/usb/UsbDirectMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 8

    .line 104
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_1c

    .line 110
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ge v1, p1, :cond_2c

    .line 116
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    if-lez v0, :cond_29

    .line 117
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 121
    :cond_2c
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_33
    const-string p2, "UsbDirectMidiDevice"

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numOpenPorts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServerAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_7d

    .line 124
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-nez p2, :cond_7d

    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 125
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    goto :goto_8c

    :cond_7d
    if-nez v3, :cond_8c

    .line 126
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 127
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    .line 129
    :cond_8c
    :goto_8c
    monitor-exit p1

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit p1
    :try_end_90
    .catchall {:try_start_33 .. :try_end_90} :catchall_8e

    throw p0
.end method
