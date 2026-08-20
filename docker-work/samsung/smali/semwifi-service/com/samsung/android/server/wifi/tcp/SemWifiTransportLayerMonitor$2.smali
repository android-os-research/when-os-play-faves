.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3f

    .line 580
    :cond_10
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "SemWifiTransportLayerMonitor"

    const-string p2, "ACTION_BOOT_COMPLETED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmWifiPackageInfoList(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 583
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmPackageUpdateHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 583
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$PackageUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_3f
    return-void
.end method
