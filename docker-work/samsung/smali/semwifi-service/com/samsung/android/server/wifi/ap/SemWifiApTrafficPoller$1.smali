.class Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApTrafficPoller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v2, 0x3e8

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_124

    const-string p1, "wifi_state"

    const/16 v6, 0xe

    .line 110
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    const/16 v7, 0xb

    if-ne p1, p2, :cond_c9

    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    if-nez p1, :cond_4e

    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/content/Context;

    move-result-object p2

    const-string v2, "sem_wifi"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/wifi/SemWifiManager;)V

    .line 115
    :cond_4e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPcieIrqAffinity -> DefaultMode, Reason: - Turned on hotspot  check needbooster: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mApInterfaceName : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$msetPcieIrqAffinity(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_kdi_selection_ant"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_aa

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v7, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    :cond_aa
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->removeMessages(I)V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1b7

    :cond_c9
    if-eq p1, v7, :cond_cd

    if-ne p1, v6, :cond_1b7

    .line 130
    :cond_cd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPcieIrqAffinity -> DefaultMode, Reason: - Turned off hotspot  check needbooster: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$msetPcieIrqAffinity(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmCurrentL1ssModeValue(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputpreTxBytesInterface1(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;J)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->removeMessages(I)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p0

    invoke-virtual {p0, p2, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1b7

    .line 142
    :cond_124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v6, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b7

    const-string p1, "STA_COUNT"

    .line 143
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_17a

    .line 145
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-nez p1, :cond_1b7

    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetisSupportAffinityBootster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_15f

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)I

    move-result p1

    if-eq p1, v0, :cond_15f

    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$msetPcieIrqAffinity(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 151
    :cond_15f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 152
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->removeMessages(I)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1b7

    .line 157
    :cond_17a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetisSupportAffinityBootster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_199

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)I

    move-result p1

    if-eqz p1, :cond_199

    const-string p1, "setPcieIrqAffinity -> DefaultMode, Reason: hotspot with no client"

    .line 158
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$msetPcieIrqAffinity(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmCurrenAffinityMode(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;I)V

    .line 162
    :cond_199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_1b7

    .line 163
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmNeedBooster(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApTrafficPollerWorkHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->removeMessages(I)V

    :cond_1b7
    :goto_1b7
    return-void
.end method
