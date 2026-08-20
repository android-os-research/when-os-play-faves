.class Lcom/android/internal/telephony/SemDeviceStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SemDeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemDeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V

    const-string v0, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v1, 0x800000

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_35

    const-wide/16 v1, 0x200

    const-string p1, "state"

    .line 134
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_116

    goto/16 :goto_121

    :cond_35
    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-wide/16 v0, 0x400

    const-string p1, "sec_plug_type"

    .line 137
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_50

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4e

    goto :goto_50

    :cond_4e
    move p1, v6

    goto :goto_51

    :cond_50
    :goto_50
    move p1, v5

    :goto_51
    if-eqz p1, :cond_56

    move-wide v1, v0

    goto/16 :goto_121

    :cond_56
    const-wide/32 p1, 0x20400

    move-wide v1, p1

    goto/16 :goto_116

    :cond_5c
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string p1, "misc_event"

    .line 148
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v5, v6

    .line 150
    :goto_70
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result p1

    if-eq p1, v5, :cond_115

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fputmIsDirectMode(Lcom/android/internal/telephony/SemDeviceStateMonitor;Z)V

    .line 152
    sget-boolean p1, Lcom/android/internal/telephony/SemTelephonyUtils;->IS_EXYNOS:Z

    if-eqz p1, :cond_84

    const-wide/16 p1, 0x40

    goto :goto_86

    :cond_84
    const-wide/16 p1, 0x10

    .line 153
    :goto_86
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result v0

    move-wide v1, p1

    move v5, v0

    goto/16 :goto_121

    :cond_90
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string p1, "configured"

    .line 156
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mcheckUsbVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result p1

    if-eqz p1, :cond_115

    const-wide/32 p1, 0x20000

    move-wide v1, p1

    goto/16 :goto_121

    :cond_ae
    const-string v0, "android.samsung.media.action.receiver_sar"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-wide/32 v1, 0x8000

    const-string p1, "android.samsung.media.extra.receiver"

    .line 164
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_121

    :cond_c0
    const-string v0, "com.samsung.UsbOtgCableConnection"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-wide/16 v1, 0x800

    const-string p1, "Connect"

    .line 167
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "On"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_121

    const-wide/32 v1, 0x400800

    goto :goto_121

    :cond_dc
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    goto :goto_118

    :cond_ed
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-wide/32 v1, 0x100000

    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 178
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x72

    if-ne p1, p2, :cond_116

    goto :goto_121

    :cond_103
    const-string p2, "com.sec.android.app.camera.ACTION_CAMERA_START"

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10c

    goto :goto_121

    :cond_10c
    const-string p2, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_115

    goto :goto_116

    :cond_115
    move-wide v1, v3

    :cond_116
    :goto_116
    move v5, v6

    goto :goto_121

    :cond_118
    :goto_118
    const-wide/32 v1, 0x400000

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mcheckOtgVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result v5

    :cond_121
    :goto_121
    cmp-long p1, v1, v3

    if-lez p1, :cond_13d

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    const/16 p1, 0x64

    new-instance p2, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13d
    return-void
.end method
