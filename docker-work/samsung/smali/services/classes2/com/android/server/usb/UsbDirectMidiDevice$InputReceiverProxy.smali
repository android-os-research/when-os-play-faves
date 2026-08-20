.class public final Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbDirectMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputReceiverProxy"
.end annotation


# instance fields
.field public mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_7

    .line 158
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->flush()V

    :cond_7
    return-void
.end method

.method public onSend([BIIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz v0, :cond_b

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_b
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method
