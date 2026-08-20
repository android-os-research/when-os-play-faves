.class public Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothCompanionDeviceConnectionListener.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CompanionDevice_PresenceMonitor_BT"


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/MacAddress;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 59
    iput-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    .line 65
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 66
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 65
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 67
    iget-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    :cond_15
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 2

    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 164
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Address changes are not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 113
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 126
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    if-eqz p2, :cond_26

    .line 128
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    goto :goto_e

    .line 130
    :cond_26
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceDisconnected(I)V

    goto :goto_e

    :cond_2c
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .line 100
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    .line 101
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_11

    return-void

    :cond_11
    const/4 p2, 0x0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
