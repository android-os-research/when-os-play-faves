.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 248
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/wifi/aware/WifiAwareManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 250
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    move-result p1

    const-string v0, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 251
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmCountDataPath(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "aware "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCountDataPath(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p0

    if-lez p0, :cond_37

    const-string p0, "connected"

    goto :goto_39

    :cond_37
    const-string p0, "disconnected"

    :goto_39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifiController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method
