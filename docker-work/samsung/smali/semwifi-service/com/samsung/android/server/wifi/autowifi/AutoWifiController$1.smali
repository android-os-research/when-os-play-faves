.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;
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

    .line 228
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "networkInfo"

    .line 231
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 233
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmIsP2pNetworkConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    if-eqz p1, :cond_1e

    .line 235
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_1e

    .line 236
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmIsP2pNetworkConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    .line 239
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "p2p "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmIsP2pNetworkConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "connected"

    goto :goto_35

    :cond_33
    const-string p0, "disconnected"

    :goto_35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoWifiController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
