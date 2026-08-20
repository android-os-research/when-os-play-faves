.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartD2DClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartD2DClientReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_5d

    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z

    move-result p1

    if-eqz p1, :cond_180

    .line 88
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "d2dfamilyid intent received"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\td2dfamilyid intent received"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_180

    .line 91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p1

    const-wide/16 v3, 0x2bc

    invoke-virtual {p1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;

    move-result-object p0

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_180

    :cond_5d
    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z

    move-result p1

    if-eqz p1, :cond_180

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    goto/16 :goto_180

    :cond_74
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_d3

    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_90

    goto :goto_91

    :cond_90
    move v1, v3

    .line 103
    :goto_91
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAirplaneMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tAIRPLANE_MODE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_180

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    goto/16 :goto_180

    :cond_d3
    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 110
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z

    move-result p2

    if-ne p2, v1, :cond_f0

    .line 112
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V

    .line 113
    :cond_f0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Z

    move-result p2

    if-eqz p2, :cond_101

    const/16 p2, 0xf

    if-ne p1, p2, :cond_101

    .line 114
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;Z)V

    :cond_101
    const/16 p2, 0x10

    if-ne p1, p2, :cond_180

    .line 120
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BLE is OFF, stopping advertizement"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t BLE is OFF, stopping advertizement"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->stopWifiApSmartD2DclientAdvertize()V

    goto :goto_180

    :cond_132
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_180

    const-string p1, "phoneinECMState"

    .line 126
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 127
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergencyMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_180

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient$SemWifiApSmartD2DClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    :cond_180
    :goto_180
    return-void
.end method
