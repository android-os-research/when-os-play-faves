.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;
.super Ljava/lang/Object;
.source "SemWifiP2pNative.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

.field private mValid:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P InterfaceDestroyedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    if-nez v0, :cond_20

    const-string p0, "Ignoring stale interface destroyed listener"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    return-void
.end method

.method public teardownAndInvalidate(Ljava/lang/String;)V
    .registers 3

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->-$$Nest$fgetmSupplicantP2pIfaceHal(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->teardownIface(Ljava/lang/String;)Z

    .line 57
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->-$$Nest$fputmIWifiP2pIface(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->mValid:Z

    return-void
.end method
