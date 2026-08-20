.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SemWifiApClientInfo"

    if-eqz v0, :cond_58

    const-string p1, "wifi_state"

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v3, "android.net.wifi.extra.WIFI_AP_MODE"

    .line 94
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v3, 0xb

    if-eq p1, v3, :cond_24

    const/16 v3, 0xe

    if-ne p1, v3, :cond_47

    .line 96
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMHSClients.clear() size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_47
    const/16 p0, 0xd

    if-ne p1, p0, :cond_53

    const/4 p0, 0x2

    if-ne p2, p0, :cond_53

    .line 100
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfputmIsLOHSmode(Z)V

    goto/16 :goto_12c

    .line 102
    :cond_53
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfputmIsLOHSmode(Z)V

    goto/16 :goto_12c

    :cond_58
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12c

    const-string p1, "SemWifiApCLientInfo got WIFI_AP_STA_DHCPACK_EVENT"

    .line 106
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "MAC"

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 110
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const/4 v5, -0x1

    const-string v6, "sta_dhcpack"

    invoke-static {v4, p1, v6, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "IP"

    .line 113
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    const-string v4, "DEVICE"

    .line 114
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 115
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    const-string p2, "sta_assoc"

    .line 116
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12c

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 118
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dnsmasq dhcpack mac:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ip:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " name:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mConnectedTime:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mgetClientCntDhcpack(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    move-result p1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mhs client cnt:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " d:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result p1

    if-eqz p1, :cond_12c

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Ljava/lang/String;

    :cond_12c
    :goto_12c
    return-void
.end method
