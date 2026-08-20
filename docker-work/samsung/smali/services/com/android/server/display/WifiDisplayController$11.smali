.class public Lcom/android/server/display/WifiDisplayController$11;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3

    .line 887
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$11;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final next()V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmCancelingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$11;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_48

    .line 903
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmCancelingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 904
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mupdateConnection(Lcom/android/server/display/WifiDisplayController;)V

    .line 906
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectionTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 909
    :try_start_30
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmInitiateReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    const-string p0, "WifiDisplayController"

    const-string/jumbo v0, "unregisterReceiver:: mInitiateReceiver not registered"

    .line 911
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return-void
.end method

.method public onFailure(I)V
    .registers 4

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to cancel connection to Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$11;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDisplayController"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController$11;->next()V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceled connection to Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$11;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController$11;->next()V

    return-void
.end method
