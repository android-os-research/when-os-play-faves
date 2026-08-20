.class public interface abstract Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$_Parcel;,
        Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;,
        Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"


# virtual methods
.method public abstract onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusChanged(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUWBParamChanged(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
