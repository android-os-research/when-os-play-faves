.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;
.super Ljava/lang/Object;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
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

    .line 508
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    .line 511
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onNetworkReset()V
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$13;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->clearAll()V

    return-void
.end method
