.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 496
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_23
    return-void
.end method
