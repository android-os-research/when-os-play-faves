.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;
.super Ljava/lang/Object;
.source "SemWifiNative.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestoyedListenerInternal"
.end annotation


# instance fields
.field private final mInterfaceId:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V
    .registers 3

    .line 1067
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .registers 5

    .line 1073
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1074
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmIfaceMgr(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mremoveIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object v1

    if-nez v1, :cond_35

    .line 1076
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "SemWifiNative"

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received iface destroyed notification on an invalid iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_33
    monitor-exit v0

    return-void

    .line 1082
    :cond_35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$monInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V

    const-string p0, "SemWifiNative"

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully torn down "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_52

    throw p0
.end method
