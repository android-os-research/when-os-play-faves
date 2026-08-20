.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;
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

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetDeviceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    return-void
.end method
