.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "SemWifiApSmartMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestrictBackgroundChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartMHS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartMHS:\t onRestrictBackgroundChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_4d

    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_4d
    return-void
.end method
