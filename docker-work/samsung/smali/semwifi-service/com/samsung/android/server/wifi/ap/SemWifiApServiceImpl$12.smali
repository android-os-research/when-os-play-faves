.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;
.super Landroid/telephony/PhoneStateListener;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 2375
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 6

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged: state -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", networkType - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApServiceImpl"

    .line 2378
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportChameleon()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 2381
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_40

    const/16 v1, 0xd

    if-ne p1, v1, :cond_c6

    :cond_40
    const/4 p1, 0x1

    if-eq p1, p2, :cond_66

    const/4 p1, 0x2

    if-eq p1, p2, :cond_66

    const/16 p1, 0x10

    if-eq p1, p2, :cond_66

    if-nez p2, :cond_4d

    goto :goto_66

    .line 2399
    :cond_4d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2400
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    move-result v1

    const-string v2, "chameleon_maxuser"

    .line 2399
    invoke-virtual {p1, p2, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    goto :goto_7e

    .line 2389
    :cond_66
    :goto_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2390
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    move-result v1

    const-string v2, "chameleon_gsmmaxuser"

    .line 2389
    invoke-virtual {p1, p2, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 2403
    :goto_7e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    move-result-object p2

    .line 2404
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    move-result p2

    .line 2405
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxClientNum = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p2

    if-eqz p2, :cond_c6

    .line 2408
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSoftApManager(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET_MAXCLIENT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_c6
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5

    .line 2416
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2417
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 2418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dataNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$12;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mcheckAndSarBackoffSoftApModeFor5GmmWave(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/telephony/ServiceState;)V

    return-void
.end method
