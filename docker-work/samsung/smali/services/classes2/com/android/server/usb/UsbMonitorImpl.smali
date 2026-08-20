.class public Lcom/android/server/usb/UsbMonitorImpl;
.super Ljava/lang/Object;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MSG_SYSTEM_READY:I = 0x0

.field public static final MSG_UPDATE_USB_STATS:I = 0x1

.field public static final PATH_USB_STATS_LOG:Ljava/lang/String; = "/efs/usb_hw_param/usb_hw_param.log"

.field public static final PATH_USB_STATS_SYSFS:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/usb_hw_param"

.field public static final TAG:Ljava/lang/String; = "UsbStatsMonitor"

.field public static final UPDATE_DELAY:I = 0xea60


# instance fields
.field public final mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;


# direct methods
.method public static bridge synthetic -$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbMonitorImpl;->readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;-><init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    if-eqz p0, :cond_7

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->dump(Ljava/io/PrintWriter;)V

    :cond_7
    return-void
.end method

.method public final readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbStatsMonitor"

    invoke-static {v0, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    const-string p0, "Couldn\'t close stream"

    const-string v0, "UsbStatsMonitor"

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    if-nez p2, :cond_d

    goto :goto_4f

    :cond_d
    const/4 v1, 0x0

    .line 133
    :try_start_e
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_26
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 134
    :try_start_13
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    .line 139
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_44

    .line 141
    :catch_1a
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catchall_1e
    move-exception p1

    move-object v1, v2

    goto :goto_45

    :catch_21
    move-exception p2

    move-object v1, v2

    goto :goto_27

    :catchall_24
    move-exception p1

    goto :goto_45

    :catch_26
    move-exception p2

    .line 136
    :goto_27
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_24

    if-eqz v1, :cond_44

    .line 139
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_1a

    :cond_44
    :goto_44
    return-void

    :goto_45
    if-eqz v1, :cond_4e

    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4e

    .line 141
    :catch_4b
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4e
    :goto_4e
    throw p1

    :cond_4f
    :goto_4f
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
