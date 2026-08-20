.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$EcqS-TNA42c3GhFj4bozwmhABZU(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 2

    .line 638
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 635
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_46

    .line 636
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 638
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$5;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    :cond_46
    return-void
.end method
