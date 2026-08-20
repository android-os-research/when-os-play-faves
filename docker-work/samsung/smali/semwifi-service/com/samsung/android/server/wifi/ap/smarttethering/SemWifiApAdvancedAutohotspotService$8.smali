.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;
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

    .line 458
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 461
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isNearByAutohotspotEnabled()Z

    move-result p1

    const-string p2, "SemWifiApAdvancedAutohotspotService"

    if-eqz p1, :cond_20

    const-string p1, "NearbyShare enabled"

    .line 462
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisNearbyScanEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 464
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    goto :goto_35

    :cond_20
    const-string p1, "NearbyShare disabled"

    .line 466
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisNearbyScanEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 468
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    :goto_35
    return-void
.end method
