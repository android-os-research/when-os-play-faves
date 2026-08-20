.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "networkInfo"

    .line 191
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const-string v0, "p2pGroupInfo"

    .line 192
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 193
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-ne p1, v1, :cond_24

    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    goto :goto_29

    .line 197
    :cond_24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 199
    :goto_29
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetCSC_SUPPORT_5G_ANT_SHARE()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 200
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 202
    :cond_34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 203
    :cond_4c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    :cond_51
    return-void
.end method
