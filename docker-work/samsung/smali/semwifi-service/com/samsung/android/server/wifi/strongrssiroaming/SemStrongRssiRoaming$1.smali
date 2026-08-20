.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;
.super Ljava/lang/Object;
.source "SemStrongRssiRoaming.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateP2PState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkInfoAvailable(Landroid/net/NetworkInfo;)V
    .registers 5

    .line 188
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiP2pManager.NetworkInfoListener : isP2pConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logV(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    xor-int/lit8 p1, p1, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    return-void
.end method
