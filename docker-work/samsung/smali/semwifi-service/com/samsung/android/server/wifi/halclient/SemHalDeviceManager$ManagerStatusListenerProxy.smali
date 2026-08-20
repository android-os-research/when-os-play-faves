.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;
.super Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerStatusListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy<",
        "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .registers 5

    .line 285
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    const-string v0, "ManagerStatusListenerProxy"

    .line 286
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected action(Z)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;->onStatusChanged(Z)V

    return-void
.end method
