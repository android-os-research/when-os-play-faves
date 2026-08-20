.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApAdvancedAutohotspotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 446
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "SemWifiApAdvancedAutohotspotService"

    const/16 v0, 0xf

    if-ne p1, v0, :cond_25

    .line 448
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisBleON(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    const-string p1, " BLE enabled"

    .line 449
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    goto :goto_3f

    :cond_25
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3f

    const-string p1, " BLE disabled"

    .line 452
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisBleON(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 454
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    :cond_3f
    :goto_3f
    return-void
.end method
