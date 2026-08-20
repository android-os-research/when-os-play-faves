.class public interface abstract Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;
.super Ljava/lang/Object;
.source "IBluetoothSecureModePolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;,
        Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.bluetooth.IBluetoothSecureModePolicy"


# virtual methods
.method public abstract greylist addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
