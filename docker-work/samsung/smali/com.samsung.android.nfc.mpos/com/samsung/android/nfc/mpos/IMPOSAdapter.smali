.class public interface abstract Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
.super Ljava/lang/Object;
.source "IMPOSAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;,
        Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.nfc.mpos.IMPOSAdapter"


# virtual methods
.method public abstract changeDedicatedReaderMode(Landroid/os/IBinder;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectHost(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDedicatedReaderMode(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOnCallback(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTestMode(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
