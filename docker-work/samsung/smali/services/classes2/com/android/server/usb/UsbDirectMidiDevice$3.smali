.class public Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

.field public final synthetic val$portFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V
    .registers 7

    .line 465
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    iput p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$portFinal:I

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "UsbDirectMidiDevice"

    .line 470
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo p0, "output thread interrupted"

    .line 471
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_69

    goto :goto_70

    .line 476
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1a} :catch_69

    if-nez v1, :cond_22

    :try_start_1c
    const-string p0, "event is null"

    .line 482
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 492
    :cond_22
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 495
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object v3, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v2

    goto :goto_53

    .line 498
    :cond_35
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v2

    if-nez v2, :cond_43

    const-string p0, "mUsbMidiPacketConverter is null"

    .line 499
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 502
    :cond_43
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    iget v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$portFinal:I

    .line 503
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usb/UsbMidiPacketConverter;->rawMidiToUsbMidi([BII)[B

    move-result-object v2

    .line 512
    :goto_53
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    array-length v5, v2

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 515
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v2, v1}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_2

    :catch_63
    const-string p0, "event scheduler interrupted"

    .line 478
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_68} :catch_69

    goto :goto_70

    :catch_69
    move-exception p0

    const-string/jumbo v1, "output thread: "

    .line 518
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_70
    const-string/jumbo p0, "output thread exit"

    .line 520
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
