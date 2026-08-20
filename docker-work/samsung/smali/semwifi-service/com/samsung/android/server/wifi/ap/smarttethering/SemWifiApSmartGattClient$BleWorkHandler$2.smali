.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;


# direct methods
.method public static synthetic $r8$lambda$k1QyJu3mMmxmwutzoSzeebIhYCM(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;->lambda$run$0(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .registers 2

    if-eqz p1, :cond_14

    .line 945
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 941
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can\'t search previous ble mac, so retry to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 943
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getWifiApBleScanResults()Ljava/util/List;

    move-result-object v0

    .line 944
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;)V

    .line 945
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 946
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 948
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected ble ap is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    :cond_5d
    return-void
.end method
