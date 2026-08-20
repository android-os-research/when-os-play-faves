.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;
.super Landroid/os/Handler;
.source "SemWifiApContinuityClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfClietSessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;Landroid/os/Looper;)V
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 203
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_f

    const-string p0, "MHSMcf:ClientSession"

    const-string p1, "not handled"

    .line 258
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 205
    :cond_f
    new-instance p1, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmHidden(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    move v0, v1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_7d

    .line 218
    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5e

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_7d

    .line 220
    :cond_5e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_71

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_7d

    .line 226
    :cond_71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7d

    .line 227
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setIsEnhancedOpen(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 230
    :cond_7d
    :goto_7d
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 233
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;)V

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_a0
    return-void
.end method
