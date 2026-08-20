.class public Lcom/android/server/display/WifiDisplayController$9;
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

    .line 825
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$9;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final next()V
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDisconnectingDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$9;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_1a

    .line 840
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$munadvertiseDisplay(Lcom/android/server/display/WifiDisplayController;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmDisconnectingDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 842
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$9;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mupdateConnection(Lcom/android/server/display/WifiDisplayController;)V

    :cond_1a
    return-void
.end method

.method public onFailure(I)V
    .registers 4

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to disconnect from Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$9;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController$9;->next()V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$9;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController$9;->next()V

    return-void
.end method
