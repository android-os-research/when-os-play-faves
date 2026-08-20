.class public Lcom/android/server/vr/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# static fields
.field public static final DISPLAY_PORT_STATE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field public static final TAG:Ljava/lang/String; = "DeviceController"

.field public static final USB_POWER_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/hmd_power"


# instance fields
.field public mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field public mService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/vr/DeviceController;->mService:Lcom/android/server/vr/XrManagerService;

    .line 24
    new-instance p1, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {p1}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/DeviceController;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "DeviceController:"

    .line 88
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayPortState(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 57
    :cond_3
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/DeviceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vr/DeviceController$1;-><init>(Lcom/android/server/vr/DeviceController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setThreadAffinity(I[I)I
    .registers 3

    .line 28
    iget-object p0, p0, Lcom/android/server/vr/DeviceController;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->setAffinity(I[I)I

    move-result p0

    return p0
.end method

.method public setThreadGroup(II)Z
    .registers 3

    .line 34
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    goto :goto_10

    :catch_5
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public setThreadScheduler(III)Z
    .registers 4

    .line 45
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    goto :goto_10

    :catch_5
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public setUsbPowerState(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/DeviceController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vr/DeviceController$2;-><init>(Lcom/android/server/vr/DeviceController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
