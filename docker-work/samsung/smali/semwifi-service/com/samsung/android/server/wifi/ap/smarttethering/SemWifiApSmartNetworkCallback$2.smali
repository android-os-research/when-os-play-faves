.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemWifiApSmartNetworkCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiNetworkCallback`s onAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$fputisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;Z)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$mupdateSwitchState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 87
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiNetworkCallback`s onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$fputisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;Z)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$mupdateSwitchState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    return-void
.end method
