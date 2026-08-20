.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApContinuityClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "networkInfo"

    .line 57
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 58
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_16

    move v1, p2

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    if-eqz p1, :cond_22

    .line 60
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v2, :cond_22

    goto :goto_23

    :cond_22
    move p2, v0

    :goto_23
    const/4 p1, 0x3

    if-eqz v1, :cond_5f

    .line 63
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_6d

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    const/4 p2, 0x2

    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$mupdateSmartMHSListStatus(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;II)V

    goto :goto_6d

    :cond_5f
    if-eqz p2, :cond_6d

    const-string p2, "MHSMcf:ClientSession"

    const-string v1, "isDisconnected: true"

    .line 69
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$mupdateSmartMHSListStatus(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;II)V

    :cond_6d
    :goto_6d
    return-void
.end method
