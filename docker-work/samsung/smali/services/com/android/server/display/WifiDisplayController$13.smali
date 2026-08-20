.class public Lcom/android/server/display/WifiDisplayController$13;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 1047
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 11

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smcontains(Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting connection to Wifi display because the current P2P group does not contain the device we expected to find: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", group info was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smdescribeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1055
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;I)V

    return-void

    .line 1064
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smcontains(Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1065
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mdisconnect(Lcom/android/server/display/WifiDisplayController;)V

    return-void

    .line 1069
    :cond_5f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayCertMode(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f5

    .line 1070
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmThisDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1071
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1072
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1076
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmDesiredDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1077
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mupdateConnection(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_f5

    .line 1079
    :cond_99
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-nez v3, :cond_f5

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-nez v3, :cond_f5

    .line 1083
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_bc

    .line 1084
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_c0

    :cond_bc
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    :goto_c0
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmDesiredDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertMode incoming from sink"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smcreateWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$madvertiseDisplay(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1091
    :cond_f5
    :goto_f5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-ne v0, v3, :cond_157

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to Wifi display: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectionTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectedDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmConnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmP2pFrequency(Lcom/android/server/display/WifiDisplayController;I)V

    .line 1101
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mupdateConnection(Lcom/android/server/display/WifiDisplayController;)V

    :cond_157
    return-void
.end method
