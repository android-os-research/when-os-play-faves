.class public Lcom/android/server/usb/UsbDirectMidiDevice$2;
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

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field public final synthetic val$portFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .registers 7

    .line 374
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    iput p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portFinal:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "UsbDirectMidiDevice"

    .line 377
    new-instance v1, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 379
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 380
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    new-array v2, v2, [B

    .line 382
    :cond_16
    :goto_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string p0, "input thread interrupted"

    .line 383
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 387
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 388
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 389
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string p0, "Cannot queue request"

    .line 390
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 393
    :cond_3a
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v4

    if-eq v4, v1, :cond_48

    const-string p0, "Unexpected response"

    .line 395
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 398
    :cond_48
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lez v3, :cond_16

    .line 406
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 409
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v4, v2, v3}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v3

    :goto_5c
    move-object v4, v3

    goto :goto_77

    .line 412
    :cond_5e
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v4

    if-nez v4, :cond_6c

    const-string p0, "mUsbMidiPacketConverter is null"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 416
    :cond_6c
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v4

    .line 417
    invoke-virtual {v4, v2, v3}, Lcom/android/server/usb/UsbMidiPacketConverter;->usbMidiToRawMidi([BI)[B

    move-result-object v3

    goto :goto_5c

    .line 426
    :goto_77
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    if-eqz v3, :cond_88

    iget v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portFinal:I

    aget-object v3, v3, v5

    if-nez v3, :cond_82

    goto :goto_88

    :cond_82
    const/4 v5, 0x0

    .line 431
    array-length v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_16

    :cond_88
    :goto_88
    const-string/jumbo p0, "outputReceivers is null"

    .line 428
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8e} :catch_98
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_8e} :catch_91
    .catchall {:try_start_7 .. :try_end_8e} :catchall_8f

    goto :goto_9e

    :catchall_8f
    move-exception p0

    goto :goto_a7

    :catch_91
    move-exception p0

    :try_start_92
    const-string v2, "input thread: "

    .line 438
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    :catch_98
    const-string/jumbo p0, "reader thread exiting"

    .line 436
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_8f

    .line 440
    :goto_9e
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    const-string p0, "input thread exit"

    .line 442
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 440
    :goto_a7
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 441
    throw p0
.end method
