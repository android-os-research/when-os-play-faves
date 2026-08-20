.class public interface abstract Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$_Parcel;,
        Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;,
        Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.handover.IMcfHandoverCallback"


# virtual methods
.method public abstract onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHandoverRequest(Landroid/os/PersistableBundle;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHandoverResult(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
