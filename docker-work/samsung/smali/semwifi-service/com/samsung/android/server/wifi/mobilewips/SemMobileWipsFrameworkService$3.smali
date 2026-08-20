.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;
.super Lcom/samsung/android/wifi/ISemMobileWipsPacketSender$Stub;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemMobileWipsPacketSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pingTcp([B[BIII)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->pingTcp([B[BIII)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public sendArp(I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v2

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 204
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendArp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return-object p0
.end method

.method public sendArpToSniffing(I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 217
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v2

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 220
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendArpToSniffing(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return-object p0
.end method

.method public sendDhcp(I[BILjava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 249
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 251
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 252
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDhcp(Landroid/net/LinkProperties;I[BILjava/lang/String;)I

    move-result p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public sendDns([J[B[B[BLjava/lang/String;Z)[B
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 262
    iget-object v2, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 265
    iget-object v3, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 268
    :try_start_1c
    iget-object v0, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v4

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object v10, p1

    move/from16 v11, p6

    .line 269
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDns(Landroid/net/LinkProperties;[B[BLjava/lang/String;[B[JZ)[B

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    return-object v1
.end method

.method public sendDnsQueries([J[B[BLjava/lang/String;Ljava/util/List;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 282
    iget-object v1, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 284
    iget-object v2, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 285
    iget-object v2, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 287
    iget-object v0, v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    move-result-object v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 288
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->sendDnsQueries(Landroid/net/LinkProperties;[J[B[BLjava/lang/String;Ljava/util/List;I)Z

    move-result v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public sendIcmp(I[B[BLjava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 233
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v2

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 236
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendIcmp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return-object p0
.end method

.method public sendTcp(I[B[BLjava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 302
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 304
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v2

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 305
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendTcp(Landroid/net/LinkProperties;I[B[BLjava/lang/String;)Z

    move-result p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method
