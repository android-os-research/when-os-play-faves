.class Lcom/android/internal/telephony/DeviceStateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_e8

    goto :goto_54

    :sswitch_29
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_54

    :cond_32
    move v4, v2

    goto :goto_54

    :sswitch_34
    const-string v0, "android.os.action.CHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_54

    :cond_3d
    const/4 v4, 0x2

    goto :goto_54

    :sswitch_3f
    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_54

    :cond_48
    move v4, v1

    goto :goto_54

    :sswitch_4a
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    move v4, v3

    :goto_54
    const-string p1, "on"

    const-string v0, "off"

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_fa

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected broadcast intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    return-void

    .line 235
    :pswitch_73
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$misPowerSaveModeOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result v2

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power Save mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_92

    goto :goto_93

    :cond_92
    move-object p1, v0

    :goto_93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    goto :goto_e2

    .line 240
    :pswitch_9e
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 241
    iput v1, p2, Landroid/os/Message;->arg1:I

    goto :goto_e2

    .line 244
    :pswitch_a7
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 245
    iput v3, p2, Landroid/os/Message;->arg1:I

    goto :goto_e2

    :pswitch_b0
    const-string v2, "tetherArray"

    .line 248
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_bf

    .line 252
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_bf

    move v3, v1

    .line 253
    :cond_bf
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_ce

    goto :goto_cf

    :cond_ce
    move-object p1, v0

    :goto_cf
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 254
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 255
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 261
    :goto_e2
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :sswitch_data_e8
    .sparse-switch
        -0x6898c375 -> :sswitch_4a
        -0x3465cce -> :sswitch_3f
        0x388694fe -> :sswitch_34
        0x6a0dd473 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_a7
        :pswitch_9e
        :pswitch_73
    .end packed-switch
.end method
