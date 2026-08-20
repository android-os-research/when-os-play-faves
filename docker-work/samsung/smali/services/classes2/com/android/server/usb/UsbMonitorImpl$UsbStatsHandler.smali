.class public final Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
.super Landroid/os/Handler;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsbStatsHandler"
.end annotation


# instance fields
.field public mCurrentUsbStats:Ljava/lang/String;

.field public final mLogFile:Ljava/io/File;

.field public final mSysFs:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/usb/UsbMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 45
    new-instance p1, Ljava/io/File;

    const-string p2, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    const-string p1, "none"

    .line 51
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current USB Stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishBoot()V
    .registers 5

    const-string v0, "UsbStatsMonitor"

    const-string v1, "finishBoot"

    .line 75
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    const-string p0, "No sysfs node"

    .line 77
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_15
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 83
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4a

    .line 85
    :cond_2b
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 87
    :try_start_34
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 88
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_45
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_4e

    .line 98
    :goto_4a
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    return-void

    :catch_4e
    move-exception p0

    const-string v1, "Couldn\'t create log file"

    .line 92
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsbStatsMonitor"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 67
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    goto :goto_27

    .line 64
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->finishBoot()V

    :goto_27
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .registers 4

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateUsbStats()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 103
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 104
    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :cond_1b
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    const-string v1, "UsbStatsMonitor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-wide/32 v1, 0xea60

    .line 109
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->sendMessageDelayed(IJ)V

    return-void
.end method
