.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;
.super Lcom/android/internal/util/State;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .registers 2

    .line 931
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 934
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 935
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$minitializeP2pSettings(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    .line 936
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fputmP2pState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fputmP2pState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;I)V

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    const-string v1, "p2p"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const-string v1, "mOpenWifiScanTimer : cancel & start"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1048
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_3f
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 941
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{ what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Illegal argument(s)"

    const-string v2, "0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_22c

    return v4

    .line 1006
    :sswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22b

    :try_start_3a
    const-string v0, "="

    .line 1011
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_49} :catch_22b

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deletePersistentGroup, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiP2pManager(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmChannel(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_22b

    .line 958
    :sswitch_7c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_87

    .line 959
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_22b

    .line 962
    :cond_87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmPeers(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object p0

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_22b

    .line 950
    :sswitch_98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_a3

    .line 951
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_22b

    .line 954
    :cond_a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 955
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmPeers(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_22b

    .line 1020
    :sswitch_b2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    .line 1021
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1023
    :try_start_b8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " discoverPeers("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pFind(II)Z

    move-result p1

    if-eqz p1, :cond_f2

    if-eqz v0, :cond_eb

    .line 1025
    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;->onSuccess()V

    .line 1026
    :cond_eb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$msendP2pDiscoveryChangedBroadcast(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Z)V

    goto/16 :goto_22b

    :cond_f2
    if-eqz v0, :cond_22b

    const/4 p0, 0x2

    .line 1028
    invoke-interface {v0, p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;->onFailure(I)V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_f8} :catch_fa

    goto/16 :goto_22b

    :catch_fa
    const-string p0, "SemWifiP2pService"

    const-string p1, "discoverPeers: RemoteException"

    .line 1031
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22b

    .line 991
    :sswitch_103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "channel"

    .line 992
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "period"

    .line 993
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "interval"

    .line 994
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "count"

    .line 995
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v0, :cond_15d

    .line 997
    iget-object v4, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startP2pListenOffloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 999
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->startP2pListenOffloading(IIII)Z

    goto/16 :goto_22b

    .line 1001
    :cond_15d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopP2pListenOffloading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1002
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->stopP2pListenOffloading()Z

    goto/16 :goto_22b

    .line 985
    :sswitch_182
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_188

    const-string v2, "1"

    .line 986
    :cond_188
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p1

    const-string v0, "screen_sharing"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22b

    .line 987
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const-string p1, "Failed to set screen sharing"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_22b

    .line 967
    :sswitch_19f
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "mice_capability"

    if-gtz v0, :cond_1b5

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x80

    if-lt v0, v4, :cond_1b5

    .line 968
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_22b

    .line 970
    :cond_1b5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1c6

    .line 972
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object v2

    const-string v4, "mice_hostname"

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 974
    :cond_1c6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 975
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "MICE_IP"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    iget-object v2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object v2

    const-string v4, "mice_ip"

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 978
    :cond_1e1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 979
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 978
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22b

    .line 980
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    const-string p1, "Failed to set MICE"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_22b

    .line 944
    :sswitch_1fb
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmPeers(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 945
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->teardownInterface(Ljava/lang/String;)V

    .line 946
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 947
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->-$$Nest$fgetmP2pDisabledState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :catch_22b
    :cond_22b
    :goto_22b
    return v3

    :sswitch_data_22c
    .sparse-switch
        0x23002 -> :sswitch_1fb
        0x2300a -> :sswitch_19f
        0x2300b -> :sswitch_182
        0x2300c -> :sswitch_103
        0x2300e -> :sswitch_b2
        0x24015 -> :sswitch_98
        0x24016 -> :sswitch_7c
        0x24028 -> :sswitch_30
    .end sparse-switch
.end method
