.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    move-result p1

    const-string v0, "SemWifiAwareStateManager"

    if-eqz p1, :cond_f

    const-string p1, "OnReceive - ACTION_WIFI_AWARE_RESOURCE_CHANGED"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/wifi/aware/WifiAwareManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 104
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    move-result p1

    const-string v1, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 105
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 107
    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    move-result p2

    sub-int p2, p1, p2

    .line 108
    iget-object v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxNdp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentNdp: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    if-gtz p2, :cond_57

    const/4 p1, 0x1

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    :goto_58
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Z)V

    :cond_5b
    return-void
.end method
