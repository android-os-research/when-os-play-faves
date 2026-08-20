.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "SemWifiApAdvancedAutohotspotBleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .registers 4

    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdvancedAutohotspotWakeupCallback Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    .line 305
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mAdvancedAutohotspotWakeupCallback Started."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->-$$Nest$fputisAutoHotspotWakeupBleRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;Z)V

    .line 308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "client_advanced_autohotspot_run"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
