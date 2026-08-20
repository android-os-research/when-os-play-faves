.class public Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4

    .line 217
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 224
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 225
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_7b
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_72

    .line 226
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v1

    if-nez v1, :cond_19

    monitor-exit v9

    goto :goto_83

    :cond_19
    const/4 v10, 0x0

    move v11, v10

    .line 229
    :goto_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v11, v1, :cond_63

    .line 230
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v11

    .line 231
    iget-short v2, v1, Landroid/system/StructPollfd;->revents:S

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    sget v4, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v3, v4

    and-int/2addr v3, v2

    if-eqz v3, :cond_37

    goto :goto_63

    .line 234
    :cond_37
    sget v3, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_60

    .line 236
    iput-short v10, v1, Landroid/system/StructPollfd;->revents:S

    .line 237
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_4a

    goto :goto_63

    .line 242
    :cond_4a
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v11

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 243
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v11

    const/4 v3, 0x0

    move-object v2, v0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_60
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 246
    :cond_63
    :goto_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_f .. :try_end_64} :catchall_6f

    .line 249
    :try_start_64
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_7b
    .catch Landroid/system/ErrnoException; {:try_start_64 .. :try_end_6e} :catch_72

    goto :goto_4

    :catchall_6f
    move-exception p0

    .line 246
    :try_start_70
    monitor-exit v9
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw p0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_72} :catch_7b
    .catch Landroid/system/ErrnoException; {:try_start_71 .. :try_end_72} :catch_72

    :catch_72
    const-string p0, "UsbMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    .line 254
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catch_7b
    const-string p0, "UsbMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    .line 252
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    const-string p0, "UsbMidiDevice"

    const-string v0, "input thread exit"

    .line 256
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
