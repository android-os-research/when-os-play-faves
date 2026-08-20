.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApAdvancedAutohotspotMHSLcdOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "STA_COUNT"

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_26

    .line 157
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 158
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MHS,Enabled smartly, so disabling "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_26
    return-void
.end method
