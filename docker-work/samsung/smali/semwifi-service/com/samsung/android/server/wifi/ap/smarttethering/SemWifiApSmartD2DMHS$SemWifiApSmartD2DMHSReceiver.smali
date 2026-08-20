.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartD2DMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartD2DMHSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_65

    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    .line 101
    :goto_23
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAirplaneMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":AIRPLANE_MODE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_10e

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->sendEmptyMessage(I)V

    goto/16 :goto_10e

    :cond_65
    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 108
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 109
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetisAdvRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Z

    move-result p2

    if-ne p2, v2, :cond_82

    .line 110
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;Z)V

    .line 111
    :cond_82
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Z

    move-result p2

    if-eqz p2, :cond_10e

    const/16 p2, 0xf

    if-ne p1, p2, :cond_10e

    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fputisStartAdvPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;Z)V

    .line 113
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BLE is ON, starting advertizement"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t BLE is ON, starting advertizement"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->sendEmptyMessage(I)V

    goto :goto_10e

    :cond_c0
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10e

    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 119
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 120
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_10e

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS$SemWifiApSmartD2DMHSReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->sendEmptyMessage(I)V

    :cond_10e
    :goto_10e
    return-void
.end method
