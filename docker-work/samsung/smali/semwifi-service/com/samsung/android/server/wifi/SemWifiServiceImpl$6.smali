.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.telephony.extra.NETWORK_COUNTRY"

    .line 501
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Country code changed to :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setNetworkCountryCode(Ljava/lang/String;)V

    .line 505
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->setNetworkCountryCode(Ljava/lang/String;)V

    return-void
.end method
