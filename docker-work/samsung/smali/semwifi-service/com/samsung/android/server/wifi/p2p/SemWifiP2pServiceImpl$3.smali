.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "wifiP2pDevice"

    .line 251
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$mhandleThisDeviceStatus(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V

    return-void
.end method
